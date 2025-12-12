.class public abstract Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;
.super Landroid/os/Binder;
.source "IThemeStore.java"

# interfaces
.implements Lcom/geely/lib/cloud/themestore/IThemeStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/themestore/IThemeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.themestore.IThemeStore"

.field static final TRANSACTION_getBuyResource:I = 0x10

.field static final TRANSACTION_getDelResource:I = 0x11

.field static final TRANSACTION_getGoodsDownloadResource:I = 0x9

.field static final TRANSACTION_getGoodsFrames:I = 0x1

.field static final TRANSACTION_getGoodsGetGoodsCateGory:I = 0x4

.field static final TRANSACTION_getGoodsOperateInfo:I = 0x2

.field static final TRANSACTION_getGoodsOperateMoreInfo:I = 0x3

.field static final TRANSACTION_getGoodsPreview:I = 0x7

.field static final TRANSACTION_getGoodsPurchaseResource:I = 0x8

.field static final TRANSACTION_getGoodsSearchGoods:I = 0x5

.field static final TRANSACTION_getGoodsSearchGoodsDetail:I = 0x6

.field static final TRANSACTION_getOrderCancleOrder:I = 0xd

.field static final TRANSACTION_getOrderCreateOrder:I = 0xa

.field static final TRANSACTION_getOrderPay:I = 0xb

.field static final TRANSACTION_getOrderSearchOrderStatus:I = 0xc

.field static final TRANSACTION_getThemeGoodsPurchaseCount:I = 0xf

.field static final TRANSACTION_getThemeGoodsPurchaseRecord:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 75
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/themestore/IThemeStore;
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
    const-string v0, "com.geely.lib.cloud.themestore.IThemeStore"

    .line 86
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    instance-of v1, v0, Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Lcom/geely/lib/cloud/themestore/IThemeStore;

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/themestore/IThemeStore;
    .locals 1

    .line 806
    sget-object v0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/themestore/IThemeStore;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/themestore/IThemeStore;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 796
    sget-object v0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 800
    sput-object p0, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/themestore/IThemeStore;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 797
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

    const-string v2, "com.geely.lib.cloud.themestore.IThemeStore"

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 348
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 333
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;

    .line 342
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 318
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 321
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;

    .line 327
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 328
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 303
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 306
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;

    .line 312
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 288
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 291
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;

    .line 297
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 298
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 273
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 276
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;

    .line 282
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 283
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 258
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 261
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;

    .line 267
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 243
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 246
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;

    .line 252
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 253
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 228
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 231
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;

    .line 237
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 213
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 216
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;

    .line 222
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 198
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 201
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;

    .line 207
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 183
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 186
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;

    .line 192
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 193
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 168
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 171
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;

    .line 177
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 153
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 156
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;

    .line 162
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 138
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 141
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;

    .line 147
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 123
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 126
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;

    .line 132
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 108
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 111
    sget-object p1, Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;

    .line 117
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 103
    :cond_11
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
