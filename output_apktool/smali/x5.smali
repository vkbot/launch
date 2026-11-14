.class public final Lx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:LA5;

.field public final c:Lz5;

.field public final d:Ly5;

.field public final e:LB5;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, LA5;->a:I

    iput v1, v0, LA5;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, LA5;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, LA5;->d:F

    iput-object v0, p0, Lx5;->b:LA5;

    new-instance v0, Lz5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lz5;->a:I

    iput v1, v0, Lz5;->b:I

    iput v4, v0, Lz5;->c:I

    iput v3, v0, Lz5;->d:F

    iput v3, v0, Lz5;->e:F

    iput v3, v0, Lz5;->f:F

    iput v4, v0, Lz5;->g:I

    const/4 v5, 0x0

    iput-object v5, v0, Lz5;->h:Ljava/lang/String;

    iput v4, v0, Lz5;->i:I

    iput-object v0, p0, Lx5;->c:Lz5;

    new-instance v0, Ly5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Ly5;->a:Z

    iput v4, v0, Ly5;->d:I

    iput v4, v0, Ly5;->e:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Ly5;->f:F

    const/4 v7, 0x1

    iput-boolean v7, v0, Ly5;->g:Z

    iput v4, v0, Ly5;->h:I

    iput v4, v0, Ly5;->i:I

    iput v4, v0, Ly5;->j:I

    iput v4, v0, Ly5;->k:I

    iput v4, v0, Ly5;->l:I

    iput v4, v0, Ly5;->m:I

    iput v4, v0, Ly5;->n:I

    iput v4, v0, Ly5;->o:I

    iput v4, v0, Ly5;->p:I

    iput v4, v0, Ly5;->q:I

    iput v4, v0, Ly5;->r:I

    iput v4, v0, Ly5;->s:I

    iput v4, v0, Ly5;->t:I

    iput v4, v0, Ly5;->u:I

    iput v4, v0, Ly5;->v:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Ly5;->w:F

    iput v8, v0, Ly5;->x:F

    iput-object v5, v0, Ly5;->y:Ljava/lang/String;

    iput v4, v0, Ly5;->z:I

    iput v1, v0, Ly5;->A:I

    const/4 v5, 0x0

    iput v5, v0, Ly5;->B:F

    iput v4, v0, Ly5;->C:I

    iput v4, v0, Ly5;->D:I

    iput v4, v0, Ly5;->E:I

    iput v1, v0, Ly5;->F:I

    iput v1, v0, Ly5;->G:I

    iput v1, v0, Ly5;->H:I

    iput v1, v0, Ly5;->I:I

    iput v1, v0, Ly5;->J:I

    iput v1, v0, Ly5;->K:I

    iput v1, v0, Ly5;->L:I

    const/high16 v8, -0x80000000

    iput v8, v0, Ly5;->M:I

    iput v8, v0, Ly5;->N:I

    iput v8, v0, Ly5;->O:I

    iput v8, v0, Ly5;->P:I

    iput v8, v0, Ly5;->Q:I

    iput v8, v0, Ly5;->R:I

    iput v8, v0, Ly5;->S:I

    iput v6, v0, Ly5;->T:F

    iput v6, v0, Ly5;->U:F

    iput v1, v0, Ly5;->V:I

    iput v1, v0, Ly5;->W:I

    iput v1, v0, Ly5;->X:I

    iput v1, v0, Ly5;->Y:I

    iput v1, v0, Ly5;->Z:I

    iput v1, v0, Ly5;->a0:I

    iput v1, v0, Ly5;->b0:I

    iput v1, v0, Ly5;->c0:I

    iput v2, v0, Ly5;->d0:F

    iput v2, v0, Ly5;->e0:F

    iput v4, v0, Ly5;->f0:I

    iput v1, v0, Ly5;->g0:I

    iput v4, v0, Ly5;->h0:I

    iput-boolean v1, v0, Ly5;->l0:Z

    iput-boolean v1, v0, Ly5;->m0:Z

    iput-boolean v7, v0, Ly5;->n0:Z

    iput v1, v0, Ly5;->o0:I

    iput-object v0, p0, Lx5;->d:Ly5;

    new-instance v0, LB5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, LB5;->a:F

    iput v5, v0, LB5;->b:F

    iput v5, v0, LB5;->c:F

    iput v2, v0, LB5;->d:F

    iput v2, v0, LB5;->e:F

    iput v3, v0, LB5;->f:F

    iput v3, v0, LB5;->g:F

    iput v4, v0, LB5;->h:I

    iput v5, v0, LB5;->i:F

    iput v5, v0, LB5;->j:F

    iput v5, v0, LB5;->k:F

    iput-boolean v1, v0, LB5;->l:Z

    iput v5, v0, LB5;->m:F

    iput-object v0, p0, Lx5;->e:LB5;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lx5;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lt5;)V
    .locals 1

    iget-object p0, p0, Lx5;->d:Ly5;

    iget v0, p0, Ly5;->h:I

    iput v0, p1, Lt5;->e:I

    iget v0, p0, Ly5;->i:I

    iput v0, p1, Lt5;->f:I

    iget v0, p0, Ly5;->j:I

    iput v0, p1, Lt5;->g:I

    iget v0, p0, Ly5;->k:I

    iput v0, p1, Lt5;->h:I

    iget v0, p0, Ly5;->l:I

    iput v0, p1, Lt5;->i:I

    iget v0, p0, Ly5;->m:I

    iput v0, p1, Lt5;->j:I

    iget v0, p0, Ly5;->n:I

    iput v0, p1, Lt5;->k:I

    iget v0, p0, Ly5;->o:I

    iput v0, p1, Lt5;->l:I

    iget v0, p0, Ly5;->p:I

    iput v0, p1, Lt5;->m:I

    iget v0, p0, Ly5;->q:I

    iput v0, p1, Lt5;->n:I

    iget v0, p0, Ly5;->r:I

    iput v0, p1, Lt5;->o:I

    iget v0, p0, Ly5;->s:I

    iput v0, p1, Lt5;->s:I

    iget v0, p0, Ly5;->t:I

    iput v0, p1, Lt5;->t:I

    iget v0, p0, Ly5;->u:I

    iput v0, p1, Lt5;->u:I

    iget v0, p0, Ly5;->v:I

    iput v0, p1, Lt5;->v:I

    iget v0, p0, Ly5;->F:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Ly5;->G:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Ly5;->H:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Ly5;->I:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Ly5;->R:I

    iput v0, p1, Lt5;->A:I

    iget v0, p0, Ly5;->Q:I

    iput v0, p1, Lt5;->B:I

    iget v0, p0, Ly5;->N:I

    iput v0, p1, Lt5;->x:I

    iget v0, p0, Ly5;->P:I

    iput v0, p1, Lt5;->z:I

    iget v0, p0, Ly5;->w:F

    iput v0, p1, Lt5;->E:F

    iget v0, p0, Ly5;->x:F

    iput v0, p1, Lt5;->F:F

    iget v0, p0, Ly5;->z:I

    iput v0, p1, Lt5;->p:I

    iget v0, p0, Ly5;->A:I

    iput v0, p1, Lt5;->q:I

    iget v0, p0, Ly5;->B:F

    iput v0, p1, Lt5;->r:F

    iget-object v0, p0, Ly5;->y:Ljava/lang/String;

    iput-object v0, p1, Lt5;->G:Ljava/lang/String;

    iget v0, p0, Ly5;->C:I

    iput v0, p1, Lt5;->T:I

    iget v0, p0, Ly5;->D:I

    iput v0, p1, Lt5;->U:I

    iget v0, p0, Ly5;->T:F

    iput v0, p1, Lt5;->I:F

    iget v0, p0, Ly5;->U:F

    iput v0, p1, Lt5;->H:F

    iget v0, p0, Ly5;->W:I

    iput v0, p1, Lt5;->K:I

    iget v0, p0, Ly5;->V:I

    iput v0, p1, Lt5;->J:I

    iget-boolean v0, p0, Ly5;->l0:Z

    iput-boolean v0, p1, Lt5;->W:Z

    iget-boolean v0, p0, Ly5;->m0:Z

    iput-boolean v0, p1, Lt5;->X:Z

    iget v0, p0, Ly5;->X:I

    iput v0, p1, Lt5;->L:I

    iget v0, p0, Ly5;->Y:I

    iput v0, p1, Lt5;->M:I

    iget v0, p0, Ly5;->Z:I

    iput v0, p1, Lt5;->P:I

    iget v0, p0, Ly5;->a0:I

    iput v0, p1, Lt5;->Q:I

    iget v0, p0, Ly5;->b0:I

    iput v0, p1, Lt5;->N:I

    iget v0, p0, Ly5;->c0:I

    iput v0, p1, Lt5;->O:I

    iget v0, p0, Ly5;->d0:F

    iput v0, p1, Lt5;->R:F

    iget v0, p0, Ly5;->e0:F

    iput v0, p1, Lt5;->S:F

    iget v0, p0, Ly5;->E:I

    iput v0, p1, Lt5;->V:I

    iget v0, p0, Ly5;->f:F

    iput v0, p1, Lt5;->c:F

    iget v0, p0, Ly5;->d:I

    iput v0, p1, Lt5;->a:I

    iget v0, p0, Ly5;->e:I

    iput v0, p1, Lt5;->b:I

    iget v0, p0, Ly5;->b:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Ly5;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Ly5;->k0:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Lt5;->Y:Ljava/lang/String;

    :cond_0
    iget v0, p0, Ly5;->o0:I

    iput v0, p1, Lt5;->Z:I

    iget v0, p0, Ly5;->K:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Ly5;->J:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lt5;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lx5;

    invoke-direct {v0}, Lx5;-><init>()V

    iget-object v1, v0, Lx5;->d:Ly5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx5;->d:Ly5;

    iget-boolean v3, v2, Ly5;->a:Z

    iput-boolean v3, v1, Ly5;->a:Z

    iget v3, v2, Ly5;->b:I

    iput v3, v1, Ly5;->b:I

    iget v3, v2, Ly5;->c:I

    iput v3, v1, Ly5;->c:I

    iget v3, v2, Ly5;->d:I

    iput v3, v1, Ly5;->d:I

    iget v3, v2, Ly5;->e:I

    iput v3, v1, Ly5;->e:I

    iget v3, v2, Ly5;->f:F

    iput v3, v1, Ly5;->f:F

    iget-boolean v3, v2, Ly5;->g:Z

    iput-boolean v3, v1, Ly5;->g:Z

    iget v3, v2, Ly5;->h:I

    iput v3, v1, Ly5;->h:I

    iget v3, v2, Ly5;->i:I

    iput v3, v1, Ly5;->i:I

    iget v3, v2, Ly5;->j:I

    iput v3, v1, Ly5;->j:I

    iget v3, v2, Ly5;->k:I

    iput v3, v1, Ly5;->k:I

    iget v3, v2, Ly5;->l:I

    iput v3, v1, Ly5;->l:I

    iget v3, v2, Ly5;->m:I

    iput v3, v1, Ly5;->m:I

    iget v3, v2, Ly5;->n:I

    iput v3, v1, Ly5;->n:I

    iget v3, v2, Ly5;->o:I

    iput v3, v1, Ly5;->o:I

    iget v3, v2, Ly5;->p:I

    iput v3, v1, Ly5;->p:I

    iget v3, v2, Ly5;->q:I

    iput v3, v1, Ly5;->q:I

    iget v3, v2, Ly5;->r:I

    iput v3, v1, Ly5;->r:I

    iget v3, v2, Ly5;->s:I

    iput v3, v1, Ly5;->s:I

    iget v3, v2, Ly5;->t:I

    iput v3, v1, Ly5;->t:I

    iget v3, v2, Ly5;->u:I

    iput v3, v1, Ly5;->u:I

    iget v3, v2, Ly5;->v:I

    iput v3, v1, Ly5;->v:I

    iget v3, v2, Ly5;->w:F

    iput v3, v1, Ly5;->w:F

    iget v3, v2, Ly5;->x:F

    iput v3, v1, Ly5;->x:F

    iget-object v3, v2, Ly5;->y:Ljava/lang/String;

    iput-object v3, v1, Ly5;->y:Ljava/lang/String;

    iget v3, v2, Ly5;->z:I

    iput v3, v1, Ly5;->z:I

    iget v3, v2, Ly5;->A:I

    iput v3, v1, Ly5;->A:I

    iget v3, v2, Ly5;->B:F

    iput v3, v1, Ly5;->B:F

    iget v3, v2, Ly5;->C:I

    iput v3, v1, Ly5;->C:I

    iget v3, v2, Ly5;->D:I

    iput v3, v1, Ly5;->D:I

    iget v3, v2, Ly5;->E:I

    iput v3, v1, Ly5;->E:I

    iget v3, v2, Ly5;->F:I

    iput v3, v1, Ly5;->F:I

    iget v3, v2, Ly5;->G:I

    iput v3, v1, Ly5;->G:I

    iget v3, v2, Ly5;->H:I

    iput v3, v1, Ly5;->H:I

    iget v3, v2, Ly5;->I:I

    iput v3, v1, Ly5;->I:I

    iget v3, v2, Ly5;->J:I

    iput v3, v1, Ly5;->J:I

    iget v3, v2, Ly5;->K:I

    iput v3, v1, Ly5;->K:I

    iget v3, v2, Ly5;->L:I

    iput v3, v1, Ly5;->L:I

    iget v3, v2, Ly5;->M:I

    iput v3, v1, Ly5;->M:I

    iget v3, v2, Ly5;->N:I

    iput v3, v1, Ly5;->N:I

    iget v3, v2, Ly5;->O:I

    iput v3, v1, Ly5;->O:I

    iget v3, v2, Ly5;->P:I

    iput v3, v1, Ly5;->P:I

    iget v3, v2, Ly5;->Q:I

    iput v3, v1, Ly5;->Q:I

    iget v3, v2, Ly5;->R:I

    iput v3, v1, Ly5;->R:I

    iget v3, v2, Ly5;->S:I

    iput v3, v1, Ly5;->S:I

    iget v3, v2, Ly5;->T:F

    iput v3, v1, Ly5;->T:F

    iget v3, v2, Ly5;->U:F

    iput v3, v1, Ly5;->U:F

    iget v3, v2, Ly5;->V:I

    iput v3, v1, Ly5;->V:I

    iget v3, v2, Ly5;->W:I

    iput v3, v1, Ly5;->W:I

    iget v3, v2, Ly5;->X:I

    iput v3, v1, Ly5;->X:I

    iget v3, v2, Ly5;->Y:I

    iput v3, v1, Ly5;->Y:I

    iget v3, v2, Ly5;->Z:I

    iput v3, v1, Ly5;->Z:I

    iget v3, v2, Ly5;->a0:I

    iput v3, v1, Ly5;->a0:I

    iget v3, v2, Ly5;->b0:I

    iput v3, v1, Ly5;->b0:I

    iget v3, v2, Ly5;->c0:I

    iput v3, v1, Ly5;->c0:I

    iget v3, v2, Ly5;->d0:F

    iput v3, v1, Ly5;->d0:F

    iget v3, v2, Ly5;->e0:F

    iput v3, v1, Ly5;->e0:F

    iget v3, v2, Ly5;->f0:I

    iput v3, v1, Ly5;->f0:I

    iget v3, v2, Ly5;->g0:I

    iput v3, v1, Ly5;->g0:I

    iget v3, v2, Ly5;->h0:I

    iput v3, v1, Ly5;->h0:I

    iget-object v3, v2, Ly5;->k0:Ljava/lang/String;

    iput-object v3, v1, Ly5;->k0:Ljava/lang/String;

    iget-object v3, v2, Ly5;->i0:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Ly5;->j0:Ljava/lang/String;

    if-nez v4, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Ly5;->i0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Ly5;->i0:[I

    :goto_0
    iget-object v3, v2, Ly5;->j0:Ljava/lang/String;

    iput-object v3, v1, Ly5;->j0:Ljava/lang/String;

    iget-boolean v3, v2, Ly5;->l0:Z

    iput-boolean v3, v1, Ly5;->l0:Z

    iget-boolean v3, v2, Ly5;->m0:Z

    iput-boolean v3, v1, Ly5;->m0:Z

    iget-boolean v3, v2, Ly5;->n0:Z

    iput-boolean v3, v1, Ly5;->n0:Z

    iget v2, v2, Ly5;->o0:I

    iput v2, v1, Ly5;->o0:I

    iget-object v1, v0, Lx5;->c:Lz5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx5;->c:Lz5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lz5;->a:I

    iput v3, v1, Lz5;->a:I

    iget v3, v2, Lz5;->c:I

    iput v3, v1, Lz5;->c:I

    iget v3, v2, Lz5;->e:F

    iput v3, v1, Lz5;->e:F

    iget v2, v2, Lz5;->d:F

    iput v2, v1, Lz5;->d:F

    iget-object v1, v0, Lx5;->b:LA5;

    iget-object v2, p0, Lx5;->b:LA5;

    iget v3, v2, LA5;->a:I

    iput v3, v1, LA5;->a:I

    iget v3, v2, LA5;->c:F

    iput v3, v1, LA5;->c:F

    iget v3, v2, LA5;->d:F

    iput v3, v1, LA5;->d:F

    iget v2, v2, LA5;->b:I

    iput v2, v1, LA5;->b:I

    iget-object v1, v0, Lx5;->e:LB5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx5;->e:LB5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LB5;->a:F

    iput v3, v1, LB5;->a:F

    iget v3, v2, LB5;->b:F

    iput v3, v1, LB5;->b:F

    iget v3, v2, LB5;->c:F

    iput v3, v1, LB5;->c:F

    iget v3, v2, LB5;->d:F

    iput v3, v1, LB5;->d:F

    iget v3, v2, LB5;->e:F

    iput v3, v1, LB5;->e:F

    iget v3, v2, LB5;->f:F

    iput v3, v1, LB5;->f:F

    iget v3, v2, LB5;->g:F

    iput v3, v1, LB5;->g:F

    iget v3, v2, LB5;->h:I

    iput v3, v1, LB5;->h:I

    iget v3, v2, LB5;->i:F

    iput v3, v1, LB5;->i:F

    iget v3, v2, LB5;->j:F

    iput v3, v1, LB5;->j:F

    iget v3, v2, LB5;->k:F

    iput v3, v1, LB5;->k:F

    iget-boolean v3, v2, LB5;->l:Z

    iput-boolean v3, v1, LB5;->l:Z

    iget v2, v2, LB5;->m:F

    iput v2, v1, LB5;->m:F

    iget p0, p0, Lx5;->a:I

    iput p0, v0, Lx5;->a:I

    return-object v0
.end method
