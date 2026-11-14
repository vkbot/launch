.class public final LQd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public final synthetic b:LTd;

.field public c:LL;


# direct methods
.method public constructor <init>(LTd;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQd;->b:LTd;

    iput-object p2, p0, LQd;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a(LPd;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LQd;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, LQd;->c:LL;

    if-eqz p0, :cond_0

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, LPd;

    iget-object p0, p0, LPd;->n:LLd;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLd;->h:Z

    invoke-virtual {p0, p1}, LLd;->p(Z)V

    :cond_0
    return-void
.end method
