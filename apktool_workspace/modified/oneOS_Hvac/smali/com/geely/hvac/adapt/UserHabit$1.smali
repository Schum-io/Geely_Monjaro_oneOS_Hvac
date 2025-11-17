.class Lcom/geely/hvac/adapt/UserHabit$1;
.super Ljava/lang/Object;
.source "UserHabit.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/car/userprofile/IUserProfile$IUserProfileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/adapt/UserHabit;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/adapt/UserHabit;


# direct methods
.method constructor <init>(Lcom/geely/hvac/adapt/UserHabit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/geely/hvac/adapt/UserHabit$1;->this$0:Lcom/geely/hvac/adapt/UserHabit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserProfileActionError(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onUserProfileActionStatus(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onUserProfileAdded(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method
