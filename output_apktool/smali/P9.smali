.class public final LP9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEa;
.implements Lyh;
.implements Lsn;


# instance fields
.field public final a:Lrn;

.field public b:Landroidx/lifecycle/a;

.field public c:LQ9;


# direct methods
.method public constructor <init>(Lrn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LP9;->b:Landroidx/lifecycle/a;

    iput-object v0, p0, LP9;->c:LQ9;

    iput-object p1, p0, LP9;->a:Lrn;

    return-void
.end method


# virtual methods
.method public final b()Lh1;
    .locals 0

    invoke-virtual {p0}, LP9;->f()V

    iget-object p0, p0, LP9;->c:LQ9;

    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Lh1;

    return-object p0
.end method

.method public final c()Lrn;
    .locals 0

    invoke-virtual {p0}, LP9;->f()V

    iget-object p0, p0, LP9;->a:Lrn;

    return-object p0
.end method

.method public final d()Landroidx/lifecycle/a;
    .locals 0

    invoke-virtual {p0}, LP9;->f()V

    iget-object p0, p0, LP9;->b:Landroidx/lifecycle/a;

    return-object p0
.end method

.method public final e(LVb;)V
    .locals 0

    iget-object p0, p0, LP9;->b:Landroidx/lifecycle/a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->d(LVb;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LP9;->b:Landroidx/lifecycle/a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, LP9;->b:Landroidx/lifecycle/a;

    new-instance v0, LQ9;

    invoke-direct {v0, p0}, LQ9;-><init>(Lyh;)V

    iput-object v0, p0, LP9;->c:LQ9;

    :cond_0
    return-void
.end method
