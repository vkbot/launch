.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# instance fields
.field public a:Z


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 1

    sget-object v0, LVb;->ON_DESTROY:LVb;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Lbc;->d()Landroidx/lifecycle/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->f(Lac;)V

    :cond_0
    return-void
.end method
