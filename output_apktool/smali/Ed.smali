.class public LEd;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lfi;


# static fields
.field public static final synthetic u:I


# instance fields
.field public a:LDd;

.field public final b:[Ldi;

.field public final c:[Ldi;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:LVh;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:LL;

.field public final q:LXh;

.field public r:Landroid/graphics/PorterDuffColorFilter;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public final t:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LVh;

    invoke-direct {v0}, LVh;-><init>()V

    invoke-direct {p0, v0}, LEd;-><init>(LVh;)V

    return-void
.end method

.method public constructor <init>(LDd;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Ldi;

    iput-object v1, p0, LEd;->b:[Ldi;

    .line 6
    new-array v0, v0, [Ldi;

    iput-object v0, p0, LEd;->c:[Ldi;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, LEd;->d:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LEd;->f:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LEd;->g:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LEd;->h:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LEd;->i:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LEd;->j:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LEd;->k:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LEd;->l:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LEd;->n:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LEd;->o:Landroid/graphics/Paint;

    .line 17
    new-instance v1, LTh;

    invoke-direct {v1}, LTh;-><init>()V

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 19
    sget-object v1, LWh;->a:LXh;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, LXh;

    invoke-direct {v1}, LXh;-><init>()V

    :goto_0
    iput-object v1, p0, LEd;->q:LXh;

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, LEd;->t:Landroid/graphics/RectF;

    .line 22
    iput-object p1, p0, LEd;->a:LDd;

    .line 23
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    invoke-virtual {p0}, LEd;->k()Z

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LEd;->j([I)Z

    .line 27
    new-instance p1, LL;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, LL;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LEd;->p:LL;

    return-void
.end method

.method public constructor <init>(LVh;)V
    .locals 1

    .line 3
    new-instance v0, LDd;

    invoke-direct {v0, p1}, LDd;-><init>(LVh;)V

    invoke-direct {p0, v0}, LEd;-><init>(LDd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, LVh;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LUh;

    move-result-object p1

    invoke-virtual {p1}, LUh;->a()LVh;

    move-result-object p1

    invoke-direct {p0, p1}, LEd;-><init>(LVh;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v2, v0, LDd;->a:LVh;

    iget v3, v0, LDd;->i:F

    iget-object v5, p0, LEd;->p:LL;

    iget-object v1, p0, LEd;->q:LXh;

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, LXh;->a(LVh;FLandroid/graphics/RectF;LL;Landroid/graphics/Path;)V

    iget-object v0, p0, LEd;->a:LDd;

    iget v0, v0, LDd;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, LEd;->a:LDd;

    iget v1, v1, LDd;->h:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, LEd;->t:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final b(I)I
    .locals 5

    iget-object p0, p0, LEd;->a:LDd;

    iget v0, p0, LDd;->m:F

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget v2, p0, LDd;->l:F

    add-float/2addr v0, v2

    iget-object p0, p0, LDd;->b:LV7;

    if-eqz p0, :cond_3

    iget-boolean v2, p0, LV7;->a:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    invoke-static {p1, v2}, LU4;->d(II)I

    move-result v3

    iget v4, p0, LV7;->d:I

    if-ne v3, v4, :cond_3

    iget v3, p0, LV7;->e:F

    cmpg-float v4, v3, v1

    if-lez v4, :cond_1

    cmpg-float v4, v0, v1

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    double-to-float v0, v3

    const/high16 v3, 0x40900000    # 4.5f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p1, v2}, LU4;->d(II)I

    move-result p1

    iget v2, p0, LV7;->b:I

    invoke-static {p1, v2, v0}, LC6;->A(IIF)I

    move-result p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget p0, p0, LV7;->c:I

    if-eqz p0, :cond_2

    sget v0, LV7;->f:I

    invoke-static {p0, v0}, LU4;->d(II)I

    move-result p0

    invoke-static {p0, p1}, LU4;->b(II)I

    move-result p1

    :cond_2
    invoke-static {p1, v3}, LU4;->d(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LVh;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, LVh;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, LVh;->f:Lb6;

    invoke-interface {p3, p5}, Lb6;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, LEd;->a:LDd;

    iget p0, p0, LDd;->i:F

    mul-float/2addr p3, p0

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, LEd;->o:Landroid/graphics/Paint;

    iget-object v3, p0, LEd;->h:Landroid/graphics/Path;

    iget-object v4, p0, LEd;->m:LVh;

    iget-object v5, p0, LEd;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, LEd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LEd;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LVh;Landroid/graphics/RectF;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v6, p0

    iget-object v7, v6, LEd;->n:Landroid/graphics/Paint;

    iget-object v0, v6, LEd;->r:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v0, v6, LEd;->a:LDd;

    iget v0, v0, LDd;->k:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v8

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v6, LEd;->o:Landroid/graphics/Paint;

    iget-object v0, v6, LEd;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, LEd;->a:LDd;

    iget v0, v0, LDd;->j:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    iget-object v0, v6, LEd;->a:LDd;

    iget v0, v0, LDd;->k:I

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, v10

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, v6, LEd;->e:Z

    iget-object v3, v6, LEd;->g:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LEd;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    neg-float v0, v0

    iget-object v4, v6, LEd;->a:LDd;

    iget-object v4, v4, LDd;->a:LVh;

    invoke-virtual {v4}, LVh;->e()LUh;

    move-result-object v5

    iget-object v11, v4, LVh;->e:Lb6;

    instance-of v12, v11, LNg;

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    new-instance v12, Lz0;

    invoke-direct {v12, v0, v11}, Lz0;-><init>(FLb6;)V

    move-object v11, v12

    :goto_1
    iput-object v11, v5, LUh;->e:Lb6;

    iget-object v11, v4, LVh;->f:Lb6;

    instance-of v12, v11, LNg;

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    new-instance v12, Lz0;

    invoke-direct {v12, v0, v11}, Lz0;-><init>(FLb6;)V

    move-object v11, v12

    :goto_2
    iput-object v11, v5, LUh;->f:Lb6;

    iget-object v11, v4, LVh;->h:Lb6;

    instance-of v12, v11, LNg;

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    new-instance v12, Lz0;

    invoke-direct {v12, v0, v11}, Lz0;-><init>(FLb6;)V

    move-object v11, v12

    :goto_3
    iput-object v11, v5, LUh;->h:Lb6;

    iget-object v4, v4, LVh;->g:Lb6;

    instance-of v11, v4, LNg;

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    new-instance v11, Lz0;

    invoke-direct {v11, v0, v4}, Lz0;-><init>(FLb6;)V

    move-object v4, v11

    :goto_4
    iput-object v4, v5, LUh;->g:Lb6;

    invoke-virtual {v5}, LUh;->a()LVh;

    move-result-object v12

    iput-object v12, v6, LEd;->m:LVh;

    iget-object v0, v6, LEd;->a:LDd;

    iget v13, v0, LDd;->i:F

    iget-object v14, v6, LEd;->j:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p0}, LEd;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v1, v0, v2

    :cond_5
    invoke-virtual {v14, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, v6, LEd;->h:Landroid/graphics/Path;

    const/4 v15, 0x0

    iget-object v11, v6, LEd;->q:LXh;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, LXh;->a(LVh;FLandroid/graphics/RectF;LL;Landroid/graphics/Path;)V

    invoke-virtual/range {p0 .. p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, LEd;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, LEd;->e:Z

    :cond_6
    iget-object v0, v6, LEd;->a:LDd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LDd;->n:I

    if-lez v0, :cond_7

    iget-object v0, v6, LEd;->a:LDd;

    iget-object v0, v0, LDd;->a:LVh;

    invoke-virtual/range {p0 .. p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LVh;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    :cond_7
    iget-object v0, v6, LEd;->a:LDd;

    iget-object v1, v0, LDd;->p:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v4, v0, LDd;->a:LVh;

    invoke-virtual/range {p0 .. p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, LEd;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LVh;Landroid/graphics/RectF;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, LEd;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p1}, LEd;->d(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, LEd;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->p:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, LEd;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    new-instance v1, LV7;

    invoke-direct {v1, p1}, LV7;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LDd;->b:LV7;

    invoke-virtual {p0}, LEd;->l()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, LEd;->a:LDd;

    iget p0, p0, LDd;->k:I

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, LEd;->a:LDd;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->a:LVh;

    invoke-virtual {p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LVh;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->a:LVh;

    iget-object v0, v0, LVh;->e:Lb6;

    invoke-virtual {p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lb6;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, LEd;->a:LDd;

    iget v1, v1, LDd;->i:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, LEd;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, LEd;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    invoke-static {p1, v1}, Lz;->n(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, LEd;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, LEd;->e()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, LEd;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, LEd;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p0, p0, LEd;->l:Landroid/graphics/Region;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public final h(F)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    iget v1, v0, LDd;->m:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, LDd;->m:F

    invoke-virtual {p0}, LEd;->l()V

    :cond_0
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v1, v0, LDd;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LDd;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LEd;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LEd;->e:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, LEd;->a:LDd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, LEd;->a:LDd;

    iget-object p0, p0, LDd;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j([I)Z
    .locals 4

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v0, v0, LDd;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, LEd;->a:LDd;

    iget-object v3, v3, LDd;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LEd;->a:LDd;

    iget-object v2, v2, LDd;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, LEd;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object p0, p0, LEd;->a:LDd;

    iget-object p0, p0, LDd;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    if-eq v3, p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final k()Z
    .locals 7

    iget-object v0, p0, LEd;->r:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, LEd;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LEd;->a:LDd;

    iget-object v3, v2, LDd;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, LDd;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, LEd;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v3}, LEd;->b(I)I

    move-result v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, LEd;->b(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    iput-object v4, p0, LEd;->r:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LEd;->a:LDd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, LEd;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LEd;->a:LDd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LEd;->r:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, LHe;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, LEd;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, p0}, LHe;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    return v5
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, LEd;->a:LDd;

    iget v1, v0, LDd;->m:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, LDd;->n:I

    iget-object v0, p0, LEd;->a:LDd;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, LDd;->o:I

    invoke-virtual {p0}, LEd;->k()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, LDd;

    iget-object v1, p0, LEd;->a:LDd;

    invoke-direct {v0, v1}, LDd;-><init>(LDd;)V

    iput-object v0, p0, LEd;->a:LDd;

    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LEd;->e:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, LEd;->j([I)Z

    move-result p1

    invoke-virtual {p0}, LEd;->k()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, LEd;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    iget v1, v0, LDd;->k:I

    if-eq v1, p1, :cond_0

    iput p1, v0, LDd;->k:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, LEd;->a:LDd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setShapeAppearanceModel(LVh;)V
    .locals 1

    iget-object v0, p0, LEd;->a:LDd;

    iput-object p1, v0, LDd;->a:LVh;

    invoke-virtual {p0}, LEd;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LEd;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LEd;->a:LDd;

    iput-object p1, v0, LDd;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, LEd;->k()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, LEd;->a:LDd;

    iget-object v1, v0, LDd;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LDd;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, LEd;->k()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
