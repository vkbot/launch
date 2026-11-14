.class public abstract LH8;
.super Lg6;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Z

.field public e:LT2;


# virtual methods
.method public final i()V
    .locals 4

    iget-wide v0, p0, LH8;->c:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, LH8;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LH8;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LH8;->n()V

    :cond_1
    return-void
.end method

.method public abstract j()Ljava/lang/Thread;
.end method

.method public final k(Z)V
    .locals 4

    iget-wide v0, p0, LH8;->c:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, LH8;->c:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LH8;->d:Z

    :cond_1
    return-void
.end method

.method public final l()Z
    .locals 2

    iget-object p0, p0, LH8;->e:LT2;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LT2;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LT2;->h()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lu7;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lu7;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public m(JLE8;)V
    .locals 0

    sget-object p0, LG6;->i:LG6;

    invoke-virtual {p0, p1, p2, p3}, LG8;->s(JLE8;)V

    return-void
.end method

.method public abstract n()V
.end method
