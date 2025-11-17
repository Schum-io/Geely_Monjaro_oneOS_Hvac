.class public Lcom/geely/toolchain/hmi/view/HmiToastUtils;
.super Ljava/lang/Object;
.source "HmiToastUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiToastUtils"

.field private static final TOAST_MIN_TIME:J = 0x7d0L

.field private static mCurrentTime:J

.field private static mToastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBottomLongTime(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showBottomLongTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showBottomLongTime(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x51

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, v0, v1, v2, v0}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showBottomLongTimeNoDelay(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 238
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showBottomLongTimeNoDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 260
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showBottomLongTimeNoDelay(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x51

    const/4 v2, 0x0

    .line 216
    invoke-static {p0, v0, v1, v2, v2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showBottomShortTime(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showBottomShortTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 143
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showBottomShortTime(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x51

    const/4 v2, 0x1

    .line 100
    invoke-static {p0, v0, v1, v0, v2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showBottomShortTimeNoDelay(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 227
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showBottomShortTimeNoDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 249
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showBottomShortTimeNoDelay(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x51

    .line 206
    invoke-static {p0, v0, v1, v0, v0}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method private static showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "duration",
            "gravity",
            "isTop",
            "isTimeOut"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_bottom_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_Bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    if-eqz p4, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_Top:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_elevation:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    move v7, v0

    move v6, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p5

    .line 291
    invoke-static/range {v2 .. v8}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravityLocation(Landroid/content/Context;Ljava/lang/String;IIFFZ)V

    return-void
.end method

.method private static showGravityLocation(Landroid/content/Context;Ljava/lang/String;IIFFZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "duration",
            "gravity",
            "yOffset",
            "elevation",
            "isTimeOut"
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mCurrentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p6, v0, v2

    if-gez p6, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    sget-object p6, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mToastRef:Ljava/lang/ref/WeakReference;

    if-eqz p6, :cond_2

    .line 361
    invoke-virtual {p6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/widget/Toast;

    if-eqz p6, :cond_2

    .line 364
    :try_start_0
    invoke-virtual {p6}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p6

    .line 366
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->TAG:Ljava/lang/String;

    const-string v1, "cancel toast fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p6}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    .line 372
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_toast:I

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    .line 373
    sget v0, Lcom/geely/toolchain/hmi/R$id;->toast_tv:I

    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    sget v1, Lcom/geely/toolchain/hmi/R$id;->view_root_fl:I

    invoke-virtual {p6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 375
    sget v2, Lcom/geely/toolchain/hmi/R$id;->shadowView:I

    invoke-virtual {p6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    .line 376
    invoke-virtual {v2, p5}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->setElevation(F)V

    const/4 p5, 0x0

    .line 377
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p5, 0x8

    .line 378
    invoke-virtual {v1, p5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p5, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mToastRef:Ljava/lang/ref/WeakReference;

    .line 382
    invoke-virtual {p1, p6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p5, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_left:I

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    float-to-int p4, p4

    .line 384
    invoke-virtual {p1, p3, p0, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 386
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mCurrentTime:J

    return-void

    .line 357
    :cond_3
    :goto_1
    sget-object p0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->TAG:Ljava/lang/String;

    const-string p1, "context ==null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static showGravityLocation(Landroid/view/View;IIFFZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "duration",
            "gravity",
            "yOffset",
            "elevation",
            "isTimeOut"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mCurrentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p5, v0, v2

    if-gez p5, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 318
    sget-object p0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "view ==null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_1
    sget-object p5, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mToastRef:Ljava/lang/ref/WeakReference;

    if-eqz p5, :cond_2

    .line 322
    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/widget/Toast;

    if-eqz p5, :cond_2

    .line 325
    :try_start_0
    invoke-virtual {p5}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    .line 327
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->TAG:Ljava/lang/String;

    const-string v1, "cancel toast fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    .line 333
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_toast:I

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    .line 334
    sget v0, Lcom/geely/toolchain/hmi/R$id;->toast_tv:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    sget v1, Lcom/geely/toolchain/hmi/R$id;->view_root_fl:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 336
    sget v2, Lcom/geely/toolchain/hmi/R$id;->shadowView:I

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    .line 337
    invoke-virtual {v2, p4}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->setElevation(F)V

    const/16 p4, 0x8

    .line 338
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p4, 0x0

    .line 339
    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance p4, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mToastRef:Ljava/lang/ref/WeakReference;

    .line 343
    invoke-virtual {p4, p5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p5, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_left:I

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    float-to-int p3, p3

    .line 345
    invoke-virtual {p4, p2, p0, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 346
    invoke-virtual {p4, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 347
    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->mCurrentTime:J

    return-void
.end method

.method public static showTopLongTime(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showTopLongTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showTopLongTime(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x31

    .line 68
    invoke-static {p0, v0, v1, v0, v0}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showTopLongTimeNoDelay(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showTopLongTimeNoDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 281
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showTopLongTimeNoDelay(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x31

    const/4 v2, 0x0

    .line 174
    invoke-static {p0, v0, v1, v0, v2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showTopShortTime(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showTopShortTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showTopShortTime(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x31

    const/4 v2, 0x1

    .line 58
    invoke-static {p0, v0, v1, v2, v2}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method public static showTopShortTimeNoDelay(Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 196
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static showTopShortTimeNoDelay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 270
    invoke-static/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravity(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static showTopShortTimeNoDelay(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x31

    const/4 v2, 0x1

    .line 164
    invoke-static {p0, v0, v1, v2, v0}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V

    return-void
.end method

.method private static showView(Landroid/content/Context;IIIZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "duration",
            "gravity",
            "isTop",
            "isTimeOut"
        }
    .end annotation

    .line 306
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 307
    invoke-static {p0, p2, p3, p4, p5}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showView(Landroid/view/View;IIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notfindResid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static showView(Landroid/view/View;IIZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "duration",
            "gravity",
            "isTop",
            "isTimeOut"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_bottom_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_Bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    if-eqz p3, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_margin_Top:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_toast_elevation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    move v6, v0

    move v5, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p4

    .line 301
    invoke-static/range {v2 .. v7}, Lcom/geely/toolchain/hmi/view/HmiToastUtils;->showGravityLocation(Landroid/view/View;IIFFZ)V

    return-void
.end method
