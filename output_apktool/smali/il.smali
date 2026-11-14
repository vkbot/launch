.class public final Lil;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILS5;)V
    .locals 1

    sget-object v0, LKi;->a:LKi;

    iput-object p1, p0, Lil;->e:Landroid/widget/TextView;

    iput p2, p0, Lil;->f:I

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lil;

    sget-object v0, LKi;->a:LKi;

    iget-object v0, p0, Lil;->e:Landroid/widget/TextView;

    iget p0, p0, Lil;->f:I

    invoke-direct {p2, v0, p0, p1}, Lil;-><init>(Landroid/widget/TextView;ILS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lil;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lil;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lil;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lil;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lil;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
