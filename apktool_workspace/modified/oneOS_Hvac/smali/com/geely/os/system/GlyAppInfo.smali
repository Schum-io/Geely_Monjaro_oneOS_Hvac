.class public Lcom/geely/os/system/GlyAppInfo;
.super Ljava/lang/Object;
.source "GlyAppInfo.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSystemApp:Z

.field private label:Ljava/lang/CharSequence;

.field private packageName:Ljava/lang/String;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppPermInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isSystemApp",
            "label",
            "packageName",
            "icon"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/geely/os/system/GlyAppInfo;->isSystemApp:Z

    .line 26
    iput-object p2, p0, Lcom/geely/os/system/GlyAppInfo;->label:Ljava/lang/CharSequence;

    .line 27
    iput-object p3, p0, Lcom/geely/os/system/GlyAppInfo;->packageName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/geely/os/system/GlyAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/geely/os/system/GlyAppInfo;->permissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPermission(Lcom/geely/os/system/GlyAppPermInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPermInfo"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/geely/os/system/GlyAppInfo;
    .locals 5

    .line 83
    new-instance v0, Lcom/geely/os/system/GlyAppInfo;

    iget-boolean v1, p0, Lcom/geely/os/system/GlyAppInfo;->isSystemApp:Z

    iget-object v2, p0, Lcom/geely/os/system/GlyAppInfo;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/geely/os/system/GlyAppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/geely/os/system/GlyAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/geely/os/system/GlyAppInfo;-><init>(ZLjava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/system/GlyAppPermInfo;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->permissions:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/geely/os/system/GlyAppInfo;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/os/system/GlyAppPermInfo;

    .line 71
    invoke-virtual {v2}, Lcom/geely/os/system/GlyAppPermInfo;->getPerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public isSystemApp()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/geely/os/system/GlyAppInfo;->isSystemApp:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/geely/os/system/GlyAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/geely/os/system/GlyAppInfo;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/geely/os/system/GlyAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemApp"
        }
    .end annotation

    .line 37
    iput-boolean p1, p0, Lcom/geely/os/system/GlyAppInfo;->isSystemApp:Z

    return-void
.end method
