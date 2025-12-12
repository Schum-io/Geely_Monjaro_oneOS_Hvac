.class public abstract Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutSeatSetDetailBinding.java"


# instance fields
.field public final carMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final close:Landroidx/appcompat/widget/AppCompatImageView;

.field public final cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final left1:Lcom/geely/hvac/component/ViewWithBackground;

.field public final left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final left1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final leftSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

.field public final lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

.field public final lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final lumbarWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final right1:Lcom/geely/hvac/component/ViewWithBackground;

.field public final right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final right1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final rightSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final seatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "carMode",
            "close",
            "cushionDown",
            "cushionUp",
            "hmiImagesLegSupport",
            "hmiImagesLumbarSupport",
            "hmiImagesView",
            "hmiImagesViewAssistant",
            "left1",
            "left1BackrestLeft",
            "left1BackrestLine",
            "left1BackrestRight",
            "left1HeightDown",
            "left1HeightUp",
            "left1LengthLeft",
            "left1LengthRight",
            "leftSeatBg",
            "legSupportDown",
            "legSupportLeft",
            "legSupportRight",
            "legSupportUp",
            "lottieImgView",
            "lottieImgViewAssistant",
            "lumbarDown",
            "lumbarLeft",
            "lumbarRight",
            "lumbarUp",
            "lumbarWrap",
            "right1",
            "right1BackrestDown",
            "right1BackrestLine",
            "right1BackrestUp",
            "right1HeightDown",
            "right1HeightUp",
            "right1LengthLeft",
            "right1LengthRight",
            "rightSeatBg",
            "seatCushionIndicator",
            "seatWrap"
        }
    .end annotation

    move-object v0, p0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 168
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->carMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p5

    .line 169
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p6

    .line 170
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p7

    .line 171
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p8

    .line 172
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p9

    .line 173
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p10

    .line 174
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p11

    .line 175
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p12

    .line 176
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p13

    .line 177
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p14

    .line 178
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p15

    .line 179
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p16

    .line 180
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p17

    .line 181
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p18

    .line 182
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p19

    .line 183
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p20

    .line 184
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->leftSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p21

    .line 185
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p22

    .line 186
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p23

    .line 187
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p24

    .line 188
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p25

    .line 189
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    move-object/from16 v1, p26

    .line 190
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    move-object/from16 v1, p27

    .line 191
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p28

    .line 192
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p29

    .line 193
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p30

    .line 194
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p31

    .line 195
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lumbarWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p32

    .line 196
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p33

    .line 197
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p34

    .line 198
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p35

    .line 199
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p36

    .line 200
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p37

    .line 201
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p38

    .line 202
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p39

    .line 203
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v1, p40

    .line 204
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->rightSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p41

    .line 205
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p42

    .line 206
    iput-object v1, v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 263
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0091

    .line 275
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 245
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 226
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0091

    .line 240
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0091

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    return-object p0
.end method


# virtual methods
.method public getMainModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method public getModel()Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->mModel:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    return-object v0
.end method

.method public abstract setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainModel"
        }
    .end annotation
.end method

.method public abstract setModel(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation
.end method
