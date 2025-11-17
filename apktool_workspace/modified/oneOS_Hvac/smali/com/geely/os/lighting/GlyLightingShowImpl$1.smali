.class Lcom/geely/os/lighting/GlyLightingShowImpl$1;
.super Ljava/lang/Object;
.source "GlyLightingShowImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/lighting/GlyLightingShowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/lighting/GlyLightingShowImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onLightingShowEnableChanged$0(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onLightingShowEnableChanged(I)V

    return-void
.end method

.method static synthetic lambda$onLightingShowError$2([ILcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 29
    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onLightingShowError([I)V

    return-void
.end method

.method static synthetic lambda$onLightingShowFileDownloadFunctionStatus$4(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onLightingShowFileDownloadFunctionStatus(I)V

    return-void
.end method

.method static synthetic lambda$onLightingShowFileDownloadState$3(ILcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 34
    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onLightingShowFileDownloadState(I)V

    return-void
.end method

.method static synthetic lambda$onLightingShowStateChanged$1(ILcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onLightingShowStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onWelcomeLightFileDownloadFunctionStatus$5(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/geely/os/lighting/IGlyLightingShowWatcher;->onWelcomeLightFileDownloadFunctionStatus(I)V

    return-void
.end method


# virtual methods
.method public onLightingShowEnableChanged(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionStatus"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$46a5A9B7nFlTFETBgiNkDgCqo5c;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$46a5A9B7nFlTFETBgiNkDgCqo5c;-><init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLightingShowError([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ints"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA;-><init>([I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLightingShowFileDownloadFunctionStatus(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionStatus"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$Sj4G5-vV5gVdl5VhtacZlUkqxK0;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$Sj4G5-vV5gVdl5VhtacZlUkqxK0;-><init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLightingShowFileDownloadState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$uxHmSeopcQaWsyw4qiNV-J86wnk;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$uxHmSeopcQaWsyw4qiNV-J86wnk;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLightingShowStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$y4BHqiG2Z2euoo1dbD0QOD1OJ8I;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$y4BHqiG2Z2euoo1dbD0QOD1OJ8I;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onWelcomeLightFileDownloadFunctionStatus(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionStatus"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-static {v0}, Lcom/geely/os/lighting/GlyLightingShowImpl;->access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ;

    invoke-direct {v1, p1}, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ;-><init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
