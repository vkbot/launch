.class public final synthetic LWc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:LQ7;

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;


# direct methods
.method public synthetic constructor <init>(LQ7;Lcom/omoda/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWc;->a:LQ7;

    iput-object p2, p0, LWc;->b:Lcom/omoda/launcher/MainActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 p1, 0x1

    sget-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    iget-object v0, p0, LWc;->a:LQ7;

    iget-object p0, p0, LWc;->b:Lcom/omoda/launcher/MainActivity;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-array v1, v2, [I

    iget-object v2, v0, LQ7;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr p2, v1

    int-to-float v1, v2

    div-float/2addr p2, v1

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3f59999a    # 0.85f

    invoke-static {p2, v1, v2}, Lvf;->e(FFF)F

    move-result p2

    sget-object v1, LC6;->u:[F

    :goto_0
    const/4 v2, 0x3

    if-ge v3, v2, :cond_1

    aget v2, v1, v3

    sub-float v4, p2, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3cf5c28f    # 0.03f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    add-int/2addr v3, p1

    goto :goto_0

    :cond_1
    :goto_1
    iput p2, p0, Lcom/omoda/launcher/MainActivity;->A:F

    iget-object v1, v0, LQ7;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v2, v3}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v0, LQ7;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v3}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    int-to-float v3, p1

    sub-float/2addr v3, p2

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/omoda/launcher/MainActivity;->O(LQ7;)V

    invoke-virtual {p0, v0}, Lcom/omoda/launcher/MainActivity;->N(LQ7;)V

    :cond_2
    return p1
.end method
