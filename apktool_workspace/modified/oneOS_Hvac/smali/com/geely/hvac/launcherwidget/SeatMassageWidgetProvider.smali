.class public Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SeatMassageWidgetProvider.java"


# static fields
.field private static final ACTION_CLICK:Ljava/lang/String; = "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_CLICK"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_UPDATE"

.field private static final CLICK_ID_MASSAGE_TYPE:I = 0x1

.field private static final CLICK_ID_SWITCH:I = 0x0

.field private static final CLICK_KEY_ID:Ljava/lang/String; = "CLICK_KEY_ID"

.field private static final TAG:Ljava/lang/String; = "SeatMassageWidgetProvider"

.field private static final UPDATE_STATE_KEY:Ljava/lang/String; = "UPDATE_STATE_KEY"

.field private static final UPDATE_ZONE_KEY:Ljava/lang/String; = "UPDATE_ZONE_KEY"


# instance fields
.field private final mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 37
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 38
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 40
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-void
.end method

.method private getRemoteViewsByMassageState(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getRemoteViewsByMassageState(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private getRemoteViewsByMassageState(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "isOn"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevel(I)Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    .line 129
    sget-object v2, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemoteViewsByMassageState, isOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",massageType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",levelIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getLayoutId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->parseLevelToString(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0901b6

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0, p2, v0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->parseLevelToImg(ZI)I

    move-result p2

    const v0, 0x7f0901b8

    invoke-virtual {v2, v0, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 142
    invoke-static {v1}, Lcom/geely/hvac/util/MassageUtil;->formatType(I)Ljava/lang/String;

    move-result-object p2

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    invoke-static {v1}, Lcom/geely/hvac/util/MassageUtil;->getTypeDrawableId(I)I

    move-result p2

    const v1, 0x7f0901bb

    invoke-virtual {v2, v1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 147
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_CLICK"

    .line 148
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CLICK_KEY_ID"

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    .line 150
    invoke-static {p1, v4, p2, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p1, v4, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, p1, v4, p2, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 152
    invoke-virtual {v2, v0, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 154
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-static {p1, v0, p2, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p1, v0, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1, p1, v0, p2, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    const p1, 0x7f0901ba

    .line 159
    invoke-virtual {v2, p1, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v2
.end method

.method private parseLevelToImg(ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "level"
        }
    .end annotation

    const v0, 0x7f0d005c

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    const p1, 0x7f0d005f

    return p1

    :pswitch_1
    const p1, 0x7f0d005e

    return p1

    :pswitch_2
    const p1, 0x7f0d005d

    return p1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10050701
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseLevelToString(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "state",
            "level"
        }
    .end annotation

    const v0, 0x7f10006f

    if-eqz p2, :cond_0

    packed-switch p3, :pswitch_data_0

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p2, 0x7f10006d

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p2, 0x7f10006c

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p2, 0x7f10006b

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10050701
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string v0, "CLICK_KEY_ID"

    const/4 v1, -0x1

    .line 177
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 178
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 179
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 181
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 182
    sget-object v1, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performClick, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setMassageDetailZone(I)V

    .line 190
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 191
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "performClick, CLICK_ID_SWITCH"

    .line 185
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->massageLevelClick(I)V

    :goto_0
    return-void
.end method

.method private performUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    .line 171
    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getRemoteViewsByMassageState(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 170
    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static updateWidget(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "zone"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "UPDATE_ZONE_KEY"

    const-string v2, "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_UPDATE"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateWidget SEAT_ROW_1_RIGHT"

    invoke-static {v0, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider1;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateWidget SEAT_ROW_1_LEFT"

    invoke-static {v0, v3}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c0073

    return v0
.end method

.method protected getProviderClass()Ljava/lang/Class;
    .locals 1

    .line 119
    const-class v0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;

    return-object v0
.end method

.method protected getZone()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appWidgetManager",
            "appWidgetId",
            "newOptions"
        }
    .end annotation

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 202
    sget-object p1, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    const-string p2, "onAppWidgetOptionsChanged"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    sget-object v0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "UPDATE_ZONE_KEY"

    .line 76
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getZone()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->performClick(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appWidgetManager",
            "appWidgetIds"
        }
    .end annotation

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 208
    sget-object v0, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->TAG:Ljava/lang/String;

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 209
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 210
    aget v1, p3, v0

    invoke-direct {p0, p1}, Lcom/geely/hvac/launcherwidget/SeatMassageWidgetProvider;->getRemoteViewsByMassageState(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
