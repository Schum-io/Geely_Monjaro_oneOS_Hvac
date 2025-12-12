.class public final synthetic Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$1:Z

    iput p3, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$1:Z

    iget v2, p0, Lcom/geely/hvac/util/-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/geely/hvac/util/PhysicsCallbackHint;->lambda$showWindLevel$0(Landroid/content/Context;ZI)V

    return-void
.end method
