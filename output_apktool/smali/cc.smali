.class public final Lcc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LWb;

.field public b:LZb;


# virtual methods
.method public final a(Lbc;LVb;)V
    .locals 3

    invoke-virtual {p2}, LVb;->a()LWb;

    move-result-object v0

    iget-object v1, p0, Lcc;->a:LWb;

    const-string v2, "state1"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lcc;->a:LWb;

    iget-object v1, p0, Lcc;->b:LZb;

    invoke-interface {v1, p1, p2}, LZb;->b(Lbc;LVb;)V

    iput-object v0, p0, Lcc;->a:LWb;

    return-void
.end method
