.class public Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FragranceWidgetProvider.java"


# static fields
.field private static final ACTION_CLICK:Ljava/lang/String; = "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_CLICK"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_UPDATE"

.field private static final CLICK_ID_SWITCH:I = 0x0

.field private static final CLICK_ID_TYPE1:I = 0x1

.field private static final CLICK_ID_TYPE2:I = 0x2

.field private static final CLICK_ID_TYPE3:I = 0x3

.field private static final CLICK_KEY_ID:Ljava/lang/String; = "CLICK_KEY_ID"

.field private static final NO_NORMAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FragranceWidgetProvider"

.field private static final UPDATE_LEVEL_KEY:Ljava/lang/String; = "UPDATE_LEVEL_KEY"

.field private static final UPDATE_STATE_KEY:Ljava/lang/String; = "UPDATE_STATE_KEY"

.field private static final UPDATE_TYPE_KEY:Ljava/lang/String; = "UPDATE_TYPE_KEY"


# instance fields
.field private final mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 46
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 47
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 49
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    iput-object v0, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-void
.end method

.method private getRemoteViewsByFragranceState(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceState()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v3

    .line 242
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSlotIndex()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    .line 243
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceLevel()Landroidx/databinding/ObservableInt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    .line 244
    iget-object v0, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceTypes()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteViewsByFragranceState, isOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",types:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    .line 251
    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getRemoteViewsByFragranceState(Landroid/content/Context;ZII[Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private getRemoteViewsByFragranceState(Landroid/content/Context;ZII[Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "isOn",
            "slot",
            "level",
            "types"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    .line 128
    invoke-static/range {p3 .. p3}, Lcom/geely/hvac/utils/FragranceParser;->slotIndexToIndex(I)I

    move-result v4

    .line 129
    invoke-static/range {p4 .. p4}, Lcom/geely/hvac/utils/FragranceParser;->levelToIndex(I)I

    move-result v5

    .line 130
    sget-object v6, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRemoteViewsByFragranceState, isOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",slot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",typeIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",levelIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getLayoutId()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getBgOnId()I

    move-result v7

    goto :goto_0

    :cond_0
    const v7, 0x7f07020b

    :goto_0
    const v8, 0x7f09007a

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-eqz v2, :cond_1

    const v7, 0x7f0501ff

    goto :goto_1

    :cond_1
    const v7, 0x7f0501fe

    .line 141
    :goto_1
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    const v8, 0x7f090319

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 144
    invoke-direct {v0, v1, v2, v5}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->parseLevelToString(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 147
    invoke-direct {v0, v2, v5}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->parseLevelToImg(ZI)I

    move-result v5

    const v7, 0x7f090116

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f090341

    const v9, 0x7f0d008d

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    const v9, 0x7f0d008e

    .line 149
    :cond_2
    invoke-virtual {v6, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f050204

    const v9, 0x7f050205

    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v9

    .line 153
    :goto_2
    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const v11, 0x7f090344

    invoke-virtual {v6, v11, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_4

    .line 157
    array-length v13, v3

    if-lt v13, v10, :cond_4

    .line 158
    aget-object v13, v3, v12

    invoke-virtual {v6, v11, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    const v11, 0x7f090342

    const v13, 0x7f0d008f

    if-eqz v2, :cond_5

    if-ne v4, v10, :cond_5

    const v13, 0x7f0d0090

    .line 161
    :cond_5
    invoke-virtual {v6, v11, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-eqz v2, :cond_6

    if-ne v4, v10, :cond_6

    move v11, v5

    goto :goto_3

    :cond_6
    move v11, v9

    .line 165
    :goto_3
    invoke-virtual {v1, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    const v13, 0x7f090345

    invoke-virtual {v6, v13, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/4 v11, 0x2

    if-eqz v3, :cond_7

    .line 169
    array-length v14, v3

    if-lt v14, v11, :cond_7

    .line 170
    aget-object v14, v3, v10

    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_7
    const v13, 0x7f090343

    const v14, 0x7f0d0091

    if-eqz v2, :cond_8

    if-ne v4, v11, :cond_8

    const v14, 0x7f0d0092

    .line 173
    :cond_8
    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-eqz v2, :cond_9

    if-ne v4, v11, :cond_9

    goto :goto_4

    :cond_9
    move v5, v9

    .line 177
    :goto_4
    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const v4, 0x7f090346

    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/4 v2, 0x3

    if-eqz v3, :cond_a

    .line 181
    array-length v5, v3

    if-lt v5, v2, :cond_a

    .line 182
    aget-object v5, v3, v11

    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    :cond_a
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_CLICK"

    .line 186
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "CLICK_KEY_ID"

    .line 187
    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v13, 0x8000000

    .line 188
    invoke-static {v1, v12, v4, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v12, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v14, v1, v12, v4, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 190
    invoke-virtual {v6, v7, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 192
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v14

    invoke-direct {v4, v1, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-static {v1, v11, v4, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v11, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v14, v1, v11, v4, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    const v4, 0x7f090347

    .line 197
    invoke-virtual {v6, v4, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 199
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-virtual {v14, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v14, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    invoke-static {v1, v2, v14, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v2, v14, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-static {v15, v1, v2, v14, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    const v14, 0x7f090348

    .line 204
    invoke-virtual {v6, v14, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 206
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v15, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v15, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x4

    .line 209
    invoke-static {v1, v2, v15, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v2, v15, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v7, v1, v2, v15, v13}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    const v2, 0x7f090349

    .line 211
    invoke-virtual {v6, v2, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0901ff

    const/16 v15, 0x8

    if-eqz v3, :cond_c

    .line 214
    array-length v13, v3

    if-lt v13, v11, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v12

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v10, v3, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v3, v3, v11

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "\u672a\u5b89\u88c5\u9999\u6c1b\u672a\u5b89\u88c5\u9999\u6c1b\u672a\u5b89\u88c5\u9999\u6c1b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    .line 224
    :cond_b
    invoke-virtual {v6, v4, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    invoke-virtual {v6, v14, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    invoke-virtual {v6, v2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    invoke-virtual {v6, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    .line 215
    :cond_c
    :goto_5
    invoke-virtual {v6, v4, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    invoke-virtual {v6, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    invoke-virtual {v6, v2, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "kx11a2"

    const-string v3, "fs11a2"

    .line 218
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 219
    invoke-virtual {v6, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_d
    const-string/jumbo v2, "\u672a\u5b89\u88c5\u9999\u6c1b"

    const v3, 0x7f090319

    .line 221
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0d001c

    const v3, 0x7f090116

    .line 222
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 230
    :goto_6
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x4

    .line 232
    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x5

    const/high16 v4, 0x8000000

    .line 233
    invoke-static {v1, v3, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v5, v1, v3, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 235
    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v6
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

    const v0, 0x7f0d0018

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    return v0

    :cond_0
    const p1, 0x7f0d001b

    return p1

    :cond_1
    const p1, 0x7f0d001a

    return p1

    :cond_2
    const p1, 0x7f0d0019

    return p1

    :cond_3
    return v0
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

    const v0, 0x7f100058

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f100057

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p2, 0x7f100056

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f100055

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private performClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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

    const-string p1, "CLICK_KEY_ID"

    const/4 v0, -0x1

    .line 262
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 263
    iget-object p2, p0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceTypes()Landroidx/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 264
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 265
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 267
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 268
    sget-object v1, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performClick, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    const v3, 0x7f1000af

    if-eq p1, v2, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 308
    :cond_0
    new-instance p1, Landroid/view/View;

    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->buyFragranceClick(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "performClick, CLICK_ID_TYPE3"

    .line 299
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/geely/hvac/GlyAcApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p1

    .line 302
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showBottomLongTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_2
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getOnFragranceSlotIndexChangeListener()Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    move-result-object p1

    invoke-static {v4}, Lcom/geely/hvac/utils/FragranceParser;->indexToSlotIndex(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;->onTypeChange(I)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "performClick, CLICK_ID_TYPE2"

    .line 290
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/geely/hvac/GlyAcApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 292
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p1

    .line 293
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showBottomLongTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_4
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getOnFragranceSlotIndexChangeListener()Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    move-result-object p1

    invoke-static {v2}, Lcom/geely/hvac/utils/FragranceParser;->indexToSlotIndex(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;->onTypeChange(I)V

    goto :goto_0

    :cond_5
    const-string p1, "performClick, CLICK_ID_TYPE1"

    .line 281
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/geely/hvac/GlyAcApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 283
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p1

    .line 284
    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showBottomLongTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_6
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getOnFragranceSlotIndexChangeListener()Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    move-result-object p1

    invoke-static {v1}, Lcom/geely/hvac/utils/FragranceParser;->indexToSlotIndex(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;->onTypeChange(I)V

    goto :goto_0

    :cond_7
    const-string p1, "performClick, CLICK_ID_SWITCH"

    .line 274
    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/geely/hvac/util/ClickUtils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 278
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->fragranceLevelClick(Landroid/view/View;)V

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

    .line 255
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    .line 256
    invoke-virtual {p0}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getProviderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getRemoteViewsByFragranceState(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 255
    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static updateWidget(Landroid/content/Context;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "isOn",
            "type"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateWidget"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_UPDATE"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UPDATE_TYPE_KEY"

    .line 55
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "UPDATE_STATE_KEY"

    .line 56
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider1;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getBgOnId()I
    .locals 1

    const v0, 0x7f0d0089

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c007a

    return v0
.end method

.method protected getProviderClass()Ljava/lang/Class;
    .locals 1

    .line 116
    const-class v0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;

    return-object v0
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

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 318
    sget-object p1, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

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

    .line 67
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    sget-object v0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

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

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->performClick(Landroid/content/Context;Landroid/content/Intent;)V

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

    .line 323
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 324
    sget-object v0, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->TAG:Ljava/lang/String;

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 325
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 326
    aget v1, p3, v0

    invoke-direct {p0, p1}, Lcom/geely/hvac/launcherwidget/FragranceWidgetProvider;->getRemoteViewsByFragranceState(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
