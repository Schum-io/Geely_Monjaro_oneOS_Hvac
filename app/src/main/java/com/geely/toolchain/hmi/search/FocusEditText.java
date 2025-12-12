package com.geely.toolchain.hmi.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import androidx.appcompat.widget.AppCompatEditText;

/* loaded from: classes.dex */
public class FocusEditText extends AppCompatEditText {
    private static final String TAG = "FocusEditText";
    private boolean mClear;
    private boolean mClearFocus;

    public FocusEditText(Context context) {
        this(context, null);
    }

    public FocusEditText(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FocusEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 1 && this.mClear && hasFocus()) {
            clearFocus();
            return true;
        }
        return super.onKeyPreIme(keyCode, event);
    }

    @Override // android.view.View
    public void clearFocus() {
        super.clearFocus();
        if (!this.mClearFocus || getText() == null) {
            return;
        }
        getText().clear();
    }

    public void setTextClearOnBackPressed(boolean clear) {
        this.mClear = clear;
    }

    public void setTextClearOnClearFocus(boolean clearFocus) {
        this.mClearFocus = clearFocus;
    }
}
