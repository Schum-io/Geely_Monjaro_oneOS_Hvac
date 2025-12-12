.class public interface abstract Lcom/geely/os/tbox/IGlyBoxMessage;
.super Ljava/lang/Object;
.source "IGlyBoxMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/tbox/IGlyBoxMessage$TBoxMessageType;
    }
.end annotation


# static fields
.field public static final TBOX_MSG_DEFAULT:I = 0x0

.field public static final TBOX_MSG_NAVI:I = 0x2

.field public static final TBOX_MSG_TEXT:I = 0x1


# virtual methods
.method public abstract getNaviInfo()Lcom/geely/os/tbox/IGlyNaviInfoFromTBox;
.end method

.method public abstract getTBoxMsgType()I
.end method

.method public abstract setTBoxMessageCallback(Lcom/geely/os/tbox/GlyTBoxMessageCallback;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tBoxMessageCallback",
            "messageType"
        }
    .end annotation
.end method

.method public abstract unsetTBoxMessageCallback(Lcom/geely/os/tbox/GlyTBoxMessageCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tBoxMessageCallback"
        }
    .end annotation
.end method
