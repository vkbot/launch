.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# instance fields
.field public final a:Lth;


# direct methods
.method public constructor <init>(Lth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Lth;

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 1

    sget-object v0, LVb;->ON_CREATE:LVb;

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Lbc;->d()Landroidx/lifecycle/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->f(Lac;)V

    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->a:Lth;

    iget-boolean p1, p0, Lth;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lth;->a:Lh1;

    const-string p2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p1, p2}, Lh1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lth;->c:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lth;->b:Z

    iget-object p0, p0, Lth;->d:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luh;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Next event must be ON_CREATE, it was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
