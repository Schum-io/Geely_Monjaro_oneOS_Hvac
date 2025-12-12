.class Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse$Data;
.super Ljava/lang/Object;
.source "GetDriveSuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private drivingSuggestion:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrivingSuggestion()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse$Data;->drivingSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public setDrivingSuggestion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drivingSuggestion"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveSuggestionResponse$Data;->drivingSuggestion:Ljava/lang/String;

    return-void
.end method
