.class public final enum Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;
.super Ljava/lang/Enum;
.source "NaviStateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum Navi2DCarUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum Navi2DNorthUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum Navi3DCarUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviCloseTMC:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviContinueDialogTip:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviFavoriteCompanyChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviFavoriteHomeChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviHandExitClose:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviHandExitOpen:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviInit:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviInitSuccess:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviModleDay:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviModleNight:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviOnDestory:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviOnStart:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviOnStop:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviOpenTMC:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviParkCardDismiss:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviPauseSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviPlanFail:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviPlanFailTip:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviPlanSuccess:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviSearchAddress:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviSearchAround:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviSendToCar:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviSimpleFavoriteChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStart:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStartBroadcast:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStartPlan:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStartSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStartTTS:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStop:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStopBroadcast:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStopSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviStopTTS:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviZoomDown:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviZoomDownMin:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviZoomUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum NaviZoomUpMax:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

.field public static final enum Unknow:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->Unknow:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v3, "NaviInit"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviInit:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v5, "NaviInitSuccess"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviInitSuccess:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 4
    new-instance v5, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v7, "NaviOnDestory"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviOnDestory:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 5
    new-instance v7, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v9, "NaviOnStart"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviOnStart:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 6
    new-instance v9, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v11, "NaviOnStop"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviOnStop:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 7
    new-instance v11, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v13, "NaviStartPlan"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStartPlan:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 8
    new-instance v13, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v15, "NaviPlanSuccess"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviPlanSuccess:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 9
    new-instance v15, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v14, "NaviPlanFail"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviPlanFail:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 10
    new-instance v14, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v12, "NaviStart"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStart:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 11
    new-instance v12, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v10, "NaviStop"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStop:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 12
    new-instance v10, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v8, "NaviStartSimulate"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStartSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 13
    new-instance v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviPauseSimulate"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviPauseSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 14
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v4, "NaviStopSimulate"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStopSimulate:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 15
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v2, "NaviStartTTS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStartTTS:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 16
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v8, "NaviStopTTS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStopTTS:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 17
    new-instance v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviZoomUp"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviZoomUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 18
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v4, "NaviZoomDown"

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviZoomDown:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 19
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v2, "Navi2DCarUp"

    move-object/from16 v21, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->Navi2DCarUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 20
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v8, "Navi2DNorthUp"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    invoke-direct {v2, v8, v4, v6}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->Navi2DNorthUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 21
    new-instance v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "Navi3DCarUp"

    move-object/from16 v23, v2

    const/16 v2, 0x14

    invoke-direct {v8, v6, v2, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->Navi3DCarUp:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 22
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v4, "NaviOpenTMC"

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviOpenTMC:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 23
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v2, "NaviCloseTMC"

    move-object/from16 v25, v6

    const/16 v6, 0x16

    invoke-direct {v4, v2, v6, v8}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviCloseTMC:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 24
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviZoomUpMax"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x16

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviZoomUpMax:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 25
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviZoomDownMin"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x17

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviZoomDownMin:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 26
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviStartBroadcast"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x18

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStartBroadcast:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 27
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviStopBroadcast"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x19

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviStopBroadcast:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 28
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviFavoriteHomeChange"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1a

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviFavoriteHomeChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 29
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviFavoriteCompanyChange"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1b

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviFavoriteCompanyChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 30
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviSearchAround"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1c

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviSearchAround:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 31
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviSearchAddress"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1d

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviSearchAddress:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 32
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviSendToCar"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1e

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviSendToCar:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 33
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviParkCardDismiss"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x1f

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviParkCardDismiss:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 34
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviContinueDialogTip"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x20

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviContinueDialogTip:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 35
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviPlanFailTip"

    const/16 v8, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x21

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviPlanFailTip:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 36
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviHandExitOpen"

    const/16 v8, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x22

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviHandExitOpen:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 37
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviHandExitClose"

    const/16 v8, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x23

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviHandExitClose:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 38
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviSimpleFavoriteChange"

    const/16 v8, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x24

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviSimpleFavoriteChange:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 39
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviModleDay"

    const/16 v8, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x25

    invoke-direct {v4, v6, v8, v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviModleDay:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    .line 40
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const-string v6, "NaviModleNight"

    const/16 v8, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x26

    invoke-direct {v2, v6, v8, v4}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->NaviModleNight:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const/16 v4, 0x28

    new-array v4, v4, [Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v38, v4, v0

    const/16 v0, 0x23

    aput-object v39, v4, v0

    const/16 v0, 0x24

    aput-object v40, v4, v0

    const/16 v0, 0x25

    aput-object v41, v4, v0

    const/16 v0, 0x26

    aput-object v42, v4, v0

    const/16 v0, 0x27

    aput-object v2, v4, v0

    .line 41
    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->code:I

    .line 3
    iput p3, p0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->code:I

    return-void
.end method

.method public static toCameraType(I)Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->values()[Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x28

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->getCode()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->Unknow:Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/NaviStateType;->code:I

    return v0
.end method
