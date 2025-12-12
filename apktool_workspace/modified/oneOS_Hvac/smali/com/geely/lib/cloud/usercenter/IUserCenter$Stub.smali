.class public abstract Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;
.super Landroid/os/Binder;
.source "IUserCenter.java"

# interfaces
.implements Lcom/geely/lib/cloud/usercenter/IUserCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/IUserCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.cloud.usercenter.IUserCenter"

.field static final TRANSACTION_getAgreementComparisonDetails:I = 0x1a

.field static final TRANSACTION_getAgreementPrivacyRecords:I = 0x18

.field static final TRANSACTION_getAgreementResults:I = 0x19

.field static final TRANSACTION_getDownloadUrl:I = 0x29

.field static final TRANSACTION_getHimaUnboundAccount:I = 0x24

.field static final TRANSACTION_getKugouBindAccountUpdate:I = 0x23

.field static final TRANSACTION_getKugouBindQrcode:I = 0x21

.field static final TRANSACTION_getKugouUnboundAccount:I = 0x22

.field static final TRANSACTION_getNeteaseBindQrcode:I = 0x1f

.field static final TRANSACTION_getNeteaseUnboundAccount:I = 0x20

.field static final TRANSACTION_getPrivacyDetail:I = 0x28

.field static final TRANSACTION_getPrivacyHistory:I = 0x27

.field static final TRANSACTION_getPrivacyRecords:I = 0x26

.field static final TRANSACTION_getThirdAccount:I = 0x1b

.field static final TRANSACTION_getThirdBindAppList:I = 0x1c

.field static final TRANSACTION_getThirdBindStatus:I = 0x1d

.field static final TRANSACTION_getThirdSwitchStatus:I = 0x25

.field static final TRANSACTION_getTodayRadioUnboundAccount:I = 0x1e

.field static final TRANSACTION_getUserAPPOwnerQrcode:I = 0xb

.field static final TRANSACTION_getUserApplicationAdd:I = 0x17

.field static final TRANSACTION_getUserApplicationList:I = 0x16

.field static final TRANSACTION_getUserHabitVehicleDownload:I = 0xd

.field static final TRANSACTION_getUserHabitVehicleUpload:I = 0xc

.field static final TRANSACTION_getUserInfo:I = 0xe

.field static final TRANSACTION_getUserLoginConfirm:I = 0x3

.field static final TRANSACTION_getUserLoginLogout:I = 0x6

.field static final TRANSACTION_getUserLoginQrcode:I = 0x1

.field static final TRANSACTION_getUserLoginQrcodeStatus:I = 0x2

.field static final TRANSACTION_getUserLoginRefresh:I = 0x5

.field static final TRANSACTION_getUserLoginSync:I = 0xa

.field static final TRANSACTION_getUserLoginUserInfo:I = 0x4

.field static final TRANSACTION_getUserMessageSend:I = 0x14

.field static final TRANSACTION_getUserMessageVerify:I = 0x15

.field static final TRANSACTION_getUserPhone:I = 0x13

.field static final TRANSACTION_getUserRelationAdd:I = 0x8

.field static final TRANSACTION_getUserRelationDelete:I = 0x9

.field static final TRANSACTION_getUserRelationList:I = 0x7

.field static final TRANSACTION_getUserScopeConfirm:I = 0x12

.field static final TRANSACTION_getUserScopeInfo:I = 0x11

.field static final TRANSACTION_getUserSettingsDownload:I = 0x10

.field static final TRANSACTION_getUserSettingsUpload:I = 0xf

.field static final TRANSACTION_postRegisterAdd:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 184
    invoke-virtual {p0, p0, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/usercenter/IUserCenter;
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
    const-string v0, "com.geely.lib.cloud.usercenter.IUserCenter"

    .line 195
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    instance-of v1, v0, Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_1

    .line 197
    check-cast v0, Lcom/geely/lib/cloud/usercenter/IUserCenter;

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/cloud/usercenter/IUserCenter;
    .locals 1

    .line 1765
    sget-object v0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/cloud/usercenter/IUserCenter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1755
    sget-object v0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1759
    sput-object p0, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1756
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

    const-string v2, "com.geely.lib.cloud.usercenter.IUserCenter"

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 755
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 758
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;

    .line 764
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 765
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->postRegisterAdd(Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 747
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 750
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getDownloadUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 732
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;

    .line 741
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 742
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getPrivacyDetail(Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 717
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 720
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;

    .line 726
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 727
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getPrivacyHistory(Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 702
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 705
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;

    .line 711
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 712
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 687
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 690
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;

    .line 696
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 697
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getThirdSwitchStatus(Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 672
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 675
    sget-object p1, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;

    .line 681
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 682
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getHimaUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 657
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 660
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;

    .line 666
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 667
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getKugouBindAccountUpdate(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 642
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 645
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;

    .line 651
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 652
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getKugouUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/UserIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 627
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 630
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;

    .line 636
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 637
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getKugouBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/ThirdTokenOpenIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 612
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 615
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;

    .line 621
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 622
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getNeteaseUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 597
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 600
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/TokenParam;

    .line 606
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 607
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getNeteaseBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 582
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 585
    sget-object p1, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;

    .line 591
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 592
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getTodayRadioUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 570
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 577
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getThirdBindStatus(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 562
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 565
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getThirdBindAppList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 547
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 550
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;

    .line 556
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 557
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getThirdAccount(Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 532
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 535
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;

    .line 541
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 542
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getAgreementComparisonDetails(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 517
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 520
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/DocParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/DocParam;

    .line 526
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 527
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getAgreementResults(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 502
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 505
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;

    .line 511
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 512
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getAgreementPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 487
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 490
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ApkParam;

    .line 496
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 497
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserApplicationAdd(Lcom/geely/lib/cloud/usercenter/bean/ApkParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 472
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 475
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;

    .line 481
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 482
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserApplicationList(Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 462
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserMessageVerify(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 454
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserMessageSend(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 446
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 449
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserPhone(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 431
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 434
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;

    .line 440
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 441
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserScopeConfirm(Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 419
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 426
    invoke-virtual {p0, p1, p3, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserScopeInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 409
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserSettingsDownload(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 394
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 397
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;

    .line 403
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 404
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserSettingsUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 386
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 389
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserInfo(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 378
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 381
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserHabitVehicleDownload(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 363
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 366
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;

    .line 372
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 373
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserHabitVehicleUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 355
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserAPPOwnerQrcode(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 340
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15

    .line 343
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;

    .line 349
    :cond_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 350
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginSync(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 330
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p2

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserRelationDelete(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 315
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    .line 318
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;

    .line 324
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserRelationAdd(Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 307
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserRelationList(Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 292
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    .line 295
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;

    .line 301
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 302
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginLogout(Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 277
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    .line 280
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;

    .line 286
    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginRefresh(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 262
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 265
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;

    .line 271
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginUserInfo(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 247
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a

    .line 250
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;

    .line 256
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginConfirm(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 232
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    .line 235
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;

    .line 241
    :cond_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginQrcodeStatus(Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 217
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 220
    sget-object p1, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;

    .line 226
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/cloud/ICloudCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object p1

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->getUserLoginQrcode(Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    return v1

    .line 212
    :cond_1d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
