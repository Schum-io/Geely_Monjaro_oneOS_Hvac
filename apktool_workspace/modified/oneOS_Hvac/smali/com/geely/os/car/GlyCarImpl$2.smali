.class Lcom/geely/os/car/GlyCarImpl$2;
.super Ljava/lang/Object;
.source "GlyCarImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/car/GlyCarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyCarImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyCarImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl$2;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizeFunctionValueChanged(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "zone",
            "value"
        }
    .end annotation

    .line 85
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$2;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->access$600(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFunctionChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    return-void
.end method

.method public onFunctionValueChanged(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "zone",
            "value"
        }
    .end annotation

    .line 76
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$2;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->access$600(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSupportedFunctionStatusChanged(IILcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "zone",
            "status"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$2;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-virtual {p3}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->access$700(Lcom/geely/os/car/GlyCarImpl;III)V

    return-void
.end method

.method public onSupportedFunctionValueChanged(I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "funcValues"
        }
    .end annotation

    return-void
.end method
