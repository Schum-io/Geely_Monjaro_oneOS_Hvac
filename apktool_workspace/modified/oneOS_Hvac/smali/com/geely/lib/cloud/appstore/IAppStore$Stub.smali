.class public abstract Lcom/geely/lib/cloud/appstore/IAppStore$Stub;
.super Landroid/os/Binder;
.source "IAppStore.java"

# interfaces
.implements Lcom/geely/lib/cloud/appstore/IAppStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/IAppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.appstore.IAppStore"

.field static final TRANSACTION_getAppInstallAdd:I = 0xd

.field static final TRANSACTION_getAppStoreBatchCheckUpdate:I = 0x4

.field static final TRANSACTION_getAppStoreCategory:I = 0x5

.field static final TRANSACTION_getAppStoreCategoryList:I = 0x6

.field static final TRANSACTION_getAppStoreDetails:I = 0x8

.field static final TRANSACTION_getAppStoreDownRanking:I = 0x2

.field static final TRANSACTION_getAppStoreDownUp:I = 0x9

.field static final TRANSACTION_getAppStoreGameHome:I = 0xa

.field static final TRANSACTION_getAppStoreGameSearch:I = 0xb

.field static final TRANSACTION_getAppStoreGroupList:I = 0x3

.field static final TRANSACTION_getAppStoreSearch:I = 0x7

.field static final TRANSACTION_getAppStoresHome:I = 0x1

.field static final TRANSACTION_getAppVersionAdd:I = 0xc

.field static final TRANSACTION_getNewAppStoreSearch:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.appstore.IAppStore"

    .line 64
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/appstore/IAppStore;
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
    const-string v0, "com.geely.lib.cloud.appstore.IAppStore"

    .line 75
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    instance-of v1, v0, Lcom/geely/lib/cloud/appstore/IAppStore;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Lcom/geely/lib/cloud/appstore/IAppStore;

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/appstore/IAppStore;
    .locals 1

    .line 678
    sget-object v0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/appstore/IAppStore;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/appstore/IAppStore;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 668
    sget-object v0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/appstore/IAppStore;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 672
    sput-object p0, Lcom/geely/lib/cloud/appstore/IAppStore$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/appstore/IAppStore;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 669
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

    const-string v2, "com.geely.lib.cloud.appstore.IAppStore"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 292
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;

    .line 301
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 302
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 277
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;

    .line 286
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 262
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;

    .line 271
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 247
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;

    .line 256
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 232
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;

    .line 241
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 217
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 220
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;

    .line 226
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 202
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 205
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;

    .line 211
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 187
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 190
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;

    .line 196
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 172
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 175
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;

    .line 181
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 182
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 157
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 160
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;

    .line 166
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 142
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 145
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;

    .line 151
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 127
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 130
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;

    .line 136
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 112
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 115
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnParam;

    .line 121
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 97
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 100
    sget-object p1, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;

    .line 106
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/appstore/IAppStore$Stub;->getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 92
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
