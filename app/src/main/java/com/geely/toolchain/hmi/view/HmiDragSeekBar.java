package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiDragSeekBar extends AppCompatSeekBar {
    private Context mContext;

    public HmiDragSeekBar(Context context) {
        super(context);
    }

    public HmiDragSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        setProgressDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_seek_bar_drag));
        setThumb(ContextCompat.getDrawable(context, R.mipmap.oneoshmi_seekbar_roound_bg));
    }

    public HmiDragSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            setProgressDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.oneoshmi_seek_bar_drag));
            setThumb(ContextCompat.getDrawable(this.mContext, R.mipmap.oneoshmi_seekbar_roound_bg));
        } else {
            setProgressDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.oneoshmi_seek_bar_drag));
            setThumb(null);
        }
    }
}
