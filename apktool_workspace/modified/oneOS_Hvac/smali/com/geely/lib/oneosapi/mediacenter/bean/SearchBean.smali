.class public Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;
.super Ljava/lang/Object;
.source "SearchBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Text;,
        Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;,
        Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;
    }
.end annotation


# static fields
.field public static final DOMAIN_VALUE:Ljava/lang/String; = "music"

.field public static final INTENT_VALUE:Ljava/lang/String; = "play"

.field public static final QUERY_VALUE:Ljava/lang/String; = "\u6211\u60f3\u542c\u6b4c"

.field public static final QUERY_VALUE_FM:Ljava/lang/String; = "\u6211\u60f3\u542c\u7535\u53f0"

.field public static final QUERY_VALUE_MUSIC:Ljava/lang/String; = "\u6211\u60f3\u542c\u97f3\u4e50"


# instance fields
.field public semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;-><init>(Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;->semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    return-void
.end method
