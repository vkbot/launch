.class public final Lyj;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lzj;


# direct methods
.method public constructor <init>(Lzj;LS5;)V
    .locals 0

    iput-object p1, p0, Lyj;->f:Lzj;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, Lyj;

    iget-object p0, p0, Lyj;->f:Lzj;

    invoke-direct {p2, p0, p1}, Lyj;-><init>(Lzj;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lyj;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iput v2, p0, Lyj;->e:I

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, p0}, Lfm;->j(JLT5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lzj;->s:Ljava/util/Set;

    iget-object p0, p0, Lyj;->f:Lzj;

    invoke-virtual {p0}, Lzj;->j()V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lyj;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lyj;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lyj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
