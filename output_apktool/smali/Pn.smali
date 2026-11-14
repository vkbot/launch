.class public abstract LPn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7;


# instance fields
.field public a:I

.field public b:LD5;

.field public c:Lnh;

.field public d:I

.field public final e:Lq7;

.field public f:I

.field public g:Z

.field public final h:Lg7;

.field public final i:Lg7;

.field public j:I


# direct methods
.method public constructor <init>(LD5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq7;

    invoke-direct {v0, p0}, Lq7;-><init>(LPn;)V

    iput-object v0, p0, LPn;->e:Lq7;

    const/4 v0, 0x0

    iput v0, p0, LPn;->f:I

    iput-boolean v0, p0, LPn;->g:Z

    new-instance v0, Lg7;

    invoke-direct {v0, p0}, Lg7;-><init>(LPn;)V

    iput-object v0, p0, LPn;->h:Lg7;

    new-instance v0, Lg7;

    invoke-direct {v0, p0}, Lg7;-><init>(LPn;)V

    iput-object v0, p0, LPn;->i:Lg7;

    const/4 v0, 0x1

    iput v0, p0, LPn;->j:I

    iput-object p1, p0, LPn;->b:LD5;

    return-void
.end method

.method public static b(Lg7;Lg7;I)V
    .locals 1

    iget-object v0, p0, Lg7;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lg7;->f:I

    iget-object p1, p1, Lg7;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Lp5;)Lg7;
    .locals 3

    iget-object p0, p0, Lp5;->f:Lp5;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lp5;->e:I

    invoke-static {v1}, Lpi;->p(I)I

    move-result v1

    const/4 v2, 0x1

    iget-object p0, p0, Lp5;->d:LD5;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, LD5;->e:LKm;

    iget-object v0, p0, LKm;->k:Lg7;

    goto :goto_0

    :cond_2
    iget-object p0, p0, LD5;->e:LKm;

    iget-object v0, p0, LPn;->i:Lg7;

    goto :goto_0

    :cond_3
    iget-object p0, p0, LD5;->d:LKa;

    iget-object v0, p0, LPn;->i:Lg7;

    goto :goto_0

    :cond_4
    iget-object p0, p0, LD5;->e:LKm;

    iget-object v0, p0, LPn;->h:Lg7;

    goto :goto_0

    :cond_5
    iget-object p0, p0, LD5;->d:LKa;

    iget-object v0, p0, LPn;->h:Lg7;

    :goto_0
    return-object v0
.end method

.method public static i(Lp5;I)Lg7;
    .locals 2

    iget-object p0, p0, Lp5;->f:Lp5;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lp5;->d:LD5;

    if-nez p1, :cond_1

    iget-object p1, v1, LD5;->d:LKa;

    goto :goto_0

    :cond_1
    iget-object p1, v1, LD5;->e:LKm;

    :goto_0
    iget p0, p0, Lp5;->e:I

    invoke-static {p0}, Lpi;->p(I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, LPn;->i:Lg7;

    goto :goto_1

    :cond_3
    iget-object v0, p1, LPn;->h:Lg7;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final c(Lg7;Lg7;ILq7;)V
    .locals 1

    iget-object v0, p1, Lg7;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lg7;->l:Ljava/util/ArrayList;

    iget-object p0, p0, LPn;->e:Lq7;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lg7;->h:I

    iput-object p4, p1, Lg7;->i:Lq7;

    iget-object p0, p2, Lg7;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Lg7;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 0

    if-nez p2, :cond_1

    iget-object p0, p0, LPn;->b:LD5;

    iget p2, p0, LD5;->v:I

    iget p0, p0, LD5;->u:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p0, p0, LPn;->b:LD5;

    iget p2, p0, LD5;->y:I

    iget p0, p0, LD5;->x:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, LPn;->e:Lq7;

    iget-boolean v0, p0, Lg7;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lg7;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Lp5;Lp5;I)V
    .locals 11

    invoke-static {p1}, LPn;->h(Lp5;)Lg7;

    move-result-object v0

    invoke-static {p2}, LPn;->h(Lp5;)Lg7;

    move-result-object v1

    iget-boolean v2, v0, Lg7;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lg7;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v0, Lg7;->g:I

    invoke-virtual {p1}, Lp5;->e()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Lg7;->g:I

    invoke-virtual {p2}, Lp5;->e()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, LPn;->e:Lq7;

    iget-boolean v4, v3, Lg7;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget v4, p0, LPn;->d:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a

    iget v4, p0, LPn;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, LPn;->b:LD5;

    iget-object v8, v4, LD5;->d:LKa;

    iget v9, v8, LPn;->d:I

    if-ne v9, v6, :cond_2

    iget v9, v8, LPn;->a:I

    if-ne v9, v6, :cond_2

    iget-object v9, v4, LD5;->e:LKm;

    iget v10, v9, LPn;->d:I

    if-ne v10, v6, :cond_2

    iget v9, v9, LPn;->a:I

    if-ne v9, v6, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    iget-object v8, v4, LD5;->e:LKm;

    :cond_3
    iget-object v6, v8, LPn;->e:Lq7;

    iget-boolean v8, v6, Lg7;->j:Z

    if-eqz v8, :cond_a

    iget v4, v4, LD5;->W:F

    if-ne p3, v7, :cond_4

    iget v6, v6, Lg7;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    iget v6, v6, Lg7;->g:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Lq7;->d(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, LPn;->b:LD5;

    iget-object v6, v4, LD5;->T:LD5;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, LD5;->d:LKa;

    goto :goto_1

    :cond_6
    iget-object v6, v6, LD5;->e:LKm;

    :goto_1
    iget-object v6, v6, LPn;->e:Lq7;

    iget-boolean v7, v6, Lg7;->j:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, LD5;->w:F

    goto :goto_2

    :cond_7
    iget v4, v4, LD5;->z:F

    :goto_2
    iget v6, v6, Lg7;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    invoke-virtual {p0, v4, p3}, LPn;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lq7;->d(I)V

    goto :goto_3

    :cond_8
    iget v4, v3, Lq7;->m:I

    invoke-virtual {p0, v4, p3}, LPn;->g(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lq7;->d(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2, p3}, LPn;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lq7;->d(I)V

    :cond_a
    :goto_3
    iget-boolean v4, v3, Lg7;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v4, v3, Lg7;->g:I

    iget-object v6, p0, LPn;->i:Lg7;

    iget-object v7, p0, LPn;->h:Lg7;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, Lg7;->d(I)V

    invoke-virtual {v6, v2}, Lg7;->d(I)V

    return-void

    :cond_c
    iget-object p0, p0, LPn;->b:LD5;

    if-nez p3, :cond_d

    iget p0, p0, LD5;->d0:F

    goto :goto_4

    :cond_d
    iget p0, p0, LD5;->e0:F

    :goto_4
    if-ne v0, v1, :cond_e

    iget p1, v0, Lg7;->g:I

    iget v2, v1, Lg7;->g:I

    move p0, v5

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p2, v2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    invoke-virtual {v7, p0}, Lg7;->d(I)V

    iget p0, v7, Lg7;->g:I

    iget p1, v3, Lg7;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v6, p0}, Lg7;->d(I)V

    :cond_f
    :goto_5
    return-void
.end method
