.class public Lcom/geely/lib/oneosapi/navi/model/base/NaviResultCode;
.super Ljava/lang/Object;
.source "NaviResultCode.java"


# static fields
.field public static final RESULT_ALREADY_RECOVERY_MUTE:I = 0x2737

.field public static final RESULT_ALREADY_SET_MUTE:I = 0x2736

.field public static final RESULT_API_NO_SERVICE:I = -0x1

.field public static final RESULT_API_SUCCESS:I = 0x0

.field public static final RESULT_API_UNKNOW:I = -0x2

.field public static final RESULT_AUTO_NO_LAUNCH:I = 0x272b

.field public static final RESULT_AVOID_LINE_RESTRICTION_FAIL:I = 0x273d

.field public static final RESULT_BACKGROUND_NOT_SUPPORT:I = 0x272d

.field public static final RESULT_CALLBACK_ERROR:I = 0x272e

.field public static final RESULT_CITY_NO_SUPPORT_TRAFFIC:I = 0x2725

.field public static final RESULT_DELETE_WAYPOINT_FAIL:I = 0x273f

.field public static final RESULT_DES_POINT_UNSUPPORT:I = 0x271e

.field public static final RESULT_ENGINER_INIT_FAIL:I = 0x2729

.field public static final RESULT_EXECUTE_CANCLE:I = 0x2732

.field public static final RESULT_FAIL:I = 0x2730

.field public static final RESULT_FAILED_BY_GPS_LOCATION:I = 0x2738

.field public static final RESULT_FAILED_BY_REFRESH_ROUTE:I = 0x273a

.field public static final RESULT_FAILED_BY_REQUEST_FREQUENTLY:I = 0x2739

.field public static final RESULT_LISTENER_NULL:I = 0x272f

.field public static final RESULT_MAP_DISCONNECT:I = 0x186a2

.field public static final RESULT_MAP_EXCEPTION:I = 0x186a3

.field public static final RESULT_MAP_NOT_INSTALLED:I = 0x3e9

.field private static final RESULT_MESSAGE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_MIDDLE_POINT_OUT_OF_RANGE:I = 0x271c

.field public static final RESULT_MIDDLE_POINT_REPEAT:I = 0x271b

.field public static final RESULT_MIDDLE_POINT_UNSUPPORT:I = 0x271f

.field public static final RESULT_NEED_USER_CONFIRM:I = 0x270f

.field public static final RESULT_NETWORK_ERROR:I = 0x2719

.field public static final RESULT_NO_ALTERNATIVE_ROUTE:I = 0x2764

.field public static final RESULT_NO_BRIDGE_STATUS:I = 0x2744

.field public static final RESULT_NO_FAVORITE:I = 0x274e

.field public static final RESULT_NO_FOUND:I = 0x2727

.field public static final RESULT_NO_HISTORY_POI:I = 0x3eb

.field public static final RESULT_NO_LAUNCH_UNSUPPORT:I = 0x2722

.field public static final RESULT_NO_NETWORK_NO_DATA:I = 0x2723

.field public static final RESULT_NO_OFFLINE_DATA:I = 0x2712

.field public static final RESULT_NO_PARKING_DATA:I = 0x273b

.field public static final RESULT_NO_PLAN_ROUTE:I = 0x2714

.field public static final RESULT_NO_ROADS_DISTINGUISH:I = 0x2741

.field public static final RESULT_NO_SET_COMPANY:I = 0x2716

.field public static final RESULT_NO_SET_HOME:I = 0x2715

.field public static final RESULT_NO_SET_HOME_AND_COMPANY:I = 0x274d

.field public static final RESULT_OK:I = 0x2710

.field public static final RESULT_ON_NAVI_ERROR:I = 0x2756

.field public static final RESULT_OP_PERMISSION_DENY:I = 0x3e8

.field public static final RESULT_OP_TIMEOUT:I = 0x3ea

.field public static final RESULT_PARAM_ERROR:I = 0x2711

.field public static final RESULT_ROAD_NO_TRAFFIC_DATA:I = 0x2726

.field public static final RESULT_ROUTE_FAIL:I = 0x2720

.field public static final RESULT_SAME_START_END_POINTS:I = 0x2746

.field public static final RESULT_SCALE_IS_LARGEST:I = 0x2717

.field public static final RESULT_SCALE_IS_SMALLEST:I = 0x2718

.field public static final RESULT_SERVICE_RELEASE:I = 0x274f

.field public static final RESULT_SET_COMPANY_SUCCESS:I = 0x2734

.field public static final RESULT_SET_FAVORITE_SUCCESS:I = 0x2735

.field public static final RESULT_SET_HOME_SUCCESS:I = 0x2733

.field public static final RESULT_SET_STRATEGY_FAIL:I = 0x273e

.field public static final RESULT_START_POINT_UNSUPPORT:I = 0x271d

.field public static final RESULT_SWITCH_BRIDGE_STATUS_FAIL:I = 0x2745

.field public static final RESULT_SWITCH_BRIDGE_STATUS_NO_NAVI_FAIL:I = 0x2743

.field public static final RESULT_SWITCH_ROADS_FAIL:I = 0x2742

.field public static final RESULT_SWITCH_ROADS_NO_NAVI_FAIL:I = 0x2740

.field public static final RESULT_UNAUTHORIZED:I = 0x2713

.field public static final RESULT_UNINIT:I = 0x272a

.field public static final RESULT_UNKNOWN_ERROR:I = 0x2724

.field public static final RESULT_UNSUPPORT:I = 0x272c

.field public static final RESULT_UNSUPPORT_VIEW:I = 0x271a

.field public static final RESULT_WITHOUT_PERMISSION:I = 0x2728


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviResultCode;->RESULT_MESSAGE:Landroid/util/SparseArray;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u670d\u52a1\u672a\u8fde\u63a5"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, -0x2

    const-string/jumbo v2, "\u672a\u77e5\u9519\u8bef"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    const-string/jumbo v3, "\u6210\u529f"

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e9

    const-string/jumbo v3, "\u5730\u56fe\u672a\u5b89\u88c5"

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x270f

    const-string/jumbo v3, "\u9700\u8981\u7528\u6237\u786e\u8ba4"

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e8

    const-string/jumbo v3, "\u65e0\u6743\u8fdb\u884c\u6b64\u64cd\u4f5c"

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ea

    const-string/jumbo v3, "\u8bf7\u6c42\u8d85\u65f6"

    .line 11
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3eb

    const-string/jumbo v3, "\u6ca1\u6709\u5386\u53f2\u76ee\u7684\u5730\u6570\u636e"

    .line 12
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2710

    const-string/jumbo v3, "\u8bf7\u6c42\u6210\u529f"

    .line 13
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2711

    const-string/jumbo v3, "\u975e\u6cd5\u53c2\u6570"

    .line 14
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2712

    const-string/jumbo v3, "\u7f3a\u5c11\u79bb\u7ebf\u5730\u56fe\u6570\u636e"

    .line 15
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2713

    const-string/jumbo v3, "\u5730\u56fe\u8f6f\u4ef6\u672a\u6388\u6743"

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2714

    const-string/jumbo v3, "\u672a\u89c4\u5212\u8def\u7ebf"

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2715

    const-string/jumbo v3, "\u672a\u8bbe\u7f6e\u5bb6"

    .line 18
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2716

    const-string/jumbo v3, "\u672a\u8bbe\u7f6e\u516c\u53f8"

    .line 19
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2717

    const-string/jumbo v3, "\u5f53\u524d\u5df2\u653e\u5927\u5230\u6700\u5927"

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2718

    const-string/jumbo v3, "\u5f53\u524d\u5df2\u7f29\u5c0f\u5230\u6700\u5c0f"

    .line 21
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2719

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7545"

    .line 22
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271a

    const-string/jumbo v3, "\u4e0d\u652f\u6301\u7684\u89c6\u56fe"

    .line 23
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271b

    const-string/jumbo v3, "\u9014\u7ecf\u70b9\u91cd\u590d"

    .line 24
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271c

    const-string/jumbo v3, "\u9014\u7ecf\u70b9\u5df2\u6ee1"

    .line 25
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271d

    const-string/jumbo v3, "\u8d77\u70b9\u9519\u8bef"

    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271e

    const-string/jumbo v3, "\u7ec8\u70b9\u9519\u8bef"

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271f

    const-string/jumbo v3, "\u9014\u7ecf\u70b9\u9519\u8bef"

    .line 28
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2720

    const-string/jumbo v3, "\u8def\u7ebf\u89c4\u5212\u5931\u8d25"

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2722

    const-string/jumbo v3, "\u5bfc\u822a\u672a\u542f\u52a8"

    .line 30
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2723

    const-string/jumbo v3, "\u65e0\u7f51\u65e0\u6570\u636e"

    .line 31
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2724

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2725

    const-string/jumbo v2, "\u57ce\u5e02\u4e0d\u652f\u6301\u8def\u51b5"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2726

    const-string/jumbo v2, "\u9053\u8def\u4e0d\u652f\u6301\u8def\u51b5"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2727

    const-string/jumbo v2, "\u672a\u627e\u5230\u7ed3\u679c"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2728

    const-string/jumbo v2, "\u65e0\u6743\u9650\u8bbf\u95ee"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2729

    const-string/jumbo v2, "\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272a

    const-string v2, "SDK\u521d\u59cb\u5316\u9519\u8bef"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272b

    const-string v2, "Auto\u672a\u542f\u52a8"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272c

    const-string/jumbo v2, "\u529f\u80fd\u4e0d\u652f\u6301"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272d

    const-string/jumbo v2, "\u540e\u53f0\u4e0b\u4e0d\u652f\u6301"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272e

    const-string/jumbo v2, "\u56de\u8c03\u5f02\u5e38"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x272f

    const-string/jumbo v2, "\u76d1\u542c\u4e3a\u7a7a"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2730

    const-string/jumbo v2, "\u8bf7\u6c42\u5931\u8d25"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2732

    const-string/jumbo v2, "\u6267\u884c\u52a8\u4f5c\u53d6\u6d88"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2733

    const-string/jumbo v2, "\u8bbe\u7f6e\u5bb6\u6210\u529f"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2734

    const-string/jumbo v2, "\u8bbe\u7f6e\u516c\u53f8\u6210\u529f"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2735

    const-string/jumbo v2, "\u8bbe\u7f6e\u666e\u901a\u6536\u85cf\u70b9\u6210\u529f"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2736

    const-string/jumbo v2, "\u6267\u884c\u5931\u8d25,\u5f53\u524d\u5df2\u9759\u97f3"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2737

    const-string/jumbo v2, "\u6267\u884c\u5931\u8d25,\u5f53\u524d\u5df2\u6062\u590d\u97f3\u91cf"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2738

    const-string v2, "GPS\u5b9a\u4f4d\u5931\u8d25"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2739

    const-string/jumbo v2, "\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x273a

    const-string/jumbo v2, "\u8def\u7ebf\u66f4\u65b0\u5931\u8d25"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x273b

    const-string/jumbo v2, "\u6ca1\u6709\u505c\u8f66\u573a\u6570\u636e"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x273d

    const-string/jumbo v2, "\u5f00\u542f\u907f\u5f00\u9650\u884c\u5931\u8d25\u672a\u8bbe\u7f6e\u8f66\u724c\u53f7"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x273e

    const-string/jumbo v2, "\u91cd\u590d\u504f\u597d\u8bbe\u7f6e"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x273f

    const-string/jumbo v2, "\u5b58\u5728\u81ea\u52a8\u6dfb\u52a0\u7684\u9014\u7ecf\u70b9\u65e0\u6cd5\u5220\u9664"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2740

    const-string/jumbo v2, "\u5f53\u524d\u4e0d\u5728\u5bfc\u822a\u4e2d\u65e0\u6cd5\u5207\u6362\u4e3b\u8f85\u8def"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2741

    const-string/jumbo v2, "\u6ca1\u6709\u4e3b\u8f85\u8def\u533a\u5206"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2742

    const-string/jumbo v2, "\u4e3b\u8f85\u8def\u5207\u6362\u5931\u8d25"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2743

    const-string/jumbo v2, "\u5f53\u524d\u4e0d\u5728\u5bfc\u822a\u4e2d\u65e0\u6cd5\u5207\u6362\u6865\u4e0a\u6865\u4e0b"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2744

    const-string/jumbo v2, "\u6ca1\u6709\u6865\u4e0a\u6865\u4e0b"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2745

    const-string/jumbo v2, "\u6865\u4e0a\u6865\u4e0b\u5207\u6362\u5931\u8d25"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2746

    const-string/jumbo v2, "\u8d77\u7ec8\u70b9\u76f8\u540c"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x274d

    const-string/jumbo v2, "\u672a\u8bbe\u7f6e\u5bb6\u548c\u516c\u53f8"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x274e

    const-string/jumbo v2, "\u6682\u65e0\u6536\u85cf\u5939\u5185\u5bb9"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x274f

    const-string/jumbo v2, "\u65ad\u5f00\u5bfc\u822a\u670d\u52a1"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2756

    const-string/jumbo v2, "\u5bfc\u822a\u4e2d\u65e0\u6cd5\u8fdb\u884c\u64cd\u4f5c"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2764

    const-string/jumbo v2, "\u5f53\u524d\u6ca1\u6709\u5907\u9009\u8def\u7ebf"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviResultCode;->RESULT_MESSAGE:Landroid/util/SparseArray;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
