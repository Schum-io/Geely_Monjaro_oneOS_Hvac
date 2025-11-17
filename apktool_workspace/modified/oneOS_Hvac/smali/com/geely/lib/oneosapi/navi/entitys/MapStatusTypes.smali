.class public final enum Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;
.super Ljava/lang/Enum;
.source "MapStatusTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum APP_BACKGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum APP_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum APP_FOREGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum APP_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum APP_START_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ARRIVE_DESTINATION:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum AR_GUIDE_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum AR_GUIDE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum CAR_UP_2D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum CAR_UP_3D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum CRUISE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum CRUISE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ENTER_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum FULL_VIEW_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum FULL_VIEW_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum GUIDE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum GUIDE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum GUIDE_VEHICLE_YAW:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum LEAVE_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum MAP_2_DIM_STARTED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum MAP_2_DIM_STOPPED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum MUTE_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum NORTH_UP_2D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum PERMANENT_MUTE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum PSD_APP_BACKGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum PSD_APP_FOREGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum REROUTING:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ROUTE_FAILED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ROUTE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ROUTE_SUCCESS:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ROUTE_VIEW_IN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ROUTE_VIEW_OUT:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum SIMULATE_GUIDE_PAUSE:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum SIMULATE_GUIDE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum SIMULATE_GUIDE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum TEMPORARY_MUTE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum TMC_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum TMC_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum USER_EXIT_POI_SEARCH_LIST:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum WIDGET_FRIST_FRAME_DARWN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum WIDGET_FRIST_FRAME_DARWN_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ZOOM_IN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ZOOM_MAX:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ZOOM_MIN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

.field public static final enum ZOOM_OUT:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v1, "APP_BACKGROUND"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_BACKGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 5
    new-instance v1, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v4, "APP_FINISH"

    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-direct {v1, v4, v5, v6}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 9
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v7, "APP_FOREGROUND"

    const/4 v8, 0x2

    const/16 v9, 0xa

    invoke-direct {v4, v7, v8, v9}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_FOREGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 13
    new-instance v7, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v8, "APP_START"

    const/4 v10, 0x3

    const/4 v11, 0x7

    invoke-direct {v7, v8, v10, v11}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 17
    new-instance v8, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v10, "APP_START_FINISH"

    const/4 v12, 0x4

    const/16 v13, 0x8

    invoke-direct {v8, v10, v12, v13}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->APP_START_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 21
    new-instance v10, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v12, "AR_GUIDE_OFF"

    const/4 v14, 0x5

    const/16 v15, 0x79

    invoke-direct {v10, v12, v14, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->AR_GUIDE_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 25
    new-instance v12, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v14, "AR_GUIDE_ON"

    const/4 v15, 0x6

    const/16 v5, 0x78

    invoke-direct {v12, v14, v15, v5}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->AR_GUIDE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 29
    new-instance v5, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v14, "ARRIVE_DESTINATION"

    const/16 v15, 0x12

    invoke-direct {v5, v14, v11, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ARRIVE_DESTINATION:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 33
    new-instance v14, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v11, "CAR_UP_2D"

    const/16 v2, 0x1b

    invoke-direct {v14, v11, v13, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->CAR_UP_2D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 37
    new-instance v11, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v13, "CAR_UP_3D"

    const/16 v2, 0x19

    invoke-direct {v11, v13, v6, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->CAR_UP_3D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 41
    new-instance v13, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v6, "CRUISE_START"

    const/16 v2, 0x1c

    invoke-direct {v13, v6, v9, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->CRUISE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 45
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "CRUISE_STOP"

    const/16 v2, 0x1d

    invoke-direct {v6, v9, v3, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->CRUISE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 49
    new-instance v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v3, "ENTER_TUNNEL"

    const/16 v2, 0xc

    const/16 v15, 0x232a

    invoke-direct {v9, v3, v2, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ENTER_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 53
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v3, "FULL_VIEW_OFF"

    const/16 v15, 0xd

    move-object/from16 v16, v9

    const/16 v9, 0x7b

    invoke-direct {v2, v3, v15, v9}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->FULL_VIEW_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 57
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "FULL_VIEW_ON"

    const/16 v15, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x7a

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->FULL_VIEW_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 61
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "GUIDE_START"

    const/16 v15, 0xf

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->GUIDE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 65
    new-instance v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v15, "GUIDE_STOP"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v9, v15, v3, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->GUIDE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 69
    new-instance v15, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v3, "GUIDE_VEHICLE_YAW"

    move-object/from16 v20, v9

    const/16 v9, 0x232c

    invoke-direct {v15, v3, v2, v9}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->GUIDE_VEHICLE_YAW:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 73
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "LEAVE_TUNNEL"

    const/16 v2, 0x232b

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->LEAVE_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 77
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "MAP_2_DIM_STARTED"

    const/16 v15, 0x13

    move-object/from16 v22, v3

    const/16 v3, 0x74

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->MAP_2_DIM_STARTED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 81
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "MAP_2_DIM_STOPPED"

    const/16 v15, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x75

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->MAP_2_DIM_STOPPED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 85
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "MUTE_OFF"

    const/16 v15, 0x15

    move-object/from16 v24, v3

    const/16 v3, 0x29

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->MUTE_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 89
    new-instance v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v3, "NORTH_UP_2D"

    const/16 v15, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x1a

    invoke-direct {v9, v3, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->NORTH_UP_2D:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 93
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v3, "PERMANENT_MUTE_ON"

    const/16 v15, 0x17

    move-object/from16 v26, v9

    const/16 v9, 0x28

    invoke-direct {v2, v3, v15, v9}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->PERMANENT_MUTE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 97
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "PSD_APP_BACKGROUND"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0xc9

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->PSD_APP_BACKGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 101
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "PSD_APP_FOREGROUND"

    const/16 v15, 0xc8

    move-object/from16 v28, v3

    const/16 v3, 0x19

    invoke-direct {v2, v9, v3, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->PSD_APP_FOREGROUND:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 105
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "REROUTING"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x2329

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->REROUTING:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 109
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ROUTE_FAILED"

    move-object/from16 v30, v3

    const/16 v3, 0x1b

    const/16 v15, 0xf

    invoke-direct {v2, v9, v3, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ROUTE_FAILED:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 113
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ROUTE_START"

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    const/16 v15, 0xd

    invoke-direct {v3, v9, v2, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ROUTE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 117
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ROUTE_SUCCESS"

    move-object/from16 v32, v3

    const/16 v3, 0x1d

    const/16 v15, 0xe

    invoke-direct {v2, v9, v3, v15}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ROUTE_SUCCESS:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 121
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ROUTE_VIEW_IN"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/4 v2, 0x0

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ROUTE_VIEW_IN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 125
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ROUTE_VIEW_OUT"

    const/16 v15, 0x1f

    move-object/from16 v34, v3

    const/4 v3, 0x1

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ROUTE_VIEW_OUT:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 129
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "SIMULATE_GUIDE_PAUSE"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x22

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->SIMULATE_GUIDE_PAUSE:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 133
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "SIMULATE_GUIDE_START"

    const/16 v15, 0x21

    move-object/from16 v36, v3

    const/16 v3, 0x21

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->SIMULATE_GUIDE_START:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 137
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "SIMULATE_GUIDE_STOP"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x23

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->SIMULATE_GUIDE_STOP:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 141
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "TEMPORARY_MUTE_ON"

    const/16 v15, 0x23

    move-object/from16 v38, v3

    const/16 v3, 0x2a

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->TEMPORARY_MUTE_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 145
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "TMC_OFF"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x18

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->TMC_OFF:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 149
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "TMC_ON"

    const/16 v15, 0x25

    move-object/from16 v40, v3

    const/16 v3, 0x17

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->TMC_ON:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 153
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "WIDGET_FRIST_FRAME_DARWN"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x7c

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->WIDGET_FRIST_FRAME_DARWN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 157
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "WIDGET_FRIST_FRAME_DARWN_FINISH"

    const/16 v15, 0x27

    move-object/from16 v42, v3

    const/16 v3, 0x7d

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->WIDGET_FRIST_FRAME_DARWN_FINISH:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 161
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ZOOM_IN"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x14

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ZOOM_IN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 165
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ZOOM_MAX"

    move-object/from16 v44, v3

    const/16 v3, 0x15

    const/16 v15, 0x29

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ZOOM_MAX:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 169
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ZOOM_MIN"

    const/16 v15, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x16

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ZOOM_MIN:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 173
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "ZOOM_OUT"

    const/16 v15, 0x2b

    move-object/from16 v46, v3

    const/16 v3, 0x13

    invoke-direct {v2, v9, v15, v3}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->ZOOM_OUT:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    .line 177
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const-string v9, "USER_EXIT_POI_SEARCH_LIST"

    const/16 v15, 0x2c

    move-object/from16 v47, v2

    const/16 v2, 0xca

    invoke-direct {v3, v9, v15, v2}, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->USER_EXIT_POI_SEARCH_LIST:Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const/16 v2, 0x2d

    new-array v2, v2, [Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v5, v2, v0

    const/16 v0, 0x8

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v11, v2, v0

    const/16 v0, 0xa

    aput-object v13, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v3, v2, v0

    .line 178
    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

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

    .line 2
    iput p3, p0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;
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
    const-class v0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/entitys/MapStatusTypes;->code:I

    return v0
.end method
