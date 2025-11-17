package com.geely.toolchain.hmi.view.pickerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.pickerview.timer.InertiaTimerTask;
import com.geely.toolchain.hmi.view.pickerview.timer.MessageHandler;
import com.geely.toolchain.hmi.view.pickerview.timer.SmoothScrollTimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class HmiWheelView extends View {
    private static final float SCALE_CONTENT = 0.8f;
    private static final String[] TIME_NUM = {"00", "01", "02", "03", "04", "05", "06", "07", "08", "09"};
    private static final int VELOCITY_FLING = 5;
    private float CENTER_CONTENT_OFFSET;
    private WheelAdapter adapter;
    private Context context;
    private float firstLineY;
    private GestureDetector gestureDetector;
    private Handler handler;
    private int initPosition;
    private boolean isLoop;
    private float itemHeight;
    private int itemsVisible;
    private float lineSpacingMultiplier;
    private Rect mDrawnRect;
    private ScheduledExecutorService mExecutor;
    private int mFirstItemDrawX;
    private ScheduledFuture<?> mFuture;
    private int mOffset;
    private int maxTextHeight;
    private int maxTextWidth;
    private int measuredHeight;
    private int measuredWidth;
    private OnItemSelectedListener onItemSelectedListener;
    private Paint paintCenterText;
    private Paint paintOuterText;
    private int preCurrentIndex;
    private float previousY;
    private int radius;
    private float secondLineY;
    private int selectedItem;
    private long startTime;
    private int textColorCenter;
    private int textColorOut;
    private int textSize;
    private float totalScrollY;

    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public interface OnItemSelectedListener {
        void onItemSelected(int index);
    }

    public HmiWheelView(Context context) {
        this(context, null);
    }

    public HmiWheelView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiWheelView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mExecutor = Executors.newSingleThreadScheduledExecutor();
        this.lineSpacingMultiplier = 1.4f;
        this.itemsVisible = 7;
        this.mOffset = 0;
        this.previousY = 0.0f;
        this.startTime = 0L;
        float f = getResources().getDisplayMetrics().density;
        if (f < 1.0f) {
            this.CENTER_CONTENT_OFFSET = 2.4f;
        } else if (1.0f <= f && f < 2.0f) {
            this.CENTER_CONTENT_OFFSET = 4.0f;
        } else if (2.0f <= f && f < 3.0f) {
            this.CENTER_CONTENT_OFFSET = 6.0f;
        } else if (f >= 3.0f) {
            this.CENTER_CONTENT_OFFSET = f * 2.5f;
        }
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiWheelView, 0, 0);
            try {
                this.textColorOut = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiWheelView_hmi_wheelView_textColorOut, getResources().getColor(R.color.oneoshmi_default_text_color));
                this.textColorCenter = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiWheelView_hmi_wheelView_textColorCenter, getResources().getColor(R.color.oneoshmi_default_text_color));
                this.textSize = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.HmiWheelView_hmi_wheelView_textSize, getResources().getDimensionPixelSize(R.dimen.oneoshmi_wheel_item_text_size));
            } catch (Exception e) {
                e.printStackTrace();
            }
            typedArrayObtainStyledAttributes.recycle();
            judgeLineSpace();
            initLoopView(context);
        }
    }

    private void judgeLineSpace() {
        float f = this.lineSpacingMultiplier;
        if (f < 1.0f) {
            this.lineSpacingMultiplier = 1.0f;
        } else if (f > 4.0f) {
            this.lineSpacingMultiplier = 4.0f;
        }
    }

    private void initLoopView(Context context) {
        this.context = context;
        this.handler = new MessageHandler(this);
        GestureDetector gestureDetector = new GestureDetector(context, new LoopViewGestureListener(this));
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.isLoop = true;
        this.mDrawnRect = new Rect();
        this.totalScrollY = 0.0f;
        this.initPosition = -1;
        initPaints();
    }

    private void initPaints() {
        Paint paint = new Paint();
        this.paintOuterText = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        this.paintOuterText.setColor(this.textColorOut);
        this.paintOuterText.setAntiAlias(true);
        this.paintOuterText.setTextSize(this.textSize);
        Paint paint2 = new Paint();
        this.paintCenterText = paint2;
        paint2.setTextAlign(Paint.Align.CENTER);
        this.paintCenterText.setColor(this.textColorCenter);
        this.paintCenterText.setAntiAlias(true);
        this.paintCenterText.setTextSize(this.textSize);
        this.paintCenterText.setFakeBoldText(true);
        setLayerType(View.LAYER_TYPE_SOFTWARE, null);
    }

    private int measureSize(int specMode, int specSize, int size) {
        return specMode == 1073741824 ? specSize : Math.min(specSize, size);
    }

    private void reMeasure() {
        if (this.adapter == null) {
            return;
        }
        measureTextWidthHeight();
        float f = this.itemHeight;
        float r1 = (this.itemsVisible - 1) * f;
        int i = (int) ((r1 * 2) / 3.141592653589793d);
        this.measuredHeight = i;
        this.radius = (int) (((int) ((this.itemsVisible - 1) * f)) / 3.141592653589793d);
        this.firstLineY = (i - f) / 2.0f;
        this.secondLineY = (i + f) / 2.0f;
        if (this.initPosition == -1) {
            if (this.isLoop) {
                this.initPosition = (this.adapter.getItemsCount() + 1) / 2;
            } else {
                this.initPosition = 0;
            }
        }
        this.preCurrentIndex = this.initPosition;
    }

    private void measureTextWidthHeight() {
        Rect rect = new Rect();
        for (int i = 0; i < this.adapter.getItemsCount(); i++) {
            String contentText = getContentText(this.adapter.getItem(i));
            Paint paint = this.paintCenterText;
            if (paint == null) {
                return;
            }
            paint.getTextBounds(contentText, 0, contentText.length(), rect);
            int iWidth = rect.width();
            if (iWidth > this.maxTextWidth) {
                this.maxTextWidth = iWidth;
            }
        }
        this.paintCenterText.getTextBounds("星期", 0, 2, rect);
        int iHeight = rect.height() + 2;
        this.maxTextHeight = iHeight;
        this.itemHeight = this.lineSpacingMultiplier * iHeight;
    }

    public void smoothScroll(ACTION action) {
        cancelFuture();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f = this.totalScrollY;
            float f2 = this.itemHeight;
            int i = (int) (((f % f2) + f2) % f2);
            this.mOffset = i;
            if (i > f2 / 2.0f) {
                this.mOffset = (int) (f2 - i);
            } else {
                this.mOffset = -i;
            }
        }
        this.mFuture = this.mExecutor.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.mOffset), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    public final void scrollBy(float velocityY) {
        cancelFuture();
        this.mFuture = this.mExecutor.scheduleWithFixedDelay(new InertiaTimerTask(this, velocityY), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    public void cancelFuture() {
        ScheduledFuture<?> scheduledFuture = this.mFuture;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.mFuture.cancel(true);
        this.mFuture = null;
    }

    public final void setCyclic(boolean cyclic) {
        this.isLoop = cyclic;
    }

    public final void setTextSize(float size) {
        if (size > 0.0f) {
            int i = (int) (this.context.getResources().getDisplayMetrics().density * size);
            this.textSize = i;
            this.paintOuterText.setTextSize(i);
            this.paintCenterText.setTextSize(this.textSize);
        }
    }

    public final void setCurrentItem(int currentItem) {
        this.selectedItem = currentItem;
        this.initPosition = currentItem;
        this.totalScrollY = 0.0f;
        invalidate();
    }

    public final void setOnItemSelectedListener(OnItemSelectedListener OnItemSelectedListener2) {
        this.onItemSelectedListener = OnItemSelectedListener2;
    }

    public final void setAdapter(WheelAdapter adapter) {
        this.adapter = adapter;
        reMeasure();
        invalidate();
    }

    public void setItemsVisibleCount(int visibleCount) {
        if (visibleCount % 2 == 0) {
            visibleCount++;
        }
        this.itemsVisible = visibleCount + 2;
    }

    public final WheelAdapter getAdapter() {
        return this.adapter;
    }

    public int getSelectedItemTextColor() {
        return this.textColorCenter;
    }

    public final int getCurrentItem() {
        int i;
        WheelAdapter wheelAdapter = this.adapter;
        if (wheelAdapter == null) {
            return 0;
        }
        if (this.isLoop && ((i = this.selectedItem) < 0 || i >= wheelAdapter.getItemsCount())) {
            return Math.max(0, Math.min(Math.abs(Math.abs(this.selectedItem) - this.adapter.getItemsCount()), this.adapter.getItemsCount() - 1));
        }
        return Math.max(0, Math.min(this.selectedItem, this.adapter.getItemsCount() - 1));
    }

    public final void onItemSelected() {
        if (this.onItemSelectedListener != null) {
            postDelayed(new Runnable() {
                @Override // java.lang.Runnable
                public void run() {
                    HmiWheelView.this.onItemSelectedListener.onItemSelected(HmiWheelView.this.getCurrentItem());
                }
            }, 200L);
        }
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        throw new UnsupportedOperationException("Method not decompiled: com.geely.toolchain.hmi.view.pickerview.HmiWheelView.onDraw(android.graphics.Canvas):void");
    }

    private void setOutPaintStyle(float angle) {
        int r3 = (int) (((90.0f - Math.abs(angle)) / 90.0f) * 255.0f);
        this.paintOuterText.setAlpha(r3);
        this.paintOuterText.setTextSize(((this.textSize * r3) / 255) + 5);
    }

    private void reMeasureTextSize(String contentText) {
        Rect rect = new Rect();
        this.paintCenterText.getTextBounds(contentText, 0, contentText.length(), rect);
        int i = this.textSize;
        for (int iWidth = rect.width(); iWidth > this.measuredWidth; iWidth = rect.width()) {
            i--;
            this.paintCenterText.setTextSize(i);
            this.paintCenterText.getTextBounds(contentText, 0, contentText.length(), rect);
        }
        this.paintOuterText.setTextSize(i);
    }

    private int getLoopMappingIndex(int index) {
        if (index < 0) {
            return getLoopMappingIndex(index + this.adapter.getItemsCount());
        }
        return index > this.adapter.getItemsCount() + (-1) ? getLoopMappingIndex(index - this.adapter.getItemsCount()) : index;
    }

    private String getContentText(Object item) {
        if (item == null) {
            return "";
        }
        if (item instanceof Integer) {
            return getFixNum(((Integer) item).intValue());
        }
        return item.toString();
    }

    private String getFixNum(int timeNum) {
        return (timeNum < 0 || timeNum >= 10) ? String.valueOf(timeNum) : TIME_NUM[timeNum];
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = MeasureSpec.getSize(widthMeasureSpec);
        int mode = MeasureSpec.getMode(widthMeasureSpec);
        int size2 = MeasureSpec.getSize(heightMeasureSpec);
        int mode2 = MeasureSpec.getMode(heightMeasureSpec);
        reMeasure();
        int i = this.maxTextWidth;
        int i2 = this.measuredHeight;
        int paddingLeft = i + getPaddingLeft() + getPaddingRight();
        int paddingTop = i2 + getPaddingTop() + getPaddingBottom();
        int iMeasureSize = measureSize(mode, size, paddingLeft);
        this.measuredWidth = iMeasureSize;
        setMeasuredDimension(iMeasureSize, measureSize(mode2, size2, paddingTop));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        boolean zOnTouchEvent = this.gestureDetector.onTouchEvent(event);
        float f = (-this.initPosition) * this.itemHeight;
        float itemsCount = ((this.adapter.getItemsCount() - 1) - this.initPosition) * this.itemHeight;
        int action = event.getAction();
        boolean z = false;
        if (action == 0) {
            this.startTime = System.currentTimeMillis();
            cancelFuture();
            this.previousY = event.getRawY();
        } else if (action == 2) {
            float rawY = this.previousY - event.getRawY();
            this.previousY = event.getRawY();
            float f2 = this.totalScrollY + rawY;
            this.totalScrollY = f2;
            if (!this.isLoop) {
                float f3 = this.itemHeight;
                if ((f2 - (f3 * 0.25f) < f && rawY < 0.0f) || ((f3 * 0.25f) + f2 > itemsCount && rawY > 0.0f)) {
                    this.totalScrollY = f2 - rawY;
                    z = true;
                }
            }
        } else if (!zOnTouchEvent) {
            float y = event.getY();
            int i = this.radius;
            double dAcos = Math.acos((i - y) / i) * this.radius;
            float f4 = this.itemHeight;
            this.mOffset = (int) (((((int) ((dAcos + (f4 / 2.0f)) / f4)) - (this.itemsVisible / 2)) * f4) - (((this.totalScrollY % f4) + f4) % f4));
            if (System.currentTimeMillis() - this.startTime > 120) {
                smoothScroll(ACTION.DAGGLE);
            } else {
                smoothScroll(ACTION.CLICK);
            }
        }
        if (!z && event.getAction() != 0) {
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mDrawnRect.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.mFirstItemDrawX = this.mDrawnRect.centerX();
    }

    public int getItemsCount() {
        WheelAdapter wheelAdapter = this.adapter;
        if (wheelAdapter != null) {
            return wheelAdapter.getItemsCount();
        }
        return 0;
    }

    public void setTextColorOut(int textColorOut) {
        this.textColorOut = textColorOut;
        this.paintOuterText.setColor(textColorOut);
    }

    public void setTextColorCenter(int textColorCenter) {
        this.textColorCenter = textColorCenter;
        this.paintCenterText.setColor(textColorCenter);
    }

    public void setLineSpacingMultiplier(float lineSpacingMultiplier) {
        if (lineSpacingMultiplier != 0.0f) {
            this.lineSpacingMultiplier = lineSpacingMultiplier;
            judgeLineSpace();
        }
    }

    public boolean isLoop() {
        return this.isLoop;
    }

    public float getTotalScrollY() {
        return this.totalScrollY;
    }

    public void setTotalScrollY(float totalScrollY) {
        this.totalScrollY = totalScrollY;
    }

    public float getItemHeight() {
        return this.itemHeight;
    }

    public int getInitPosition() {
        return this.initPosition;
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.handler;
    }
}