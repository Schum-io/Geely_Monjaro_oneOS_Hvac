package com.geely.lib.oneosapi.navi.base;

import com.geely.lib.oneosapi.navi.base.log.ILog;
import com.geely.lib.oneosapi.navi.base.log.LogProxy;

/* loaded from: classes.dex */
public class NaviAPIBase {
    public LogProxy log = new LogProxy();

    public void setLogEnable(boolean enable) {
        this.log.setLogEnable(enable);
    }

    public void setLogImpl(ILog logImpl) {
        this.log.setLogImpl(logImpl);
    }

    public void setLogLevel(int level) {
        this.log.setLogLevel(level);
    }
}
