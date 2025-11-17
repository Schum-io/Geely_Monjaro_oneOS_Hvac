package com.geely.hvac.component;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import java.io.IOException;

/* loaded from: classes.dex */
public class TemperatureSound {
    private Context mContext;
    private MediaPlayer mMediaPlayer = new MediaPlayer();
    private String mPath;

    public TemperatureSound(Context appCtx, String path) throws IllegalStateException, IOException, IllegalArgumentException {
        this.mContext = appCtx;
        this.mPath = path;
        try {
            AssetFileDescriptor assetFileDescriptorOpenFd = appCtx.getAssets().openFd(path);
            this.mMediaPlayer.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getStartOffset());
            this.mMediaPlayer.prepare();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void playSound() throws IllegalStateException {
        try {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
