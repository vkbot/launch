.class public final Lcom/omoda/launcher/data/Preset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final leftApp:Ljava/lang/String;

.field private final ratio:F

.field private final rightApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "leftApp"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/omoda/launcher/data/Preset;->id:I

    .line 3
    iput-object p2, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;FILF6;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x3f000000    # 0.5f

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/omoda/launcher/data/Preset;-><init>(ILjava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/omoda/launcher/data/Preset;ILjava/lang/String;Ljava/lang/String;FILjava/lang/Object;)Lcom/omoda/launcher/data/Preset;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/omoda/launcher/data/Preset;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/omoda/launcher/data/Preset;->copy(ILjava/lang/String;Ljava/lang/String;F)Lcom/omoda/launcher/data/Preset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;F)Lcom/omoda/launcher/data/Preset;
    .locals 0

    const-string p0, "leftApp"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/omoda/launcher/data/Preset;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/omoda/launcher/data/Preset;-><init>(ILjava/lang/String;Ljava/lang/String;F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/omoda/launcher/data/Preset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/omoda/launcher/data/Preset;

    iget v1, p0, Lcom/omoda/launcher/data/Preset;->id:I

    iget v3, p1, Lcom/omoda/launcher/data/Preset;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    iget p1, p1, Lcom/omoda/launcher/data/Preset;->ratio:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->id:I

    return p0
.end method

.method public final getLeftApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getRatio()F
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    return p0
.end method

.method public final getRightApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/omoda/launcher/data/Preset;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isSingle()Z
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preset(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/omoda/launcher/data/Preset;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/Preset;->leftApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rightApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/Preset;->rightApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/omoda/launcher/data/Preset;->ratio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
