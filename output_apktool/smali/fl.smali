.class public final Lfl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V
    .locals 1

    sget-object v0, LKi;->a:LKi;

    iput-object p1, p0, Lfl;->e:Landroid/widget/TextView;

    iput-object p2, p0, Lfl;->f:Landroid/widget/TextView;

    iput-object p3, p0, Lfl;->g:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 3

    new-instance p2, Lfl;

    iget-object v0, p0, Lfl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfl;->g:Landroid/widget/TextView;

    iget-object p0, p0, Lfl;->e:Landroid/widget/TextView;

    sget-object v2, LKi;->a:LKi;

    invoke-direct {p2, p0, v0, v1, p1}, Lfl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->d()LOb;

    move-result-object p1

    iget-object v0, p0, Lfl;->e:Landroid/widget/TextView;

    iget-object p1, p1, LOb;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lfl;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lfl;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lfl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lfl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lfl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
