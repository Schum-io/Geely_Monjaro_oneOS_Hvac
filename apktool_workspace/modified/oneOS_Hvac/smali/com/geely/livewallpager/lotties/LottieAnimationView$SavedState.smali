.class Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animationName:Ljava/lang/String;

.field animationResId:I

.field imageAssetsFolder:Ljava/lang/String;

.field isAnimating:Z

.field progress:F

.field repeatCount:I

.field repeatMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1133
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState$1;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState$1;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1113
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->progress:F

    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->isAnimating:Z

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 1118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatMode:I

    .line 1119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/geely/livewallpager/lotties/LottieAnimationView$1;)V
    .locals 0

    .line 1099
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    .line 1109
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 1124
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1125
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1126
    iget p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1127
    iget-boolean p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->isAnimating:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1129
    iget p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget p2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
