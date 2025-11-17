.class Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/blur2/SizeScaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# instance fields
.field final height:I

.field final scaleFactor:F

.field final width:I


# direct methods
.method constructor <init>(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "scaleFactor"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    .line 64
    iput p2, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    .line 65
    iput p3, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    check-cast p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;

    .line 77
    iget v2, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    iget v3, p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    if-eq v2, v3, :cond_2

    return v1

    .line 80
    :cond_2
    iget v2, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    iget v3, p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    if-eq v2, v3, :cond_3

    return v1

    .line 83
    :cond_3
    iget p1, p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    iget v2, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 88
    iget v0, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
