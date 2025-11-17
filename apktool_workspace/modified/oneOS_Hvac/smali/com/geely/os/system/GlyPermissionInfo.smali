.class public Lcom/geely/os/system/GlyPermissionInfo;
.super Ljava/lang/Object;
.source "GlyPermissionInfo.java"


# instance fields
.field private mAppOpStr:Ljava/lang/String;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:I

.field private mDrawableId:I

.field private mPermissionGroup:Ljava/lang/String;

.field private mPermissionLabel:I

.field private mPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mPermissionGroup",
            "mPermissionList",
            "mAppOpStr",
            "mPermissionLabel",
            "mApps",
            "mDrawableId",
            "mDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppInfo;",
            ">;II)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionGroup:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionList:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/geely/os/system/GlyPermissionInfo;->mAppOpStr:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionLabel:I

    .line 34
    iput-object p5, p0, Lcom/geely/os/system/GlyPermissionInfo;->mApps:Ljava/util/List;

    .line 35
    iput p6, p0, Lcom/geely/os/system/GlyPermissionInfo;->mDrawableId:I

    .line 36
    iput p7, p0, Lcom/geely/os/system/GlyPermissionInfo;->mDescription:I

    return-void
.end method


# virtual methods
.method public getAppOpStr()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mAppOpStr:Ljava/lang/String;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mApps:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mDescription:I

    return v0
.end method

.method public getDrawableId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mDrawableId:I

    return v0
.end method

.method public getPermissionGroup()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionLabel()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionLabel:I

    return v0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mPermissionList:Ljava/util/List;

    return-object v0
.end method

.method public hasApp(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPkg"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/geely/os/system/GlyPermissionInfo;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/os/system/GlyAppInfo;

    .line 70
    invoke-virtual {v2}, Lcom/geely/os/system/GlyAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
