.class public Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;
.super Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;
.source "VrAdapterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VrAdapterManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    return-void
.end method
