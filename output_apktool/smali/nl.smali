.class public final Lnl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:LB4;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(LB4;ILS5;)V
    .locals 0

    iput-object p1, p0, Lnl;->e:LB4;

    iput p2, p0, Lnl;->f:I

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lnl;

    iget-object v0, p0, Lnl;->e:LB4;

    iget p0, p0, Lnl;->f:I

    invoke-direct {p2, v0, p0, p1}, Lnl;-><init>(LB4;ILS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Integer;

    iget v0, p0, Lnl;->f:I

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lnl;->e:LB4;

    invoke-virtual {p0, p1}, LB4;->h(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lnl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lnl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lnl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
