.class public final enum Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;
.super Ljava/lang/Enum;
.source "TurnInfoIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum ENTER_THE_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum FORWARD:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum INTO_THE_LEFT_ROUNDABOUT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum INTO_THE_ROUNDABOUT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum KEEP_DIRECTION_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum LEFT_FRONT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum LEFT_REAR:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum OUT_OF_THE_ISLAND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum OUT_OF_THE_LEFT_ISLAND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum REACH_THE_DESTINATION:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum REACH_THE_SERVICE_AREA:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum REACH_THE_TOLL_STATION:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum RIGHT_FRONT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum RIGHT_REAR:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum THE_WAYPOINT_IS_REACHED:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum TURN_LEFT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum TURN_LEFT_TO_TURN_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum TURN_RIGHT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum TURN_RIGHT_TO_TURN_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

.field public static final enum VEHICLE_SELF:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v1, "VEHICLE_SELF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->VEHICLE_SELF:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 2
    new-instance v1, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v3, "TURN_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->TURN_LEFT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 3
    new-instance v3, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v5, "TURN_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->TURN_RIGHT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 4
    new-instance v5, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v7, "LEFT_FRONT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->LEFT_FRONT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 5
    new-instance v7, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v9, "RIGHT_FRONT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->RIGHT_FRONT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 6
    new-instance v9, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v11, "LEFT_REAR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->LEFT_REAR:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 7
    new-instance v11, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v13, "RIGHT_REAR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->RIGHT_REAR:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 8
    new-instance v13, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v15, "TURN_LEFT_TO_TURN_AROUND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->TURN_LEFT_TO_TURN_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 9
    new-instance v15, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v14, "FORWARD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->FORWARD:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 10
    new-instance v14, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v12, "THE_WAYPOINT_IS_REACHED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->THE_WAYPOINT_IS_REACHED:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 11
    new-instance v12, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v10, "INTO_THE_ROUNDABOUT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->INTO_THE_ROUNDABOUT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 12
    new-instance v10, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v8, "OUT_OF_THE_ISLAND"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->OUT_OF_THE_ISLAND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 13
    new-instance v8, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v6, "REACH_THE_SERVICE_AREA"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->REACH_THE_SERVICE_AREA:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 14
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v4, "REACH_THE_TOLL_STATION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->REACH_THE_TOLL_STATION:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 15
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v2, "REACH_THE_DESTINATION"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->REACH_THE_DESTINATION:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 16
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v6, "ENTER_THE_TUNNEL"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->ENTER_THE_TUNNEL:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 17
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v4, "INTO_THE_LEFT_ROUNDABOUT"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->INTO_THE_LEFT_ROUNDABOUT:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 18
    new-instance v4, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v2, "OUT_OF_THE_LEFT_ISLAND"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->OUT_OF_THE_LEFT_ISLAND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 19
    new-instance v2, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v6, "TURN_RIGHT_TO_TURN_AROUND"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->TURN_RIGHT_TO_TURN_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    .line 20
    new-instance v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const-string v4, "KEEP_DIRECTION_AROUND"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->KEEP_DIRECTION_AROUND:Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    const/16 v16, 0x0

    aput-object v0, v4, v16

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

    aput-object v8, v4, v0

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

    aput-object v6, v4, v2

    .line 21
    sput-object v4, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;
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
    const-class v0, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    return-object p0
.end method

.method public static values()[Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->$VALUES:[Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    invoke-virtual {v0}, [Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geely/lib/oneosapi/navi/entitys/TurnInfoIcon;

    return-object v0
.end method
