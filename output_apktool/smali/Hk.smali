.class public final synthetic LHk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput p2, p0, LHk;->b:I

    iput p3, p0, LHk;->c:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, p0, LHk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget v4, p0, LHk;->c:I

    if-eqz v2, :cond_10

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v2, v0, :cond_b

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    const/4 p0, 0x3

    if-eq v2, p0, :cond_b

    move v0, v7

    goto/16 :goto_5

    :cond_0
    iget-boolean v2, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N:Z

    if-eqz v2, :cond_9

    iget v4, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    if-ltz v4, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O:F

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P:F

    sub-float/2addr p2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    if-eqz p1, :cond_11

    iget v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->b:I

    if-eqz v4, :cond_2

    iget v8, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget v8, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    div-int v8, v3, v8

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, LC6;->P(F)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {p1}, Lcom/omoda/launcher/ui/PresetGridLayout;->getColumns()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v2, v7, v4}, Lvf;->f(III)I

    move-result v2

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    rem-int/2addr v3, v4

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    int-to-float v4, v4

    div-float/2addr p2, v4

    invoke-static {p2}, LC6;->P(F)I

    move-result p2

    add-int/2addr p2, v3

    iget v3, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    sub-int/2addr v3, v0

    invoke-static {p2, v7, v3}, Lvf;->f(III)I

    move-result p2

    iget v3, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    mul-int/2addr v2, v3

    add-int v3, v2, p2

    :cond_2
    :goto_0
    iget p0, p0, LHk;->b:I

    add-int/lit8 p2, p0, -0x1

    invoke-static {v3, v7, p2}, Lvf;->f(III)I

    move-result p2

    :goto_1
    iget v2, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    if-eq v2, p2, :cond_5

    if-le p2, v2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    add-int/2addr v3, v2

    iget-object v4, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2, v3}, Lcom/omoda/launcher/data/PresetRepository;->swapPresets(II)Z

    iput v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    goto :goto_1

    :cond_4
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v5

    :cond_5
    move p2, v7

    :goto_3
    if-ge p2, p0, :cond_11

    iget v2, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    if-eq p2, v2, :cond_8

    iget v3, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    if-ge v2, v3, :cond_6

    add-int/lit8 v4, v2, 0x1

    if-gt p2, v3, :cond_6

    if-gt v4, p2, :cond_6

    move v2, v6

    goto :goto_4

    :cond_6
    if-le v2, v3, :cond_7

    if-ge p2, v2, :cond_7

    if-gt v3, p2, :cond_7

    move v2, v0

    goto :goto_4

    :cond_7
    move v2, v7

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(...)"

    invoke-static {v3, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v2, p2

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    div-int v5, v2, v4

    div-int v4, p2, v4

    sub-int/2addr v5, v4

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->b:I

    mul-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    rem-int/2addr v2, v4

    rem-int v4, p2, v4

    sub-int/2addr v2, v4

    iget v4, p1, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    add-int/2addr p2, v0

    goto :goto_3

    :cond_9
    if-nez v2, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p1, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_11

    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    if-eqz p0, :cond_a

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    iput-object v5, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    goto :goto_5

    :cond_b
    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    if-eqz p0, :cond_c

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c
    iput-object v5, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    iget-boolean p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N:Z

    if-eqz p0, :cond_e

    iput-boolean v7, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N:Z

    iget p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    iput p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    iput v6, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    iput v6, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    if-eqz p0, :cond_d

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iput-object v5, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    iget p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    if-ltz p0, :cond_11

    new-instance p0, LJk;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v1}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    const-wide/16 p1, 0xbb8

    invoke-virtual {v3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_11

    iget p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    if-ltz p0, :cond_f

    iput v6, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c(I)V

    goto :goto_5

    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iput p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P:F

    new-instance p0, Li7;

    invoke-direct {p0, v1, v4, p1, v0}, Li7;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iput-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    iget-wide p1, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T:J

    invoke-virtual {v3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_5
    return v0
.end method
