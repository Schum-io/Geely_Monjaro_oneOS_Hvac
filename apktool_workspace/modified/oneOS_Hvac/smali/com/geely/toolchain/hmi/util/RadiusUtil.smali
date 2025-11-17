.class public Lcom/geely/toolchain/hmi/util/RadiusUtil;
.super Ljava/lang/Object;
.source "RadiusUtil.java"


# static fields
.field private static final ONE_OS_RADIUS:I = 0x18

.field private static final TAG:Ljava/lang/String; = "RadiusUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRadius(Landroid/view/View;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "normalColor",
            "pressColor"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/geely/toolchain/hmi/util/RadiusUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadius: normalColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 29
    invoke-static {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/util/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    return-void
.end method
