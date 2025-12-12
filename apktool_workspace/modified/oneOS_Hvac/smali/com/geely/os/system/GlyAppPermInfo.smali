.class public Lcom/geely/os/system/GlyAppPermInfo;
.super Ljava/lang/Object;
.source "GlyAppPermInfo.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mAppPackageName:Ljava/lang/String;

.field private mGrantMode:I

.field private mPerm:Ljava/lang/String;

.field private mPermIcon:Landroid/graphics/drawable/Drawable;

.field private mPermLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mAppPackageName",
            "mAppLabel",
            "mAppIcon"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppPackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppLabel:Ljava/lang/CharSequence;

    .line 35
    iput-object p3, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mAppPackageName",
            "mPerm",
            "mPermLabel",
            "mPermIcon"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppPackageName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPerm:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermLabel:Ljava/lang/CharSequence;

    .line 28
    iput-object p4, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantMode()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mGrantMode:I

    return v0
.end method

.method public getPerm()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPerm:Ljava/lang/String;

    return-object v0
.end method

.method public getPermIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPermLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAppIcon"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAppLabel"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAppPackageName"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public setGrantMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGrantMode"
        }
    .end annotation

    .line 91
    iput p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mGrantMode:I

    return-void
.end method

.method public setPerm(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPerm"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPerm:Ljava/lang/String;

    return-void
.end method

.method public setPermIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPermIcon"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPermLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPermLabel"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/os/system/GlyAppPermInfo;->mPermLabel:Ljava/lang/CharSequence;

    return-void
.end method
