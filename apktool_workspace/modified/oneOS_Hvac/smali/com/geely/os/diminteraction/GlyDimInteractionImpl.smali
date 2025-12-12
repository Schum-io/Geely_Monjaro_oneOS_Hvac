.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyDimInteraction;


# instance fields
.field private iContactsInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

.field private iContactsInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

.field private iDimMenuInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

.field iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

.field iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

.field private iMediaInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

.field iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

.field private iNaviInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

.field iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

.field private iPhoneCallInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

.field iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

.field private iVendorInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

.field iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

.field private iVrInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

.field private iVrInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

.field private mCtInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

.field private mDimMenuInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMainInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNavInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mVendorInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mVrInteractionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mVrInteractionCallbacks:Landroid/util/ArraySet;

    .line 37
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVrInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mCtInteractionCallbacks:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iContactsInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    .line 218
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimMenuInteractionCallbacks:Landroid/util/ArraySet;

    .line 220
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

    .line 372
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMediaInteractionCallbacks:Landroid/util/ArraySet;

    .line 374
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;

    .line 784
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mNavInteractionCallbacks:Landroid/util/ArraySet;

    .line 786
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$9;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

    .line 1328
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mPhoneInteractionCallbacks:Landroid/util/ArraySet;

    .line 1330
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

    .line 1595
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mVendorInteractionCallbacks:Landroid/util/ArraySet;

    .line 1597
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$13;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction$IVendorInteractionCallback;

    .line 1664
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMainInteractionCallbacks:Landroid/util/ArraySet;

    .line 1666
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$15;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$15;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    iput-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

    .line 64
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getVrInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVrInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    .line 67
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getContactsInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iContactsInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    .line 68
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getDimMenuInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    .line 69
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getMediaInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    .line 70
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getNaviInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNaviInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    .line 71
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getVendorInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    .line 72
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getPhoneCallInteraction()Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mVrInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mCtInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mNavInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNaviInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mPhoneInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mVendorInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMainInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iContactsInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iContactsInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimMenuInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVrInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    return-object p0
.end method

.method static synthetic access$700(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVrInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMediaInteractionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/diminteraction/IGlyDimInteraction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 79
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getContactsInteraction()Lcom/geely/os/diminteraction/IGlyContactsInteraction;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iContactsInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimMenuInteraction()Lcom/geely/os/diminteraction/IGlyDimMenuInteraction;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaInteraction()Lcom/geely/os/diminteraction/IGlyMediaInteraction;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iMediaInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction;

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$8;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNaviInteraction()Lcom/geely/os/diminteraction/IGlyNaviInteraction;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNaviInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    if-eqz v0, :cond_0

    .line 835
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneCallInteraction()Lcom/geely/os/diminteraction/IGlyPhoneCallInteraction;
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    if-eqz v0, :cond_0

    .line 1395
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowPresentationOption()I
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1583
    :cond_0
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getShowPresentationOption()I

    move-result v0

    return v0
.end method

.method public getSupportedRankingType()I
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1591
    :cond_0
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->getSupportedRankingType()I

    move-result v0

    return v0
.end method

.method public getVendorInteraction()Lcom/geely/os/diminteraction/IGlyVendorInteraction;
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVendorInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVendorInteraction;

    if-eqz v0, :cond_0

    .line 1621
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$14;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVrInteraction()Lcom/geely/os/diminteraction/IGlyVrInteraction;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iVrInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;

    invoke-direct {v0, p0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerInteractionCallback(Lcom/geely/os/diminteraction/IGlyInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMainInteractionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1677
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->registerInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public setPresentationToDimSwitch(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "app",
            "pkg",
            "cls",
            "on"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->setPresentationToDimSwitch(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public unregisterInteractionCallback(Lcom/geely/os/diminteraction/IGlyInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1683
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mMainInteractionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1685
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->unregisterInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction$IInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public updateAvgFuleRanking(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "rankingInfo"
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->mDimInteraction:Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/DimInteraction;->updateAvgFuleRanking(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
