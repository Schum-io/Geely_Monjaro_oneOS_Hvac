.class public Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;
.super Lcom/geely/lib/oneosapi/IServiceManagerCallback$Stub;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceManagerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;


# direct methods
.method private constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/IServiceManagerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;Lcom/geely/lib/oneosapi/ServiceConnectionManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;-><init>(Lcom/geely/lib/oneosapi/ServiceConnectionManager;)V

    return-void
.end method


# virtual methods
.method public onServiceChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/ServiceConnectionManager$ServiceManagerCallback;->this$0:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-static {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->access$900(Lcom/geely/lib/oneosapi/ServiceConnectionManager;I)V

    return-void
.end method
