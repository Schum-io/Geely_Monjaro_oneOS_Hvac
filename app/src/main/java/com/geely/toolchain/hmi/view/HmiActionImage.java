package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiActionImage extends HmiImageView {
    public static final String TAG = "HmiActionImage";
    private ActionState mState;

    public HmiActionImage(Context context) {
        this(context, null);
    }

    public HmiActionImage(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiActionImage(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiActionImage);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.HmiActionImage_hmiActionState, ActionState.BACK.getCode());
        typedArrayObtainStyledAttributes.recycle();
        Log.i(TAG, "init: actionState = " + integer);
        if (integer == ActionState.CLOSE.code) {
            setState(ActionState.CLOSE);
            return;
        }
        if (integer == ActionState.PACK_UP.code) {
            setState(ActionState.PACK_UP);
        } else if (integer == ActionState.BACK.code) {
            setState(ActionState.BACK);
        } else {
            setState(ActionState.EXPANDE);
        }
    }

    public void setState(ActionState state) {
        if (state == null) {
            Log.d(TAG, "setState: state == null");
            return;
        }
        this.mState = state;
        int i = AnonymousClass1.$SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState[this.mState.ordinal()];
        if (i == 1) {
            setImageResource(R.drawable.oneoshmi_ic_back_black);
            return;
        }
        if (i == 2) {
            setImageResource(R.drawable.oneoshmi_ic_pack_up);
        } else if (i == 3) {
            setImageResource(R.drawable.oneoshmi_ic_expand);
        } else {
            setImageResource(R.drawable.oneoshmi_ic_close_black);
        }
    }

    /* renamed from: com.geely.toolchain.hmi.view.HmiActionImage$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState;

        static {
            int[] iArr = new int[ActionState.values().length];
            $SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState = iArr;
            try {
                iArr[ActionState.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState[ActionState.PACK_UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState[ActionState.EXPANDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }

    public enum ActionState {
        BACK(0),
        PACK_UP(1),
        CLOSE(2),
        EXPANDE(3);

        private final int code;

        ActionState(int code) {
            this.code = code;
        }

        public int getCode() {
            return this.code;
        }
    }
}
