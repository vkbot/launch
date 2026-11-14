.class public final Lxj;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:J

.field public f:I

.field public final synthetic g:Lzj;

.field public final synthetic h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lzj;Ljava/util/ArrayList;LS5;)V
    .locals 0

    iput-object p1, p0, Lxj;->g:Lzj;

    iput-object p2, p0, Lxj;->h:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lxj;

    iget-object v0, p0, Lxj;->g:Lzj;

    iget-object p0, p0, Lxj;->h:Ljava/util/ArrayList;

    invoke-direct {p2, v0, p0, p1}, Lxj;-><init>(Lzj;Ljava/util/ArrayList;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lxj;->f:I

    iget-object v2, p0, Lxj;->g:Lzj;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Lxj;->e:J

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object p1, Lv7;->b:LJ6;

    new-instance v1, Lwj;

    iget-object v6, p0, Lxj;->h:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7}, Lwj;-><init>(Lzj;Ljava/util/ArrayList;LS5;)V

    iput-wide v4, p0, Lxj;->e:J

    iput v3, p0, Lxj;->f:I

    invoke-static {p1, v1, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v4

    :goto_0
    check-cast p1, Ljava/util/Map;

    sget-object p0, Lsm;->a:Lsm;

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "memory of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskManagerPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, v2, Lzj;->r:Ljava/util/Map;

    iget-object p1, v2, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, v2, Lzj;->p:Loj;

    iget-object v0, v0, Lfg;->a:Lgg;

    const/4 v1, 0x0

    const-string v2, "memory"

    invoke-virtual {v0, v1, p1, v2}, Lgg;->c(IILjava/lang/Object;)V

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lxj;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lxj;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lxj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
