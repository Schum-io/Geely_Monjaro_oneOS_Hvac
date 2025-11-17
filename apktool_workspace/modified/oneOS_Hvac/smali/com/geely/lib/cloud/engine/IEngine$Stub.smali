.class public abstract Lcom/geely/lib/cloud/engine/IEngine$Stub;
.super Landroid/os/Binder;
.source "IEngine.java"

# interfaces
.implements Lcom/geely/lib/cloud/engine/IEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/engine/IEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.engine.IEngine"

.field static final TRANSACTION_deleteBatchCreation:I = 0x12

.field static final TRANSACTION_deleteFavourite:I = 0x11

.field static final TRANSACTION_getAbility:I = 0xe

.field static final TRANSACTION_getConfig:I = 0xf

.field static final TRANSACTION_getCreationAdd:I = 0xb

.field static final TRANSACTION_getCreationDelete:I = 0xa

.field static final TRANSACTION_getCreationList:I = 0x9

.field static final TRANSACTION_getCreationPublish:I = 0xd

.field static final TRANSACTION_getCreationUpdate:I = 0xc

.field static final TRANSACTION_getFavoriteDelete:I = 0x8

.field static final TRANSACTION_getFavoriteInsert:I = 0x7

.field static final TRANSACTION_getFavoriteList:I = 0x5

.field static final TRANSACTION_getFavoriteUpdate:I = 0x6

.field static final TRANSACTION_getLabelList:I = 0x10

.field static final TRANSACTION_getSceneDetail:I = 0x4

.field static final TRANSACTION_getSceneList:I = 0x3

.field static final TRANSACTION_getTheme:I = 0x13

.field static final TRANSACTION_getVehicleCloudCheckUpdate:I = 0x1

.field static final TRANSACTION_getVehicleCloudUpdateReport:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.engine.IEngine"

    .line 79
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/engine/IEngine;
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
    const-string v0, "com.geely.lib.cloud.engine.IEngine"

    .line 90
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    instance-of v1, v0, Lcom/geely/lib/cloud/engine/IEngine;

    if-eqz v1, :cond_1

    .line 92
    check-cast v0, Lcom/geely/lib/cloud/engine/IEngine;

    return-object v0

    .line 94
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/engine/IEngine;
    .locals 1

    .line 790
    sget-object v0, Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/engine/IEngine;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/engine/IEngine;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 780
    sget-object v0, Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/engine/IEngine;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 784
    sput-object p0, Lcom/geely/lib/cloud/engine/IEngine$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/engine/IEngine;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 781
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

    const-string v2, "com.geely.lib.cloud.engine.IEngine"

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 340
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getTheme(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 325
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/DeleteBatchCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/DeleteBatchCreationParam;

    .line 334
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 335
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->deleteBatchCreation(Lcom/geely/lib/cloud/engine/bean/DeleteBatchCreationParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 310
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/DeleteFavouriteParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/DeleteFavouriteParam;

    .line 319
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 320
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->deleteFavourite(Lcom/geely/lib/cloud/engine/bean/DeleteFavouriteParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 302
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getLabelList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 294
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getConfig(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 286
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getAbility(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 271
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/PublishParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/PublishParam;

    .line 280
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getCreationPublish(Lcom/geely/lib/cloud/engine/bean/PublishParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 256
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 259
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneParam;

    .line 265
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 266
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getCreationUpdate(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 241
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 244
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneParam;

    .line 250
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getCreationAdd(Lcom/geely/lib/cloud/engine/bean/SceneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 226
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 229
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;

    .line 235
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getCreationDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 218
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getCreationList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 203
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 206
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;

    .line 212
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 213
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getFavoriteDelete(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 188
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 191
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneIdParam;

    .line 197
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getFavoriteInsert(Lcom/geely/lib/cloud/engine/bean/SceneIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 173
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 176
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteParam;

    .line 182
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 183
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getFavoriteUpdate(Lcom/geely/lib/cloud/engine/bean/UpdateFavouriteParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 165
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getFavoriteList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 150
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 153
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/SceneCodeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/SceneCodeParam;

    .line 159
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getSceneDetail(Lcom/geely/lib/cloud/engine/bean/SceneCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 142
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getSceneList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 127
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 130
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;

    .line 136
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getVehicleCloudUpdateReport(Lcom/geely/lib/cloud/engine/bean/UpdateReportParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 112
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 115
    sget-object p1, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;

    .line 121
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/engine/IEngine$Stub;->getVehicleCloudCheckUpdate(Lcom/geely/lib/cloud/engine/bean/CheckUpdateParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 107
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
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
