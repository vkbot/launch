.class public final LV6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lvi;

.field public final synthetic e:LX6;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLvi;LX6;)V
    .locals 0

    iput-object p1, p0, LV6;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, LV6;->b:Landroid/view/View;

    iput-boolean p3, p0, LV6;->c:Z

    iput-object p4, p0, LV6;->d:Lvi;

    iput-object p5, p0, LV6;->e:LX6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LV6;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, LV6;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, LV6;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LV6;->d:Lvi;

    iget p1, p1, Lvi;->a:I

    invoke-static {v0, p1}, Lpi;->a(Landroid/view/View;I)V

    :cond_0
    iget-object p0, p0, LV6;->e:LX6;

    invoke-virtual {p0}, Lv1;->d()V

    return-void
.end method
