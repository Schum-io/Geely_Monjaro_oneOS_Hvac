.class public abstract Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PagerItemAirconditionBinding.java"


# instance fields
.field public final a1Row2Power:Lcom/geely/hvac/component/BoolStateTextView;

.field public final a2BehindLock:Lcom/geely/hvac/component/BoolStateImageView;

.field public final a2BehindLockBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final a2BehindPowerBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final a2Row3PowerBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final a3GcleanBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final a3GleanIcon:Lcom/geely/hvac/component/BoolStateImageView;

.field public final ac:Lcom/geely/hvac/component/BoolStateImageView;

.field public final acAutoRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final acMax:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final autoAcRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final behindAuto:Lcom/geely/hvac/component/BoolStateImageView;

.field public final behindAutoBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final behindBelowRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final behindDefrostIcon:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final behindLeftTemp:Lcom/geely/hvac/component/Temperature;

.field public final behindLock:Lcom/geely/hvac/component/BoolStateImageView;

.field public final behindLockBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final behindMainBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final behindPowerBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final behindRightTemp:Lcom/geely/hvac/component/Temperature;

.field public final behindWindBlowFace:Lcom/geely/hvac/component/BoolStateImageView;

.field public final behindWindBlowLeg:Lcom/geely/hvac/component/BoolStateImageView;

.field public final blowAnimateBehindFace:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field public final blowAnimateBehindLeg:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field public final blowAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field public final blowAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field public final blowAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

.field public final blowGcleanAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final blowGcleanAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final blowGcleanAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final blowIonsAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final blowIonsAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final blowIonsAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateIons;

.field public final cycleEco:Lcom/geely/hvac/component/BoolStateImageView;

.field public final cycleIcon:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final defrostRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final fanLevelRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final fanLevelWrap:Lcom/geely/hvac/component/FanLevel;

.field public final frontAuto:Lcom/geely/hvac/component/BoolStateImageView;

.field public final frontBelowRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final frontDefrost:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final frontLeftTemp:Lcom/geely/hvac/component/Temperature;

.field public final frontMainBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final frontRightTemp:Lcom/geely/hvac/component/Temperature;

.field public final frontWindBlowFace:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final frontWindBlowLeg:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final frontWindBlowWindow:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final gleanIcon:Lcom/geely/hvac/component/BoolStateImageView;

.field public final ionsIcon:Lcom/geely/hvac/component/BoolStateImageView;

.field public final leftTempGradient:Landroid/view/View;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final powerGlobal:Lcom/geely/hvac/component/BoolStateImageView;

.field public final powerRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final rightTempGradient:Landroid/view/View;

.field public final setIcon:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final setRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final switcher:Lcom/geely/hvac/component/AcFrontBehindSwitch;

.field public final sync:Lcom/geely/hvac/component/TempSync;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/BoolStateTextView;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/Temperature;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/Temperature;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BlowWindAnimateIons;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/FanLevel;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/Temperature;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/Temperature;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/BoolStateImageView;Landroid/view/View;Lcom/geely/hvac/component/BoolStateImageView;Lcom/geely/hvac/component/ViewWithBackground;Landroid/view/View;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/AcFrontBehindSwitch;Lcom/geely/hvac/component/TempSync;)V
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
            "a1Row2Power",
            "a2BehindLock",
            "a2BehindLockBg",
            "a2BehindPowerBg",
            "a2Row3PowerBg",
            "a3GcleanBg",
            "a3GleanIcon",
            "ac",
            "acAutoRegionBg",
            "acMax",
            "autoAcRegionBg",
            "behindAuto",
            "behindAutoBg",
            "behindBelowRegionBg",
            "behindDefrostIcon",
            "behindLeftTemp",
            "behindLock",
            "behindLockBg",
            "behindMainBg",
            "behindPowerBg",
            "behindRightTemp",
            "behindWindBlowFace",
            "behindWindBlowLeg",
            "blowAnimateBehindFace",
            "blowAnimateBehindLeg",
            "blowAnimateFace",
            "blowAnimateLeg",
            "blowAnimateWindow",
            "blowGcleanAnimateFace",
            "blowGcleanAnimateLeg",
            "blowGcleanAnimateWindow",
            "blowIonsAnimateFace",
            "blowIonsAnimateLeg",
            "blowIonsAnimateWindow",
            "cycleEco",
            "cycleIcon",
            "defrostRegionBg",
            "fanLevelRegionBg",
            "fanLevelWrap",
            "frontAuto",
            "frontBelowRegionBg",
            "frontDefrost",
            "frontLeftTemp",
            "frontMainBg",
            "frontRightTemp",
            "frontWindBlowFace",
            "frontWindBlowLeg",
            "frontWindBlowWindow",
            "gleanIcon",
            "ionsIcon",
            "leftTempGradient",
            "powerGlobal",
            "powerRegionBg",
            "rightTempGradient",
            "setIcon",
            "setRegionBg",
            "switcher",
            "sync"
        }
    .end annotation

    move-object v0, p0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 234
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a1Row2Power:Lcom/geely/hvac/component/BoolStateTextView;

    move-object v1, p5

    .line 235
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a2BehindLock:Lcom/geely/hvac/component/BoolStateImageView;

    move-object v1, p6

    .line 236
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a2BehindLockBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p7

    .line 237
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a2BehindPowerBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p8

    .line 238
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a2Row3PowerBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p9

    .line 239
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a3GcleanBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p10

    .line 240
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->a3GleanIcon:Lcom/geely/hvac/component/BoolStateImageView;

    move-object v1, p11

    .line 241
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->ac:Lcom/geely/hvac/component/BoolStateImageView;

    move-object v1, p12

    .line 242
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->acAutoRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p13

    .line 243
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->acMax:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p14

    .line 244
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->autoAcRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p15

    .line 245
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindAuto:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p16

    .line 246
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindAutoBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p17

    .line 247
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindBelowRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p18

    .line 248
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindDefrostIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p19

    .line 249
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindLeftTemp:Lcom/geely/hvac/component/Temperature;

    move-object/from16 v1, p20

    .line 250
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindLock:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p21

    .line 251
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindLockBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p22

    .line 252
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindMainBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p23

    .line 253
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindPowerBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p24

    .line 254
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindRightTemp:Lcom/geely/hvac/component/Temperature;

    move-object/from16 v1, p25

    .line 255
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindWindBlowFace:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p26

    .line 256
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindWindBlowLeg:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p27

    .line 257
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowAnimateBehindFace:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    move-object/from16 v1, p28

    .line 258
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowAnimateBehindLeg:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    move-object/from16 v1, p29

    .line 259
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    move-object/from16 v1, p30

    .line 260
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    move-object/from16 v1, p31

    .line 261
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateEco2Normal;

    move-object/from16 v1, p32

    .line 262
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowGcleanAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p33

    .line 263
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowGcleanAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p34

    .line 264
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowGcleanAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p35

    .line 265
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowIonsAnimateFace:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p36

    .line 266
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowIonsAnimateLeg:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p37

    .line 267
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->blowIonsAnimateWindow:Lcom/geely/hvac/component/BlowWindAnimateIons;

    move-object/from16 v1, p38

    .line 268
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->cycleEco:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p39

    .line 269
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->cycleIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p40

    .line 270
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->defrostRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p41

    .line 271
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->fanLevelRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p42

    .line 272
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->fanLevelWrap:Lcom/geely/hvac/component/FanLevel;

    move-object/from16 v1, p43

    .line 273
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontAuto:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p44

    .line 274
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontBelowRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p45

    .line 275
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontDefrost:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p46

    .line 276
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontLeftTemp:Lcom/geely/hvac/component/Temperature;

    move-object/from16 v1, p47

    .line 277
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontMainBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p48

    .line 278
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontRightTemp:Lcom/geely/hvac/component/Temperature;

    move-object/from16 v1, p49

    .line 279
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontWindBlowFace:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p50

    .line 280
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontWindBlowLeg:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p51

    .line 281
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontWindBlowWindow:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p52

    .line 282
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->gleanIcon:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p53

    .line 283
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->ionsIcon:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p54

    .line 284
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->leftTempGradient:Landroid/view/View;

    move-object/from16 v1, p55

    .line 285
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->powerGlobal:Lcom/geely/hvac/component/BoolStateImageView;

    move-object/from16 v1, p56

    .line 286
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->powerRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p57

    .line 287
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->rightTempGradient:Landroid/view/View;

    move-object/from16 v1, p58

    .line 288
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->setIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object/from16 v1, p59

    .line 289
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->setRegionBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p60

    .line 290
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->switcher:Lcom/geely/hvac/component/AcFrontBehindSwitch;

    move-object/from16 v1, p61

    .line 291
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->sync:Lcom/geely/hvac/component/TempSync;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 341
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
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

    const v0, 0x7f0c00cb

    .line 353
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 323
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
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

    .line 304
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
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

    const v0, 0x7f0c00cb

    .line 318
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;
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

    const v0, 0x7f0c00cb

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 337
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method public abstract setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation
.end method
