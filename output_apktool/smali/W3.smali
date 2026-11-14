.class public final LW3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:LX3;

.field public final synthetic b:LPd;

.field public final synthetic c:LLd;

.field public final synthetic d:LL;


# direct methods
.method public constructor <init>(LL;LX3;LPd;LLd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW3;->d:LL;

    iput-object p2, p0, LW3;->a:LX3;

    iput-object p3, p0, LW3;->b:LPd;

    iput-object p4, p0, LW3;->c:LLd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LW3;->a:LX3;

    if-eqz v0, :cond_0

    iget-object v1, p0, LW3;->d:LL;

    iget-object v2, v1, LL;->b:Ljava/lang/Object;

    check-cast v2, LY3;

    const/4 v3, 0x1

    iput-boolean v3, v2, LY3;->z:Z

    iget-object v0, v0, LX3;->b:LLd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LLd;->c(Z)V

    iget-object v0, v1, LL;->b:Ljava/lang/Object;

    check-cast v0, LY3;

    iput-boolean v2, v0, LY3;->z:Z

    :cond_0
    iget-object v0, p0, LW3;->b:LPd;

    invoke-virtual {v0}, LPd;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LPd;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, LW3;->c:LLd;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LLd;->q(Landroid/view/MenuItem;Lee;I)Z

    :cond_1
    return-void
.end method
