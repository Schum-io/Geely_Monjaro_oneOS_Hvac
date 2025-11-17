.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iput-object p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;->f$0:Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    iget-object v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;->f$1:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;

    invoke-virtual {v0, v1, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->lambda$onReceive$2$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V

    return-void
.end method
