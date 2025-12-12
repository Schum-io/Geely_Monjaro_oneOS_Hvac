.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$vzY7bV9F4jZa_woyT9syniWslKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$vzY7bV9F4jZa_woyT9syniWslKY;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$vzY7bV9F4jZa_woyT9syniWslKY;->f$0:Ljava/util/Map;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$dataModeClick$34(Ljava/util/Map;)V

    return-void
.end method
