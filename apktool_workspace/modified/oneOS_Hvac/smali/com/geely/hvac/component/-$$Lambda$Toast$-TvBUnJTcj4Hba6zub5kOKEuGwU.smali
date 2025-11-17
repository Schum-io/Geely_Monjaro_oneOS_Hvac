.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/Toast;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/Toast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU;->f$0:Lcom/geely/hvac/component/Toast;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU;->f$0:Lcom/geely/hvac/component/Toast;

    invoke-virtual {v0}, Lcom/geely/hvac/component/Toast;->lambda$show$2$Toast()V

    return-void
.end method
