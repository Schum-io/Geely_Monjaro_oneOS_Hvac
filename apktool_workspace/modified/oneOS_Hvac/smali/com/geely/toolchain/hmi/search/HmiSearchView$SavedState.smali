.class Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;
.super Landroid/view/AbsSavedState;
.source "HmiSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/search/HmiSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private cReator:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field creator:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field focus:Z

.field text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "loader"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    .line 314
    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    .line 329
    new-instance v0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->cReator:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 321
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->creator:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->text:Ljava/lang/String;

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p2, v0

    :cond_1
    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    .line 329
    new-instance p1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;

    invoke-direct {p1, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState$1;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;)V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->cReator:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 345
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    iget-object p2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    .line 348
    iget-boolean p2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 350
    :cond_0
    iget-boolean p2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
