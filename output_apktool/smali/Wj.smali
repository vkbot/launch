.class public final LWj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, LWj;->a:I

    move v1, p2

    iput v1, v0, LWj;->b:I

    move v1, p3

    iput v1, v0, LWj;->c:I

    move v1, p4

    iput v1, v0, LWj;->d:I

    move v1, p5

    iput v1, v0, LWj;->e:I

    move v1, p6

    iput v1, v0, LWj;->f:I

    move v1, p7

    iput v1, v0, LWj;->g:I

    move v1, p8

    iput v1, v0, LWj;->h:I

    move v1, p9

    iput v1, v0, LWj;->i:I

    move v1, p10

    iput v1, v0, LWj;->j:I

    move v1, p11

    iput v1, v0, LWj;->k:I

    move v1, p12

    iput v1, v0, LWj;->l:I

    move v1, p13

    iput v1, v0, LWj;->m:I

    move/from16 v1, p14

    iput v1, v0, LWj;->n:I

    move/from16 v1, p15

    iput v1, v0, LWj;->o:I

    move/from16 v1, p16

    iput v1, v0, LWj;->p:I

    move/from16 v1, p17

    iput v1, v0, LWj;->q:I

    move/from16 v1, p18

    iput v1, v0, LWj;->r:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LWj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LWj;

    iget v1, p1, LWj;->a:I

    iget v3, p0, LWj;->a:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, LWj;->b:I

    iget v3, p1, LWj;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, LWj;->c:I

    iget v3, p1, LWj;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, LWj;->d:I

    iget v3, p1, LWj;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, LWj;->e:I

    iget v3, p1, LWj;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, LWj;->f:I

    iget v3, p1, LWj;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, LWj;->g:I

    iget v3, p1, LWj;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, LWj;->h:I

    iget v3, p1, LWj;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, LWj;->i:I

    iget v3, p1, LWj;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, LWj;->j:I

    iget v3, p1, LWj;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, LWj;->k:I

    iget v3, p1, LWj;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, LWj;->l:I

    iget v3, p1, LWj;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, LWj;->m:I

    iget v3, p1, LWj;->m:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, LWj;->n:I

    iget v3, p1, LWj;->n:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, LWj;->o:I

    iget v3, p1, LWj;->o:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, LWj;->p:I

    iget v3, p1, LWj;->p:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, LWj;->q:I

    iget v3, p1, LWj;->q:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget p0, p0, LWj;->r:I

    iget p1, p1, LWj;->r:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, LWj;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, LWj;->b:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->c:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->d:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->e:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->f:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->g:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->h:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->i:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->j:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->k:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->l:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->m:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->n:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->o:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->p:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget v2, p0, LWj;->q:I

    invoke-static {v2, v0, v1}, Lpi;->d(III)I

    move-result v0

    iget p0, p0, LWj;->r:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThemeColor(icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LWj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconAccent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toggleAccent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textOnAccent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accentDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", divider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", btnBorder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", btnBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", btnActiveLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LWj;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", btnActiveDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LWj;->r:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
