.class public Lcom/geely/hvac/activity/AcSetActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "AcSetActivity.java"


# annotations
# MemberClasses annotation declares the inner AutoHideSwitchListener class
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/activity/AcSetActivity$AutoHideSwitchListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 6

    .line 28
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AcSetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutAcSetBinding;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AcSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    #########################################################################
    # MOD: third row - "disable auto hide"
    #
    # Built in code rather than in layout_ac_set.xml on purpose: that layout
    # is data bound (binding_1 / binding_2) and its generated
    # LayoutAcSetBindingImpl carries dirty-flag bookkeeping, so an extra bound
    # row there would mean patching generated code. Creating the AcSetItem
    # here needs no new resource id and no layout change at all.
    #########################################################################

    # item = new AcSetItem(this)
    new-instance v1, Lcom/geely/hvac/component/AcSetItem;

    invoke-direct {v1, p0}, Lcom/geely/hvac/component/AcSetItem;-><init>(Landroid/content/Context;)V

    # title / desc are literals: the mod adds no string resources
    const-string v2, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u0437\u0430\u043a\u0440\u044b\u0442\u0438\u0435"

    const-string v3, "\u041e\u043a\u043d\u043e \u043a\u043b\u0438\u043c\u0430\u0442\u0430 \u043d\u0435 \u0431\u0443\u0434\u0435\u0442 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u043e"

    # current state, default false = stock behaviour
    const-string v4, "mod_disable_auto_hide"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/geely/hvac/utils/SpUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Lcom/geely/hvac/activity/AcSetActivity$AutoHideSwitchListener;

    invoke-direct {v5}, Lcom/geely/hvac/activity/AcSetActivity$AutoHideSwitchListener;-><init>()V

    # AcSetItem.bind(item, title, desc, state, listener)
    invoke-static {v1, v2, v3, v4, v5}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Ljava/lang/String;Ljava/lang/String;ZLcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    # AcSetItem.bind(item, true) - explicit enabled colors, as the stock rows get
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Z)V

    # size and spacing are copied from the stock comfort_close row, so the new
    # row follows the layout instead of hardcoding dp values here
    iget-object v2, v0, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, v0, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->contentWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #########################################################################
    # MOD end
    #########################################################################

    .line 30
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AcSetActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/AcSetActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAcSetActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string p1, "kx11a2"

    .line 21
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AcSetActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
