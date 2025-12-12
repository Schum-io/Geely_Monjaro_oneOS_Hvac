.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$D7zsUvIAcX56ywA9z6DNOFOCe5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel$65;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel$65;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$D7zsUvIAcX56ywA9z6DNOFOCe5I;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$65;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$65$D7zsUvIAcX56ywA9z6DNOFOCe5I;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$65;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel$65;->lambda$addReduceFanLevelChanged$1$MainViewModel$65()V

    return-void
.end method
