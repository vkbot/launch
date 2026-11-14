.class public final LNl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;LS5;)V
    .locals 0

    iput-object p1, p0, LNl;->e:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, LNl;

    iget-object p0, p0, LNl;->e:Landroid/widget/TextView;

    invoke-direct {p2, p0, p1}, LNl;-><init>(Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p1

    iget-object p0, p0, LNl;->e:Landroid/widget/TextView;

    iget-object p1, p1, LOg;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LNl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LNl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LNl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
