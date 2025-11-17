.class public abstract Lcom/geely/lib/cloud/payment/IPayment$Stub;
.super Landroid/os/Binder;
.source "IPayment.java"

# interfaces
.implements Lcom/geely/lib/cloud/payment/IPayment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/payment/IPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.payment.IPayment"

.field static final TRANSACTION_getGoodsChange:I = 0x6

.field static final TRANSACTION_getGoodsDetail:I = 0x5

.field static final TRANSACTION_getGoodsPoint:I = 0x7

.field static final TRANSACTION_getIOrderDetail:I = 0x8

.field static final TRANSACTION_getLearJudge:I = 0x9

.field static final TRANSACTION_getOrderCancel:I = 0x3

.field static final TRANSACTION_getOrderCreate:I = 0x2

.field static final TRANSACTION_getOrderPay:I = 0x4

.field static final TRANSACTION_getOrderRender:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.payment.IPayment"

    .line 51
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/payment/IPayment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.geely.lib.cloud.payment.IPayment"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/geely/lib/cloud/payment/IPayment;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/payment/IPayment;
    .locals 1

    .line 456
    sget-object v0, Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/payment/IPayment;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/payment/IPayment;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/payment/IPayment;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 450
    sput-object p0, Lcom/geely/lib/cloud/payment/IPayment$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/payment/IPayment;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 447
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.geely.lib.cloud.payment.IPayment"

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 197
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/LearJudgeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/LearJudgeParam;

    .line 206
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 207
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getLearJudge(Lcom/geely/lib/cloud/payment/bean/LearJudgeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 182
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/OrderIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/OrderIdParam;

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 192
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getIOrderDetail(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 174
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getGoodsPoint(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 159
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;

    .line 168
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getGoodsChange(Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 144
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/ItemIdParam;

    .line 153
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getGoodsDetail(Lcom/geely/lib/cloud/payment/bean/ItemIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 129
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/OrderPayParam;

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getOrderPay(Lcom/geely/lib/cloud/payment/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 114
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 117
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/OrderIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/OrderIdParam;

    .line 123
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getOrderCancel(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 99
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/OrderCreateDto;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/OrderCreateDto;

    .line 108
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getOrderCreate(Lcom/geely/lib/cloud/payment/bean/OrderCreateDto;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 84
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 87
    sget-object p1, Lcom/geely/lib/cloud/payment/bean/OrderRenderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/payment/bean/OrderRenderParam;

    .line 93
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->getOrderRender(Lcom/geely/lib/cloud/payment/bean/OrderRenderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 79
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
