.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw;
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

    iput-object p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw;->f$0:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw;->f$0:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    check-cast p1, Lcom/geely/os/audio/IGlyEqualizerStateListener;

    invoke-static {v0, p1}, Lcom/geely/os/audio/GlyAudioImpl$1;->lambda$onEqualizerStateChanged$0(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/audio/IGlyEqualizerStateListener;)V

    return-void
.end method
