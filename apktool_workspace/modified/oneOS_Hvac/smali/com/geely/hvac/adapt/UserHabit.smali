.class public Lcom/geely/hvac/adapt/UserHabit;
.super Ljava/lang/Object;
.source "UserHabit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentHabitIndex:I

.field private mHabitChangeListener:Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/adapt/UserHabit;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/geely/hvac/adapt/UserHabit;->mCurrentHabitIndex:I

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appCtx"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getUserProfileManager()Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/geely/hvac/adapt/UserHabit$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/adapt/UserHabit$1;-><init>(Lcom/geely/hvac/adapt/UserHabit;)V

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile;->registerUserProfileObserver(Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserProfileObserver;)Z

    return-void
.end method

.method public setHabitChangeListener(Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/hvac/adapt/UserHabit;->mHabitChangeListener:Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;

    return-void
.end method
