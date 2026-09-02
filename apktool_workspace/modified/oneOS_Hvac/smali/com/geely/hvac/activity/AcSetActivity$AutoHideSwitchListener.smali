#############################################################################
# AcSetActivity$AutoHideSwitchListener - "disable auto hide" switch handler
#
# Persists the state of the extra row that the mod adds to the AC settings
# dialog (the gear icon on the main climate screen).
#
# The flag lives in the app's own SharedPreferences file (hvac_other_data,
# see SpUtils) - writer and reader are the same app in the same process, so
# no Settings.Global and no extra permission is involved.
#
# Read side: GlyMainActivity.onResume() -> setAutoHide(!flag).
#############################################################################

.class Lcom/geely/hvac/activity/AcSetActivity$AutoHideSwitchListener;
.super Ljava/lang/Object;
.source "AcSetActivity.java"

# interfaces
.implements Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/activity/AcSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoHideSwitchListener"
.end annotation


# static fields

# SharedPreferences key shared with GlyMainActivity
.field static final KEY_DISABLE_AUTO_HIDE:Ljava/lang/String; = "mod_disable_auto_hide"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods

# Called by Switch.setState() after the switch has already flipped itself,
# so there is nothing to do here but persist the new value.
.method public onSwitchChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    const-string v0, "mod_disable_auto_hide"

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/SpUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method
