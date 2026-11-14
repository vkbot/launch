.class public final synthetic LKk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic b:LHg;

.field public final synthetic c:LHg;

.field public final synthetic d:LIg;

.field public final synthetic e:LIg;

.field public final synthetic f:LIg;

.field public final synthetic g:LJg;

.field public final synthetic h:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic i:LJg;

.field public final synthetic j:Landroid/widget/LinearLayout;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LHg;LHg;LIg;LIg;LIg;LJg;Landroid/view/WindowManager$LayoutParams;LJg;Landroid/widget/LinearLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LKk;->b:LHg;

    iput-object p3, p0, LKk;->c:LHg;

    iput-object p4, p0, LKk;->d:LIg;

    iput-object p5, p0, LKk;->e:LIg;

    iput-object p6, p0, LKk;->f:LIg;

    iput-object p7, p0, LKk;->g:LJg;

    iput-object p8, p0, LKk;->h:Landroid/view/WindowManager$LayoutParams;

    iput-object p9, p0, LKk;->i:LJg;

    iput-object p10, p0, LKk;->j:Landroid/widget/LinearLayout;

    iput p11, p0, LKk;->k:I

    iput p12, p0, LKk;->l:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v0, LKk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LKk;->b:LHg;

    iget-object v3, v0, LKk;->c:LHg;

    iget-object v4, v0, LKk;->d:LIg;

    iget-object v5, v0, LKk;->e:LIg;

    iget-object v6, v0, LKk;->f:LIg;

    iget-object v7, v0, LKk;->g:LJg;

    iget-object v8, v0, LKk;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v0, LKk;->i:LJg;

    iget-object v10, v0, LKk;->j:Landroid/widget/LinearLayout;

    iget-object v11, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v12, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O0:Lt3;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_8

    const/4 v15, 0x2

    if-eq v12, v14, :cond_4

    if-eq v12, v15, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, v4, LIg;->a:F

    sub-float/2addr v0, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v5, LIg;->a:F

    sub-float/2addr v4, v5

    iget-boolean v5, v2, LHg;->a:Z

    if-nez v5, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    iput-boolean v14, v2, LHg;->a:Z

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v10, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-boolean v2, v2, LHg;->a:Z

    if-eqz v2, :cond_3

    iput-boolean v14, v3, LHg;->a:Z

    iget v2, v7, LJg;->a:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v9, LJg;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    invoke-interface {v0, v10, v8}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    move v13, v14

    goto/16 :goto_2

    :cond_4
    iget-boolean v4, v2, LHg;->a:Z

    if-eqz v4, :cond_5

    iget-boolean v3, v3, LHg;->a:Z

    if-eqz v3, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B0:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "x"

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "y"

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_5
    iget v3, v6, LIg;->a:F

    iget v4, v0, LKk;->k:I

    int-to-float v5, v4

    iget v0, v0, LKk;->l:I

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    add-float/2addr v6, v5

    cmpg-float v5, v3, v6

    if-gez v5, :cond_6

    invoke-virtual {v1, v14}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_1

    :cond_6
    mul-int/2addr v4, v15

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_7

    new-instance v0, LJk;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    new-instance v0, LJk;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iput-boolean v13, v2, LHg;->a:Z

    goto :goto_0

    :cond_8
    iput-boolean v13, v2, LHg;->a:Z

    iput-boolean v13, v3, LHg;->a:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v4, LIg;->a:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v5, LIg;->a:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, LIg;->a:F

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v7, LJg;->a:I

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v9, LJg;->a:I

    goto/16 :goto_0

    :goto_2
    return v13
.end method
