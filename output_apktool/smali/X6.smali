.class public final LX6;
.super Lv1;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Z

.field public e:LK1;


# virtual methods
.method public final j(Landroid/content/Context;)LK1;
    .locals 4

    iget-boolean v0, p0, LX6;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LX6;->e:LK1;

    return-object p0

    :cond_0
    iget-object v0, p0, Lv1;->a:Ljava/lang/Object;

    check-cast v0, Lvi;

    iget v1, v0, Lvi;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, LX6;->c:Z

    iget-object v0, v0, Lvi;->c:Lx9;

    invoke-static {p1, v0, v1, v2}, LC6;->B(Landroid/content/Context;Lx9;ZZ)LK1;

    move-result-object p1

    iput-object p1, p0, LX6;->e:LK1;

    iput-boolean v3, p0, LX6;->d:Z

    return-object p1
.end method
