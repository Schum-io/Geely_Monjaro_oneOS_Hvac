.class public interface abstract annotation Lcom/geely/lib/oneosapi/navi/model/base/MapFeatures;
.super Ljava/lang/Object;
.source "MapFeatures.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DR:I = 0x1

.field public static final GREEN_TRAVEL:I = 0x20

.field public static final GUIDE:I = 0x2

.field public static final SPEED_LIMIT:I = 0x10

.field public static final V2DIM:I = 0x4

.field public static final V2WIDGET:I = 0x8
