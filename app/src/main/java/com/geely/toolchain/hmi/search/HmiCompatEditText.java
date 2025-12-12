package com.geely.toolchain.hmi.search;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiCompatEditText extends ConstraintLayout {
    private static final int RES_ID_DEFAULT = -1;
    private static final int SDK_INT = 29;
    private static final String TAG = "HmiCompatEditText";
    private boolean hidePassword;
    private final boolean isCloseIconShow;
    private HmiImageView mCenterIcon;
    private final HmiImageView mClearImageView;
    private final FocusEditText mFocusEditText;
    private OnFocusChangeListener mFocusListener;
    private HmiImageView mLeftIcon;
    private CharSequence mOldQueryText;
    private OnPasswordStatesChangeListener mPasswordListener;
    private OnQueryTextListener mQueryListener;
    private HmiImageView mRightIcon;
    private CharSequence mUserQuery;
    private final View rootView;

    public interface OnFocusChangeListener {
        void onFocusChange(boolean hasFocus);
    }

    public interface OnPasswordStatesChangeListener {
        void onStatesChange(boolean hidePassword);
    }

    public interface OnQueryTextListener {
        void onQueryTextChange(CharSequence newText);

        void onQueryTextSubmit(CharSequence query);
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
    }

    public HmiCompatEditText(Context context) {
        this(context, null);
    }

    public HmiCompatEditText(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiCompatEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPasswordListener = null;
        this.mFocusListener = null;
        this.mQueryListener = null;
        this.hidePassword = true;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attrs, R.styleable.HmiCompatEditTextStyle, defStyleAttr, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R.styleable.HmiCompatEditTextStyle, attrs, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), defStyleAttr, 0);
        LayoutInflater.from(context).inflate(R.layout.hmi_compat_edit_text, (ViewGroup) this, true);
        this.rootView = findViewById(R.id.hmi_compat_edit_root_view);
        this.mFocusEditText = (FocusEditText) findViewById(R.id.hmi_edit_text);
        this.mClearImageView = (HmiImageView) findViewById(R.id.hmi_edit_text_clear_iv);
        this.isCloseIconShow = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiCompatEditTextStyle_hmiCloseIconShow, false);
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.HmiCompatEditTextStyle_android_hint)) {
            setHint(tintTypedArrayObtainStyledAttributes.getString(R.styleable.HmiCompatEditTextStyle_android_hint));
        }
        if (tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiCompatEditTextStyle_hmiPasswordIconShow, false)) {
            final HmiImageView hmiImageView = (HmiImageView) findViewById(R.id.hmi_password_iv_icon);
            hmiImageView.setOnClickListener(new OnClickListener() { // from class: com.geely.toolchain.hmi.search.-$$Lambda$HmiCompatEditText$clAtfOnRu6KbM5UbOJTBsivANDQ
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HmiCompatEditText.this.lambda$new$0$HmiCompatEditText(hmiImageView, view);
                }
            });
            hmiImageView.setVisibility(0);
        }
        int i = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.HmiCompatEditTextStyle_android_inputType, -1);
        if (i != -1) {
            setInputType(i);
        }
        float dimension = tintTypedArrayObtainStyledAttributes.getDimension(R.styleable.HmiCompatEditTextStyle_android_textSize, -1.0f);
        if (dimension != -1.0f) {
            setTextSize(dimension);
        }
        setErrorStatus(tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiCompatEditTextStyle_hmiErrorStatus, false));
        initIcon(tintTypedArrayObtainStyledAttributes);
        initListener();
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ void lambda$new$0$HmiCompatEditText(HmiImageView hmiImageView, View view) {
        boolean z = !this.hidePassword;
        this.hidePassword = z;
        hmiImageView.setImageResource(z ? R.drawable.oneoshmi_compat_edit_password_icon_off : R.drawable.oneoshmi_compat_edit_password_icon_on);
        OnPasswordStatesChangeListener onPasswordStatesChangeListener = this.mPasswordListener;
        if (onPasswordStatesChangeListener != null) {
            onPasswordStatesChangeListener.onStatesChange(this.hidePassword);
        }
        FocusEditText focusEditText = this.mFocusEditText;
        focusEditText.setSelection(focusEditText.getText() == null ? 0 : this.mFocusEditText.getText().toString().length());
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initIcon(TintTypedArray typedArray) {
        if (typedArray == null) {
            return;
        }
        HmiImageView hmiImageView = (HmiImageView) findViewById(R.id.hmi_compat_edit_left_iv);
        this.mLeftIcon = hmiImageView;
        initStyleableIcon(typedArray, hmiImageView, R.styleable.HmiCompatEditTextStyle_hmiLeftIconShow, R.styleable.HmiCompatEditTextStyle_hmiLeftIconSrc);
        HmiImageView hmiImageView2 = (HmiImageView) findViewById(R.id.hmi_compat_edit_center_iv);
        this.mCenterIcon = hmiImageView2;
        initStyleableIcon(typedArray, hmiImageView2, R.styleable.HmiCompatEditTextStyle_hmiCenterIconShow, R.styleable.HmiCompatEditTextStyle_hmiCenterIconSrc);
        HmiImageView hmiImageView3 = (HmiImageView) findViewById(R.id.hmi_compat_edit_right_iv);
        this.mRightIcon = hmiImageView3;
        initStyleableIcon(typedArray, hmiImageView3, R.styleable.HmiCompatEditTextStyle_hmiRightIconShow, R.styleable.HmiCompatEditTextStyle_hmiRightIconSrc);
    }

    private void initStyleableIcon(TintTypedArray typedArray, HmiImageView mImageView, int styleableShowId, int styleableResId) {
        if (typedArray.getBoolean(styleableShowId, false)) {
            mImageView.setVisibility(0);
            int resourceId = typedArray.getResourceId(styleableResId, -1);
            if (resourceId != -1) {
                mImageView.setImageResource(resourceId);
            }
        }
    }

    private void initListener() {
        this.mFocusEditText.addTextChangedListener(new TextWatcher() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence sequence, int i, int i1, int i2) {
                HmiCompatEditText.this.onTextChanged(sequence);
            }
        });
        this.mFocusEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int actionId, KeyEvent keyEvent) {
                if (actionId != 3) {
                    return false;
                }
                HmiCompatEditText.this.onSubmitQuery();
                return true;
            }
        });
        this.mFocusEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean hasFocus) {
                if (HmiCompatEditText.this.mFocusListener != null) {
                    HmiCompatEditText.this.mFocusListener.onFocusChange(hasFocus);
                } else {
                    Log.i(HmiCompatEditText.TAG, "mFocusListener is null");
                }
            }
        });
        this.mFocusEditText.setOnClickListener(new OnClickListener() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                HmiCompatEditText.this.setFocusMode(true);
                HmiCompatEditText.this.showKeyboard();
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        this.mClearImageView.setOnClickListener(new OnClickListener() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmiCompatEditText.this.mFocusEditText.setText("");
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
    }

    public HmiImageView getLeftIcon() {
        return this.mLeftIcon;
    }

    public HmiImageView getCenterIcon() {
        return this.mCenterIcon;
    }

    public HmiImageView getRightIcon() {
        return this.mRightIcon;
    }

    public void setErrorStatus(boolean status) {
        this.rootView.setBackground(ContextCompat.getDrawable(getContext(), status ? R.drawable.oneoshmi_compat_edit_text_error_bg : R.drawable.oneoshmi_compat_edit_text_bg));
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        this.mFocusEditText.setBackgroundColor(color);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        return this.mFocusEditText.requestFocus(direction, previouslyFocusedRect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.mFocusEditText.clearFocus();
    }

    public void setFocusMode(boolean focusable) {
        this.mFocusEditText.setFocusable(focusable);
        this.mFocusEditText.setFocusableInTouchMode(focusable);
        this.mFocusEditText.requestFocus();
    }

    public void setClearIcon(Drawable drawable) {
        this.mClearImageView.setImageDrawable(drawable);
    }

    public void setImeOptions(int imeOptions) {
        this.mFocusEditText.setImeOptions(imeOptions);
    }

    public void setInputType(int type) {
        this.mFocusEditText.setInputType(type);
    }

    public void setTextSize(float textSize) {
        this.mFocusEditText.setTextSize(0, textSize);
    }

    public void setText(CharSequence text) {
        this.mFocusEditText.setText(text);
    }

    public void setText(int resid) {
        this.mFocusEditText.setText(resid);
    }

    public void setTextClearOnBackPressed(boolean clear) {
        this.mFocusEditText.setTextClearOnBackPressed(clear);
    }

    public void setTextClearOnClearFocus(boolean clearFocus) {
        this.mFocusEditText.setTextClearOnClearFocus(clearFocus);
    }

    public CharSequence getTextQuery() {
        return this.mFocusEditText.getText();
    }

    public void setTextQuery(CharSequence query, boolean submit) {
        this.mFocusEditText.setText(query);
        if (query != null) {
            FocusEditText focusEditText = this.mFocusEditText;
            focusEditText.setSelection(focusEditText.length());
            this.mUserQuery = query;
        }
        if (!submit || TextUtils.isEmpty(query)) {
            return;
        }
        onSubmitQuery();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSubmitQuery() {
        Editable text = this.mFocusEditText.getText();
        if (this.mQueryListener == null) {
            Log.i(TAG, "mQueryListener is null!");
            return;
        }
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            this.mQueryListener.onQueryTextSubmit(text.toString());
            setFocusMode(false);
            hideKeyboard();
            this.mFocusEditText.getText().clear();
            return;
        }
        Log.i(TAG, "query is null! or query lenth < 0");
    }

    public void setTextTypeface(Typeface typeface) {
        this.mFocusEditText.setTypeface(typeface);
    }

    public void setHint(CharSequence hint) {
        this.mFocusEditText.setHint(hint);
    }

    public void setTextHintColor(int color) {
        this.mFocusEditText.setHintTextColor(color);
    }

    public void setTextColor(int color) {
        this.mFocusEditText.setTextColor(color);
    }

    public void setOnPasswordChangeListener(OnPasswordStatesChangeListener listener) {
        this.mPasswordListener = listener;
    }

    public void setOnFocusChangeListener(OnFocusChangeListener listener) {
        this.mFocusListener = listener;
    }

    public void setOnQueryTextListener(OnQueryTextListener listener) {
        this.mQueryListener = listener;
    }

    public void showKeyboard() {
        if (isInEditMode()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.mFocusEditText, 0);
    }

    public void hideKeyboard() {
        if (isInEditMode()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mFocusEditText.getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTextChanged(CharSequence newText) {
        if (!TextUtils.isEmpty(newText) && this.isCloseIconShow) {
            this.mClearImageView.setVisibility(0);
        } else {
            this.mClearImageView.setVisibility(8);
        }
        this.mUserQuery = this.mFocusEditText.getText();
        if (this.mQueryListener != null && !TextUtils.equals(newText, this.mOldQueryText)) {
            this.mQueryListener.onQueryTextChange(newText.toString());
        }
        this.mOldQueryText = newText.toString();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState != null) {
            SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
            savedState.text = getTextQuery().toString();
            savedState.focus = this.mFocusEditText.hasFocus();
            return savedState;
        }
        return super.onSaveInstanceState();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setTextQuery(savedState.text, false);
            if (savedState.focus) {
                this.mFocusEditText.requestFocus();
                return;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    private static class SavedState extends AbsSavedState {
        private ClassLoaderCreator<SavedState> cReator;
        ClassLoaderCreator<SavedState> creator;
        boolean focus;
        String text;

        protected SavedState(Parcelable superState) {
            super(superState);
            this.focus = false;
            this.cReator = new ClassLoaderCreator<SavedState>() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.SavedState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel source, ClassLoader loader) {
                    return new SavedState(source, loader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel source) {
                    return new SavedState(source, null);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int size) {
                    return new SavedState[size];
                }
            };
        }

        protected SavedState(Parcel source, ClassLoader loader) {
            super(source, loader);
            this.focus = false;
            ClassLoaderCreator<SavedState> classLoaderCreator = new ClassLoaderCreator<SavedState>() { // from class: com.geely.toolchain.hmi.search.HmiCompatEditText.SavedState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel source2, ClassLoader loader2) {
                    return new SavedState(source2, loader2);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel source2) {
                    return new SavedState(source2, null);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int size) {
                    return new SavedState[size];
                }
            };
            this.cReator = classLoaderCreator;
            this.creator = classLoaderCreator;
            this.text = source.readString();
            if (Build.VERSION.SDK_INT >= 29) {
                this.focus = source.readBoolean();
            } else {
                this.focus = source.readInt() == 1;
            }
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
            if (Build.VERSION.SDK_INT >= 29) {
                parcel.writeBoolean(this.focus);
            } else {
                parcel.writeInt(this.focus ? 1 : 0);
            }
        }
    }
}
