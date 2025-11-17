.class public Lcom/geely/lib/oneosapi/bean/BookBriefInfo;
.super Ljava/lang/Object;
.source "BookBriefInfo.java"


# instance fields
.field private auther_name:Ljava/lang/String;

.field private book_id:Ljava/lang/String;

.field private book_img:Ljava/lang/String;

.field private book_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BookBriefInfo;->book_img:Ljava/lang/String;

    return-object v0
.end method

.method public getBook_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/BookBriefInfo;->book_name:Ljava/lang/String;

    return-object v0
.end method
