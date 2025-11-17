.class public final synthetic Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/ecarx/xui/adaptapi/FunctionStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ;->f$0:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ;->f$0:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    check-cast p1, Lcom/geely/os/lighting/IGlyLightingShowWatcher;

    invoke-static {v0, p1}, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->lambda$onWelcomeLightFileDownloadFunctionStatus$5(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V

    return-void
.end method
