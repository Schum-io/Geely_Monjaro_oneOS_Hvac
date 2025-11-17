package com.geely.os.tbox;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public interface IGlyBoxMessage {
    public static final int TBOX_MSG_DEFAULT = 0;
    public static final int TBOX_MSG_NAVI = 2;
    public static final int TBOX_MSG_TEXT = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TBoxMessageType {
    }

    IGlyNaviInfoFromTBox getNaviInfo();

    int getTBoxMsgType();

    void setTBoxMessageCallback(GlyTBoxMessageCallback tBoxMessageCallback, int messageType);

    void unsetTBoxMessageCallback(GlyTBoxMessageCallback tBoxMessageCallback);
}
