.class public Lcom/geely/livewallpager/lotties/FontAssetDelegate;
.super Ljava/lang/Object;
.source "FontAssetDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontFamily"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontFamily"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
