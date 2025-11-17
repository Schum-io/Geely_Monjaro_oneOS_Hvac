package com.geely.os.trackball;

import android.content.Context;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.trackball.ITrackBall;
import com.ecarx.xui.adaptapi.trackball.TrackBall;
import com.geely.os.car.GlyLog;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyTrackBallImpl implements IGlyTrackBall {
    private ITrackBall iTrackBall;
    private final ArraySet<IGlyTrackBallListener> glyTrackBallListeners = new ArraySet<>();
    private ITrackBall.ITrackBallListener trackBallListener = new AnonymousClass1();

    /* renamed from: com.geely.os.trackball.GlyTrackBallImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ITrackBall.ITrackBallListener {
        AnonymousClass1() {
        }

        public void onTrackBallSensitivityChanged(final int mode) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onTrackBallSensitivityChanged alpha=" + mode);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$OMTUXfQst9B6x33RvU5_JxxL_jk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onTrackBallSensitivityChanged(mode);
                }
            });
        }

        public void onTrackBallCursorAlphaChanged(final int alpha) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onTrackBallCursorAlphaChanged style=" + alpha);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$y9HuUyOfxt4ey6iXx7F8pEhzYMk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onTrackBallCursorAlphaChanged(alpha);
                }
            });
        }

        public void onTrackBallCursorStyleChanged(final int style) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onTrackBallCursorStyleChanged style=" + style);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$6ALWGp_JrdruQ-FbVaecBYnyIUs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onTrackBallCursorStyleChanged(style);
                }
            });
        }

        public void onTrackBallMediaTypeChanged(final int type) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onTrackBallMediaTypeChanged type=" + type);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$qK-hweVVJW8GOw2YXIgGc770Tzc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onTrackBallMediaTypeChanged(type);
                }
            });
        }

        public void onTrackBallVideoTypeChanged(final int type) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onTrackBallVideoTypeChanged type=" + type);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$muGdDYEag4Zb2keOuP4bIfRFvWU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onTrackBallVideoTypeChanged(type);
                }
            });
        }

        public void onConnectStateChange(final boolean isConnected) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "onConnectStateChange isConnected=" + isConnected);
            GlyTrackBallImpl.this.glyTrackBallListeners.forEach(new Consumer() { // from class: com.geely.os.trackball.-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyTrackBallListener) obj).onConnectStateChange(isConnected);
                }
            });
        }
    }

    public static IGlyTrackBall create(Context context) {
        if (context != null) {
            return new GlyTrackBallImpl(context);
        }
        return null;
    }

    private GlyTrackBallImpl(Context context) {
        this.iTrackBall = TrackBall.create(context);
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public boolean getConnectState() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getConnectState();
        }
        return false;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public int getTrackBallCursorAlpha() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getTrackBallCursorAlpha();
        }
        return 0;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public int getTrackBallCursorStyle() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getTrackBallCursorStyle();
        }
        return 0;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public int getTrackBallMediaType() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getTrackBallMediaType();
        }
        return 0;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public int getTrackBallSensitivity() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getTrackBallSensitivity();
        }
        return 0;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public int getTrackBallVideoType() {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            return iTrackBall.getTrackBallVideoType();
        }
        return 0;
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void registerTrackBallCallback(IGlyTrackBallListener callback) {
        if (this.iTrackBall == null || callback == null) {
            return;
        }
        this.glyTrackBallListeners.add(callback);
        this.iTrackBall.registerTrackBallCallback(this.trackBallListener);
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void setTrackBallCursorAlpha(int alpha) {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            iTrackBall.setTrackBallCursorAlpha(alpha);
        }
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void setTrackBallCursorStyle(int style) {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            iTrackBall.setTrackBallCursorStyle(style);
        }
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void setTrackBallMediaType(int type) {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            iTrackBall.setTrackBallMediaType(type);
        }
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void setTrackBallSensitivity(int mode) {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            iTrackBall.setTrackBallSensitivity(mode);
        }
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void setTrackBallVideoType(int type) {
        ITrackBall iTrackBall = this.iTrackBall;
        if (iTrackBall != null) {
            iTrackBall.setTrackBallVideoType(type);
        }
    }

    @Override // com.geely.os.trackball.IGlyTrackBall
    public void unregisterTrackBallCallBack(IGlyTrackBallListener callback) {
        if (this.iTrackBall == null || callback == null) {
            return;
        }
        this.glyTrackBallListeners.remove(callback);
        this.iTrackBall.unregisterTrackBallCallBack(this.trackBallListener);
    }
}
