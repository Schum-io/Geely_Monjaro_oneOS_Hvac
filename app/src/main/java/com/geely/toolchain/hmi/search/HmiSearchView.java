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
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiSearchView extends ConstraintLayout {
    private static final int SDK_INT = 29;
    private static final String TAG = "HmiSearchView";
    private final FocusEditText mFocusEditText;
    private OnFocusChangeListener mFocusListener;
    private CharSequence mOldQueryText;
    private OnQueryTextListener mQueryListener;
    private final ImageButton mSearchViewClearButton;
    private CharSequence mUserQuery;
    private final HmiImageView mVoiceImageView;

    public interface OnFocusChangeListener {
        void onFocusChange(boolean hasFocus);
    }

    public interface OnQueryTextListener {
        void onQueryTextChange(CharSequence newText);

        void onQueryTextSubmit(CharSequence query);
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
    }

    public HmiSearchView(Context context) {
        this(context, null);
    }

    public HmiSearchView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiSearchView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mFocusListener = null;
        this.mQueryListener = null;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attrs, R.styleable.HMISearchView, defStyleAttr, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R.styleable.HMISearchView, attrs, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), defStyleAttr, 0);
        LayoutInflater.from(context).inflate(tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.HMISearchView_layout, R.layout.hmi_search_view), (ViewGroup) this, true);
        HmiImageView hmiImageView = (HmiImageView) findViewById(R.id.search_iv_icon);
        HmiImageView hmiImageView2 = (HmiImageView) findViewById(R.id.voice_iv_icon);
        this.mVoiceImageView = hmiImageView2;
        FocusEditText focusEditText = (FocusEditText) findViewById(R.id.search_view_edit_text);
        this.mFocusEditText = focusEditText;
        focusEditText.addTextChangedListener(new TextWatcher() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence sequence, int i, int i1, int i2) {
                HmiSearchView.this.onTextChanged(sequence);
            }
        });
        focusEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int actionId, KeyEvent keyEvent) {
                if (actionId != 3) {
                    return false;
                }
                HmiSearchView.this.onSubmitQuery();
                return true;
            }
        });
        focusEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean hasFocus) {
                if (HmiSearchView.this.mFocusListener != null) {
                    HmiSearchView.this.mFocusListener.onFocusChange(hasFocus);
                } else {
                    Log.i(HmiSearchView.TAG, "mFocusListener is null");
                }
            }
        });
        focusEditText.setOnClickListener(new OnClickListener() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                HmiSearchView.this.setFocusMode(true);
                HmiSearchView.this.showKeyboard();
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        ImageButton imageButton = (ImageButton) findViewById(R.id.search_view_clear_button);
        this.mSearchViewClearButton = imageButton;
        imageButton.setOnClickListener(new OnClickListener() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmiSearchView.this.setTextClearOnClearFocus(true);
                HmiSearchView.this.mFocusEditText.clearFocus();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.HMISearchView_search_clearIcon)) {
            setClearIcon(ContextCompat.getDrawable(context, R.drawable.oneoshmi_search_close_icon));
        }
        imageButton.setVisibility(8);
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.HMISearchView_android_hint)) {
            setHint(tintTypedArrayObtainStyledAttributes.getString(R.styleable.HMISearchView_android_hint));
        }
        int i = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.HMISearchView_android_imeOptions, -1);
        if (i != -1) {
            setImeOptions(i);
        }
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.HMISearchView_android_inputType, -1);
        if (i2 != -1) {
            setInputType(i2);
        }
        if (tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.HMISearchView_backgroundDefault, false)) {
            setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_search_bg));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.HMISearchView_searchIcon)) {
            hmiImageView.setImageDrawable(ContextCompat.getDrawable(context, tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.HMISearchView_searchIcon, 0)));
        }
        if (tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.HMISearchView_voiceIconGone, false)) {
            hmiImageView2.setVisibility(8);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public HmiImageView getVoiceImageView() {
        return this.mVoiceImageView;
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
        this.mSearchViewClearButton.setImageDrawable(drawable);
    }

    public void setImeOptions(int imeOptions) {
        this.mFocusEditText.setImeOptions(imeOptions);
    }

    public void setInputType(int type) {
        this.mFocusEditText.setInputType(type);
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
        if (!TextUtils.isEmpty(newText)) {
            this.mSearchViewClearButton.setVisibility(0);
        } else {
            this.mSearchViewClearButton.setVisibility(8);
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
            this.cReator = new ClassLoaderCreator<SavedState>() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.SavedState.1
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
            ClassLoaderCreator<SavedState> classLoaderCreator = new ClassLoaderCreator<SavedState>() { // from class: com.geely.toolchain.hmi.search.HmiSearchView.SavedState.1
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
