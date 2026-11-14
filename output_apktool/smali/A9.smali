.class public final LA9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/a;

.field public final synthetic b:LB9;


# direct methods
.method public constructor <init>(LB9;Landroidx/fragment/app/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA9;->b:LB9;

    iput-object p2, p0, LA9;->a:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LA9;->a:Landroidx/fragment/app/a;

    invoke-virtual {p1}, Landroidx/fragment/app/a;->k()V

    iget-object p1, p1, Landroidx/fragment/app/a;->c:Lx9;

    iget-object p1, p1, Lx9;->E:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, LA9;->b:LB9;

    iget-object p0, p0, LB9;->a:LJ9;

    invoke-virtual {p0}, LJ9;->C()LT7;

    move-result-object p0

    invoke-static {p1, p0}, LZ6;->f(Landroid/view/ViewGroup;LT7;)LZ6;

    move-result-object p0

    invoke-virtual {p0}, LZ6;->e()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
