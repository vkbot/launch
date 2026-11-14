.class public final Ljf;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lmf;

.field public final synthetic f:Lif;


# direct methods
.method public constructor <init>(Lmf;Lif;LS5;)V
    .locals 0

    iput-object p1, p0, Ljf;->e:Lmf;

    iput-object p2, p0, Ljf;->f:Lif;

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Ljf;

    iget-object v0, p0, Ljf;->e:Lmf;

    iget-object p0, p0, Ljf;->f:Lif;

    invoke-direct {p2, v0, p0, p1}, Ljf;-><init>(Lmf;Lif;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Ljf;->e:Lmf;

    iget-object p0, p0, Ljf;->f:Lif;

    invoke-virtual {p1, p0}, Lmf;->e(Lif;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Ljf;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Ljf;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Ljf;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
