.class public final synthetic Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$1$lO37IrDPhmDT3OGVU4FVF8PNqgA;
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

    iput-boolean p1, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$1$lO37IrDPhmDT3OGVU4FVF8PNqgA;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$1$lO37IrDPhmDT3OGVU4FVF8PNqgA;->f$0:Z

    check-cast p1, Lcom/geely/os/tbox/IGlyCarLocatorCallback;

    invoke-static {v0, p1}, Lcom/geely/os/tbox/GlyTBoxImpl$1;->lambda$onCarLocatorEnabled$0(ZLcom/geely/os/tbox/IGlyCarLocatorCallback;)V

    return-void
.end method
