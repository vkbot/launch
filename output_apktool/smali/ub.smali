.class public final Lub;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lvb;


# direct methods
.method public constructor <init>(Lvb;)V
    .locals 0

    iput-object p1, p0, Lub;->b:Lvb;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lub;->a:Z

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lub;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lub;->b:Lvb;

    invoke-virtual {p0, p1}, Lvb;->l(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)LEg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvb;->m:Lvj;

    iget-object v2, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, LSm;->d(Landroid/view/View;)I

    move-result v1

    const/16 v2, 0x101

    invoke-static {v2, v1}, Lvj;->b(II)I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lvb;->l:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput v2, p0, Lvb;->d:F

    iput p1, p0, Lvb;->e:F

    const/4 p1, 0x0

    iput p1, p0, Lvb;->i:F

    iput p1, p0, Lvb;->h:F

    iget-object p1, p0, Lvb;->m:Lvj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lvb;->q(LEg;I)V

    nop

    :cond_1
    return-void
.end method
