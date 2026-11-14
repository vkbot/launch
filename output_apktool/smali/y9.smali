.class public final Ly9;
.super Lnb;
.source "SourceFile"

# interfaces
.implements Lsn;
.implements Lbc;
.implements LM9;


# instance fields
.field public final r:Lb1;

.field public final s:Lb1;

.field public final t:Landroid/os/Handler;

.field public final u:LJ9;

.field public final synthetic v:Lb1;


# direct methods
.method public constructor <init>(Lb1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9;->v:Lb1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LJ9;

    invoke-direct {v1}, LJ9;-><init>()V

    iput-object v1, p0, Ly9;->u:LJ9;

    iput-object p1, p0, Ly9;->r:Lb1;

    iput-object p1, p0, Ly9;->s:Lb1;

    iput-object v0, p0, Ly9;->t:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final R(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ly9;->v:Lb1;

    invoke-virtual {p0, p1}, Lb1;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final S()Z
    .locals 0

    iget-object p0, p0, Ly9;->v:Lb1;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()Lrn;
    .locals 0

    iget-object p0, p0, Ly9;->v:Lb1;

    invoke-virtual {p0}, Landroidx/activity/a;->c()Lrn;

    move-result-object p0

    return-object p0
.end method

.method public final d()Landroidx/lifecycle/a;
    .locals 0

    iget-object p0, p0, Ly9;->v:Lb1;

    iget-object p0, p0, Lb1;->q:Landroidx/lifecycle/a;

    return-object p0
.end method
