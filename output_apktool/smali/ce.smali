.class public final Lce;
.super LAc;
.source "SourceFile"

# interfaces
.implements LOd;


# instance fields
.field public A:LL;


# virtual methods
.method public final o(LLd;LPd;)V
    .locals 0

    iget-object p0, p0, Lce;->A:LL;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, LL;->o(LLd;LPd;)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/Context;Z)LK7;
    .locals 1

    new-instance v0, Lbe;

    invoke-direct {v0, p1, p2}, Lbe;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lbe;->setHoverListener(LOd;)V

    return-object v0
.end method

.method public final q(LLd;LPd;)V
    .locals 0

    iget-object p0, p0, Lce;->A:LL;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, LL;->q(LLd;LPd;)V

    :cond_0
    return-void
.end method
