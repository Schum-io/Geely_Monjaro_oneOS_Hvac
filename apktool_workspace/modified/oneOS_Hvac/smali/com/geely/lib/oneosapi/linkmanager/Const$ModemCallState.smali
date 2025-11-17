.class public Lcom/geely/lib/oneosapi/linkmanager/Const$ModemCallState;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/linkmanager/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemCallState"
.end annotation


# static fields
.field public static final IDLE:I = 0x1

.field public static final OFFHOOK:I = 0x3

.field public static final RINGING:I = 0x2

.field public static final UNKNOWN_STATE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
