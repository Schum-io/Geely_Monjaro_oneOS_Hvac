.class public Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GlySettingsSeatSecondDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;
    }
.end annotation


# static fields
.field public static final FINISH_ACTIVITY:Ljava/lang/String; = "com.geely.hvac.CLOSE_PSD_SEAT_SETTING"

.field private static final PSD_REGISTER_PROPERTY:[I

.field private static mLastUpdateTime:J


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final finishActivityReceiver:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;

.field protected final mCar:Lcom/geely/os/car/IGlyCar;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHeatFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHeatSupportStatus:I

.field private final mIGlyCarEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

.field private mLlBack:Landroid/widget/ImageView;

.field private mLlBackText:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mLocationFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMassageFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMassageSupportStatus:I

.field private mPhysicalSupportStatus:I

.field private mPhysicalTherapyFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mRvFunctionList:Landroidx/recyclerview/widget/RecyclerView;

.field private mSeatBackrestSupportStatus:I

.field private mSeatHeightSupportStatus:I

.field private mSeatLegSupportHeight:I

.field private mSeatLegSupportLength:I

.field private mSeatLengthSupportStatus:I

.field private mSeatSecondTabAdapter:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

.field private mSeatTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/hvac/psd/component/SeatTabEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mUiMode:I

.field private mVentilationFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mVentilationSupportStatus:I

.field private preferences:Landroid/content/SharedPreferences;

.field private selectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 67
    fill-array-data v0, :array_0

    sput-object v0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->PSD_REGISTER_PROPERTY:[I

    return-void

    :array_0
    .array-data 4
        0x10050200
        0x10050100
        0x10050a00
        0x2d500100
        0x2d020100
        0x2d020200
        0x2d030200
        0x2d080100
        0x2d080200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "GlySettingsSeatSecondDisplayActivity"

    .line 46
    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    .line 65
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/os/car/GlyCar;->create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCar;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x10050200

    const/4 v2, 0x4

    .line 75
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatSupportStatus:I

    const v1, 0x10050100

    .line 76
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationSupportStatus:I

    const v1, 0x10050a00

    .line 77
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageSupportStatus:I

    const v1, 0x2d500100

    .line 78
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalSupportStatus:I

    const v1, 0x2d020100

    .line 79
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLengthSupportStatus:I

    const v1, 0x2d020200

    .line 80
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatHeightSupportStatus:I

    const v1, 0x2d030200

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatBackrestSupportStatus:I

    const v1, 0x2d080100

    const/16 v2, 0x40

    .line 82
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v1

    iput v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportHeight:I

    const v1, 0x2d080200

    .line 83
    invoke-interface {v0, v1, v2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportLength:I

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    .line 89
    new-instance v0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;

    invoke-direct {v0, p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->finishActivityReceiver:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;

    .line 202
    new-instance v0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mIGlyCarEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->orderUpdate(II)V

    return-void
.end method

.method private buildFragmentList()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq v0, v1, :cond_4

    .line 134
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;

    invoke-direct {v1}, Lcom/geely/hvac/psd/fragment/GlySeatHeatFragment;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatFragment:Ljava/lang/ref/WeakReference;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    new-instance v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    const v2, 0x7f0700cf

    const-string/jumbo v3, "\u52a0\u70ed"

    invoke-direct {v1, v3, v2}, Lcom/geely/hvac/psd/component/SeatTabEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq v0, v1, :cond_7

    .line 141
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-direct {v1}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationFragment:Ljava/lang/ref/WeakReference;

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    new-instance v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    const v2, 0x7f0700cd

    const-string/jumbo v3, "\u901a\u98ce"

    invoke-direct {v1, v3, v2}, Lcom/geely/hvac/psd/component/SeatTabEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_7
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq v0, v1, :cond_a

    .line 148
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 149
    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/geely/hvac/psd/fragment/GlySeatMassageFragment;

    invoke-direct {v1}, Lcom/geely/hvac/psd/fragment/GlySeatMassageFragment;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageFragment:Ljava/lang/ref/WeakReference;

    .line 151
    :cond_9
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    new-instance v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    const v2, 0x7f0700b5

    const-string/jumbo v3, "\u6309\u6469"

    invoke-direct {v1, v3, v2}, Lcom/geely/hvac/psd/component/SeatTabEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_a
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq v0, v1, :cond_d

    .line 155
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalTherapyFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 156
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/geely/hvac/psd/fragment/GlySeatPhysicalTherapyFragment;

    invoke-direct {v1}, Lcom/geely/hvac/psd/fragment/GlySeatPhysicalTherapyFragment;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalTherapyFragment:Ljava/lang/ref/WeakReference;

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalTherapyFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    new-instance v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    const v2, 0x7f0700c1

    const-string/jumbo v3, "\u7406\u7597"

    invoke-direct {v1, v3, v2}, Lcom/geely/hvac/psd/component/SeatTabEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_d
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLengthSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatHeightSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatBackrestSupportStatus:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportHeight:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportLength:I

    sget v1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq v0, v1, :cond_11

    .line 164
    :cond_e
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLocationFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 165
    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;

    invoke-direct {v1}, Lcom/geely/hvac/psd/fragment/GlySeatLocationFragment;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLocationFragment:Ljava/lang/ref/WeakReference;

    .line 167
    :cond_10
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLocationFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    new-instance v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    const v2, 0x7f0700b3

    const-string/jumbo v3, "\u4f4d\u7f6e"

    invoke-direct {v1, v3, v2}, Lcom/geely/hvac/psd/component/SeatTabEntity;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSeatTabList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private initFragments()V
    .locals 1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    .line 175
    invoke-virtual {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f090170

    .line 108
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLlBack:Landroid/widget/ImageView;

    .line 109
    new-instance v0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatTabList:Ljava/util/List;

    iget-object v2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1, v2}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatSecondTabAdapter:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    const v0, 0x7f090274

    .line 110
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mRvFunctionList:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mRvFunctionList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatSecondTabAdapter:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLlBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$JME0dqMBKcGCMjZz48QQErsYqDI;

    invoke-direct {v1, p0}, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$JME0dqMBKcGCMjZz48QQErsYqDI;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->initFragments()V

    .line 120
    invoke-direct {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->buildFragmentList()V

    .line 121
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->switchFunction(I)V

    return-void
.end method

.method private isNeedRefresh(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mSingleSupportStatus",
            "newStatus"
        }
    .end annotation

    .line 235
    sget v0, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-eq p1, v0, :cond_1

    sget p1, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private orderUpdate(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "newStatus"
        }
    .end annotation

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    if-lez v0, :cond_0

    const-string v0, "orderUpdate"

    .line 222
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$DKElhowApS7B7cA-fZ_OLUBFQTI;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$DKElhowApS7B7cA-fZ_OLUBFQTI;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mLastUpdateTime:J

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "wait for refresh"

    .line 226
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$OFMpWtajQCtip4zoSRuIL854iVk;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$OFMpWtajQCtip4zoSRuIL854iVk;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private updateListAndFragment(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "newStatus"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 270
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhysicalSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mPhysicalSupportStatus:I

    goto/16 :goto_1

    .line 315
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatLegSupportLength "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportLength:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportLength:I

    if-eq p1, p2, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportLength:I

    goto/16 :goto_1

    .line 306
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatLegSupportHeight "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportHeight:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportHeight:I

    if-eq p1, p2, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLegSupportHeight:I

    goto/16 :goto_1

    .line 297
    :sswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatBackrestSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatBackrestSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatBackrestSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatBackrestSupportStatus:I

    goto/16 :goto_1

    .line 288
    :sswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatHeightSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatHeightSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatHeightSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatHeightSupportStatus:I

    goto/16 :goto_1

    .line 279
    :sswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSeatLengthSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLengthSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLengthSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatLengthSupportStatus:I

    goto/16 :goto_1

    .line 261
    :sswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMassageSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mMassageSupportStatus:I

    goto :goto_1

    .line 243
    :sswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHeatSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mHeatSupportStatus:I

    goto :goto_1

    .line 252
    :sswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVentilationSupportStatus "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationSupportStatus:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    iget p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationSupportStatus:I

    if-eq p1, p2, :cond_0

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->isNeedRefresh(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    iput p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mVentilationSupportStatus:I

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->buildFragmentList()V

    .line 327
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->switchFunction(I)V

    goto :goto_2

    :cond_1
    const-string p1, "the same status not update"

    .line 329
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10050100 -> :sswitch_8
        0x10050200 -> :sswitch_7
        0x10050a00 -> :sswitch_6
        0x2d020100 -> :sswitch_5
        0x2d020200 -> :sswitch_4
        0x2d030200 -> :sswitch_3
        0x2d080100 -> :sswitch_2
        0x2d080200 -> :sswitch_1
        0x2d500100 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public synthetic lambda$initView$0$GlySettingsSeatSecondDisplayActivity(Landroid/view/View;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedIndex"

    const/4 v2, 0x0

    .line 115
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    invoke-virtual {p0, v2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->moveTaskToBack(Z)Z

    .line 118
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$orderUpdate$2$GlySettingsSeatSecondDisplayActivity(II)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->updateListAndFragment(II)V

    return-void
.end method

.method public synthetic lambda$orderUpdate$3$GlySettingsSeatSecondDisplayActivity(II)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->orderUpdate(II)V

    return-void
.end method

.method public synthetic lambda$switchFunction$1$GlySettingsSeatSecondDisplayActivity(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 366
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , newConfig.uiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    .line 369
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mUiMode:I

    .line 370
    invoke-virtual {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->recreate()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 94
    invoke-virtual {p0, p1}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mUiMode:I

    const-string p1, "GlySettingsSeatSecondDisplayActivity"

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate  index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "selectedIndex"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->setSelectedIndex(I)V

    .line 99
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->finishActivityReceiver:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.geely.hvac.CLOSE_PSD_SEAT_SETTING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "isPSDSeatActivity"

    const-string v0, "true"

    .line 100
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->initView()V

    .line 102
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mCar:Lcom/geely/os/car/IGlyCar;

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mIGlyCarEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

    sget-object v1, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->PSD_REGISTER_PROPERTY:[I

    invoke-interface {p1, v0, v1}, Lcom/geely/os/car/IGlyCar;->registerSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;[I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 335
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "isPSDSeatActivity"

    const-string v1, "false"

    .line 336
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mCar:Lcom/geely/os/car/IGlyCar;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mIGlyCarEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

    invoke-interface {v0, v1}, Lcom/geely/os/car/IGlyCar;->unregisterSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 360
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const-string v0, "isPSDSeatActivity"

    const-string v1, "false"

    .line 361
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 354
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "isPSDSeatActivity"

    const-string v1, "true"

    .line 355
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedIndex"
        }
    .end annotation

    .line 198
    iput p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    return-void
.end method

.method public switchFunction(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFunction  index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    .line 186
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$qORrzhyQxRS9m5qoiC2jWmse_7w;

    invoke-direct {v0, p0}, Lcom/geely/hvac/psd/activity/-$$Lambda$GlySettingsSeatSecondDisplayActivity$qORrzhyQxRS9m5qoiC2jWmse_7w;-><init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 190
    :cond_1
    iput p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    .line 191
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090110

    iget-object v1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mFragments:Ljava/util/List;

    iget v2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 193
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatSecondTabAdapter:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    iget v0, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->selectedIndex:I

    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->setSelectedIndex(I)V

    .line 194
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->mSeatSecondTabAdapter:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    invoke-virtual {p1}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->notifyDataSetChanged()V

    return-void
.end method
