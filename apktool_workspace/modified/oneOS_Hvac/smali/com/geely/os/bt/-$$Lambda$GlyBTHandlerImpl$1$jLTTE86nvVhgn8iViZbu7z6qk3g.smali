.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iput-object p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$2:I

    iput p4, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iget-object v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$2:I

    iget v3, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;->f$3:I

    check-cast p1, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->lambda$onBTProfileConnectStateChanged$4$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;IILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V

    return-void
.end method
