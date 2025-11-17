.class public final synthetic Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0;->f$0:Z

    check-cast p1, Lcom/geely/os/trackball/IGlyTrackBallListener;

    invoke-static {v0, p1}, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->lambda$onConnectStateChange$5(ZLcom/geely/os/trackball/IGlyTrackBallListener;)V

    return-void
.end method
