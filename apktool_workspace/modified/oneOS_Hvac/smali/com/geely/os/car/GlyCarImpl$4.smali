.class Lcom/geely/os/car/GlyCarImpl$4;
.super Ljava/lang/Object;
.source "GlyCarImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/car/GlyCarImpl;->handleSingleOnChangeEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/geely/os/car/IGlyCarEventCallBack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/car/GlyCarImpl;

.field final synthetic val$propertyId:I

.field final synthetic val$value:Ljava/lang/Object;

.field final synthetic val$zone:I


# direct methods
.method constructor <init>(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$propertyId",
            "val$zone",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    iput p2, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$propertyId:I

    iput p3, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$zone:I

    iput-object p4, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/geely/os/car/IGlyCarEventCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$800(Lcom/geely/os/car/GlyCarImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$800(Lcom/geely/os/car/GlyCarImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v0}, Lcom/geely/os/car/GlyCarImpl;->access$800(Lcom/geely/os/car/GlyCarImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 451
    iget-object v1, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyCarImpl;->access$900(Lcom/geely/os/car/GlyCarImpl;[Ljava/lang/Integer;)[I

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/geely/os/car/GlyCarImpl$4;->this$0:Lcom/geely/os/car/GlyCarImpl;

    iget v2, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$propertyId:I

    invoke-static {v1, v0, v2}, Lcom/geely/os/car/GlyCarImpl;->access$1000(Lcom/geely/os/car/GlyCarImpl;[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget v0, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$propertyId:I

    iget v1, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$zone:I

    iget-object v2, p0, Lcom/geely/os/car/GlyCarImpl$4;->val$value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/geely/os/car/IGlyCarEventCallBack;->onChangeEvent(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    .line 447
    check-cast p1, Lcom/geely/os/car/IGlyCarEventCallBack;

    invoke-virtual {p0, p1}, Lcom/geely/os/car/GlyCarImpl$4;->accept(Lcom/geely/os/car/IGlyCarEventCallBack;)V

    return-void
.end method
