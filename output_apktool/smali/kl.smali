.class public final Lkl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lhl;


# direct methods
.method public constructor <init>(Lhl;LS5;)V
    .locals 0

    iput-object p1, p0, Lkl;->e:Lhl;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, Lkl;

    iget-object p0, p0, Lkl;->e:Lhl;

    invoke-direct {p2, p0, p1}, Lkl;-><init>(Lhl;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object p0, p0, Lkl;->e:Lhl;

    iget-object v0, v0, LOg;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lhl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lkl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lkl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lkl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
