.class public final LPl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V
    .locals 0

    iput-object p1, p0, LPl;->e:Landroid/widget/TextView;

    iput-object p2, p0, LPl;->f:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, LPl;

    iget-object v0, p0, LPl;->e:Landroid/widget/TextView;

    iget-object p0, p0, LPl;->f:Landroid/widget/TextView;

    invoke-direct {p2, v0, p0, p1}, LPl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p1

    iget-object v0, p0, LPl;->e:Landroid/widget/TextView;

    iget-object p1, p1, LOg;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, LPl;->f:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LPl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LPl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LPl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
