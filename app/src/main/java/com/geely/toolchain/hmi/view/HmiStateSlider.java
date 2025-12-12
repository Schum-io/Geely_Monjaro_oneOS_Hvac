package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import com.geely.toolchain.hmi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiStateSlider extends FrameLayout {
    public static final int DEFAULT_MAX = 100;
    public static final String TAG = "HmiStateSlider";
    private Drawable iconOffDrawable;
    private Drawable iconOnDrawable;
    private ImageView mIcon;
    private SeekBar mSeekBar;
    private SeekBar.OnSeekBarChangeListener onSeekBarChangeListener;

    public HmiStateSlider(Context context) {
        super(context);
        init(null, 0, 0);
    }

    public HmiStateSlider(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs, 0, 0);
    }

    public HmiStateSlider(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(attrs, defStyleAttr, 0);
    }

    public HmiStateSlider(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        init(attrs, defStyleAttr, defStyleRes);
    }

    private void init(AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        LayoutInflater.from(getContext()).inflate(R.layout.hmi_layout_state_slider, this);
        this.mSeekBar = (SeekBar) findViewById(R.id.seekBar);
        this.mIcon = (ImageView) findViewById(R.id.iv_icon);
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.HmiStateSlider);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.HmiStateSlider_hmi_slider_progress, 0);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.HmiStateSlider_hmi_slider_max, 100);
        this.iconOnDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.HmiStateSlider_hmi_slider_icon_on);
        this.iconOffDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.HmiStateSlider_hmi_slider_icon_off);
        typedArrayObtainStyledAttributes.recycle();
        initSeekBar(integer, integer2);
        setIconState(integer);
    }

    private void initSeekBar(int progress, int max) {
        Log.i(TAG, "initSeekBar: ");
        this.mSeekBar.setEnabled(true);
        this.mSeekBar.setProgress(progress);
        this.mSeekBar.setMax(max);
        this.mSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.geely.toolchain.hmi.view.HmiStateSlider.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress2, boolean fromUser) {
                HmiStateSlider.this.setIconState(progress2);
                if (HmiStateSlider.this.onSeekBarChangeListener != null) {
                    HmiStateSlider.this.onSeekBarChangeListener.onProgressChanged(seekBar, progress2, fromUser);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (HmiStateSlider.this.onSeekBarChangeListener != null) {
                    HmiStateSlider.this.onSeekBarChangeListener.onStartTrackingTouch(seekBar);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (HmiStateSlider.this.onSeekBarChangeListener != null) {
                    HmiStateSlider.this.onSeekBarChangeListener.onStopTrackingTouch(seekBar);
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconState(int progress) {
        if (progress > 0 && this.iconOnDrawable != null) {
            this.mIcon.setVisibility(0);
            this.mIcon.setImageDrawable(this.iconOnDrawable);
        } else if (progress <= 0 && this.iconOffDrawable != null) {
            this.mIcon.setVisibility(0);
            this.mIcon.setImageDrawable(this.iconOffDrawable);
        } else {
            this.mIcon.setVisibility(8);
        }
    }

    public SeekBar getSeekBar() {
        return this.mSeekBar;
    }

    public ImageView getIcon() {
        return this.mIcon;
    }

    public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        this.onSeekBarChangeListener = onSeekBarChangeListener;
    }
}
