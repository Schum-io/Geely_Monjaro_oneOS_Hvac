.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChangeNaviMode$2(ILcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 233
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onChangeNaviMode(I)V

    return-void
.end method

.method static synthetic lambda$onControlCenterStateChanged$3(ILcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 238
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onControlCenterStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onEngineStatusChanged$4(ZLcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 243
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onEngineStatusChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onTabChanged$1(ILcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 228
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onTabChanged(I)V

    return-void
.end method

.method static synthetic lambda$onThemeChanged$0(ILcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 223
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onThemeChanged(I)V

    return-void
.end method

.method static synthetic lambda$onVolumeBarStatusChanged$5(ZLcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 0

    .line 248
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;->onVolumeBarStatusChanged(Z)V

    return-void
.end method


# virtual methods
.method public onChangeNaviMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onControlCenterStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$fOik8xv8cjpps6Zz190nYpehlLs;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$fOik8xv8cjpps6Zz190nYpehlLs;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEngineStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$Rg0PTZcdXKapzjmAkqkI-P6pvlQ;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$Rg0PTZcdXKapzjmAkqkI-P6pvlQ;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTabChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$3xOTSIGEQUCBbMejEPfaq8H30lA;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$3xOTSIGEQUCBbMejEPfaq8H30lA;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onThemeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$40ZC3HCpRm7vKaAQGummit1f7XE;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$40ZC3HCpRm7vKaAQGummit1f7XE;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onVolumeBarStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$X-sigjMQJENgHCOAzQJtKaCk-Xw;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$X-sigjMQJENgHCOAzQJtKaCk-Xw;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
