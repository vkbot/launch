.class public final LW6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LX6;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;LX6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW6;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, LW6;->b:Landroid/view/View;

    iput-object p3, p0, LW6;->c:LX6;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, LJ2;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, LW6;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
