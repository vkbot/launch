.class public final LSh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, LSh;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, LSh;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, LSh;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, LSh;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, LSh;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, LSh;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, LSh;->g:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, LSh;->h:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, LSh;->i:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, LSh;->j:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, LSh;->k:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, LSh;->l:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, LSh;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, LSh;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, LSh;->o:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, LSh;->p:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, LSh;->q:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, LSh;->r:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, LSh;->s:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, LSh;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LSh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LSh;

    iget-object v1, p1, LSh;->a:Ljava/lang/String;

    iget-object v3, p0, LSh;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LSh;->b:Ljava/lang/String;

    iget-object v3, p1, LSh;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, LSh;->c:Ljava/lang/String;

    iget-object v3, p1, LSh;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, LSh;->d:Ljava/lang/String;

    iget-object v3, p1, LSh;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, LSh;->e:Ljava/lang/String;

    iget-object v3, p1, LSh;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, LSh;->f:Ljava/lang/String;

    iget-object v3, p1, LSh;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, LSh;->g:Ljava/lang/String;

    iget-object v3, p1, LSh;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, LSh;->h:Ljava/lang/String;

    iget-object v3, p1, LSh;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, LSh;->i:Ljava/lang/String;

    iget-object v3, p1, LSh;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, LSh;->j:Ljava/lang/String;

    iget-object v3, p1, LSh;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, LSh;->k:Ljava/lang/String;

    iget-object v3, p1, LSh;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, LSh;->l:Ljava/lang/String;

    iget-object v3, p1, LSh;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, LSh;->m:Ljava/lang/String;

    iget-object v3, p1, LSh;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, LSh;->n:Ljava/lang/String;

    iget-object v3, p1, LSh;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, LSh;->o:Ljava/lang/String;

    iget-object v3, p1, LSh;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, LSh;->p:Ljava/lang/String;

    iget-object v3, p1, LSh;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, LSh;->q:Ljava/lang/String;

    iget-object v3, p1, LSh;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, LSh;->r:Ljava/lang/String;

    iget-object v3, p1, LSh;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, LSh;->s:Ljava/lang/String;

    iget-object v3, p1, LSh;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object p0, p0, LSh;->t:Ljava/lang/String;

    iget-object p1, p1, LSh;->t:Ljava/lang/String;

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LSh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LSh;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->e:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->g:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->h:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->i:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->j:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->k:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->l:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->m:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->n:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->o:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->p:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->q:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->r:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LSh;->s:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, LSh;->t:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingsStrings(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LSh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unifiedLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unifiedLauncherDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", presetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", presetSizeDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", covers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coversDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hideBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hideBackDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sportKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sportKeyDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autostart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autostartDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clockHourSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateLauncherDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSh;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LSh;->t:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lpi;->k(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
