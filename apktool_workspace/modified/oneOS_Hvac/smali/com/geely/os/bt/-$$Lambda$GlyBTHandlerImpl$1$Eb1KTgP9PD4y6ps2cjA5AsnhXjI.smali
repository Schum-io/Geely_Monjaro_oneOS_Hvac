.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iput-object p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iget-object v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;->f$2:I

    check-cast p1, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->lambda$onReceive$3$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;ILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V

    return-void
.end method
