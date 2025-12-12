package com.geely.lib.oneosapi.navi.base.log;

import android.util.Log;

/* loaded from: classes.dex */
public final class LogProxy {
    private boolean enable = false;
    private int level;
    private ILog logImpl;

    public void d(String tag, String msg) {
        if (!this.enable || this.level > 3) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.d(tag, msg);
        } else {
            iLog.d(tag, msg);
        }
    }

    public void e(String tag, String msg) {
        if (!this.enable || this.level > 6) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.e(tag, msg);
        } else {
            iLog.e(tag, msg);
        }
    }

    public void i(String tag, String msg) {
        if (!this.enable || this.level > 4) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.i(tag, msg);
        } else {
            iLog.i(tag, msg);
        }
    }

    public void setLogEnable(boolean enable) {
        this.enable = enable;
    }

    public void setLogImpl(ILog logImpl) {
        this.logImpl = logImpl;
    }

    public void setLogLevel(int level) {
        this.level = level;
    }

    public void v(String tag, String msg) {
        if (!this.enable || this.level > 2) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.v(tag, msg);
        } else {
            iLog.v(tag, msg);
        }
    }

    public void w(String tag, String msg) {
        if (!this.enable || this.level > 5) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.w(tag, msg);
        } else {
            iLog.w(tag, msg);
        }
    }

    public void d(String tag, String msg, Throwable tr) {
        if (!this.enable || this.level > 3) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.d(tag, msg, tr);
        } else {
            iLog.d(tag, msg + '\n' + Log.getStackTraceString(tr));
        }
    }

    public void e(String tag, String msg, Throwable tr) {
        if (!this.enable || this.level > 6) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.e(tag, msg, tr);
        } else {
            iLog.e(tag, msg + '\n' + Log.getStackTraceString(tr));
        }
    }

    public void i(String tag, String msg, Throwable tr) {
        if (!this.enable || this.level > 4) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.i(tag, msg, tr);
        } else {
            iLog.i(tag, msg + '\n' + Log.getStackTraceString(tr));
        }
    }

    public void v(String tag, String msg, Throwable tr) {
        if (!this.enable || this.level > 2) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.v(tag, msg, tr);
        } else {
            iLog.v(tag, msg + '\n' + Log.getStackTraceString(tr));
        }
    }

    public void w(String tag, String msg, Throwable tr) {
        if (!this.enable || this.level > 5) {
            return;
        }
        ILog iLog = this.logImpl;
        if (iLog == null) {
            Log.w(tag, msg, tr);
        } else {
            iLog.w(tag, msg + '\n' + Log.getStackTraceString(tr));
        }
    }
}
