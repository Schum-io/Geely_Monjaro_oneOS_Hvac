.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$63$-AXvtpv9kVQ7eYYdb3peabmshYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel$63;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel$63;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$63$-AXvtpv9kVQ7eYYdb3peabmshYc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$63;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$63$-AXvtpv9kVQ7eYYdb3peabmshYc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$63;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel$63;->lambda$onChanged$0$MainViewModel$63()V

    return-void
.end method
