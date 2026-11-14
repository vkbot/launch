.class public final Lon;
.super Lih;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;LS5;)V
    .locals 0

    iput-object p1, p0, Lon;->e:Landroid/view/View;

    invoke-direct {p0, p2}, Lih;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance v0, Lon;

    iget-object p0, p0, Lon;->e:Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lon;-><init>(Landroid/view/View;LS5;)V

    iput-object p2, v0, Lon;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lon;->c:I

    iget-object v2, p0, Lon;->e:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    sget-object v4, Lsm;->a:Lsm;

    const/4 v5, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lon;->d:Ljava/lang/Object;

    check-cast v1, LMh;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    instance-of p1, v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    new-instance p1, Lln;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lln;-><init>(Landroid/view/ViewGroup;LS5;)V

    iput-object v3, p0, Lon;->d:Ljava/lang/Object;

    iput v5, p0, Lon;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LMh;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v2, p1}, LC6;->f(LS5;LS5;Lha;)LS5;

    move-result-object p1

    iput-object p1, v2, LMh;->d:LS5;

    invoke-virtual {v2}, LMh;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p0, v4

    goto :goto_0

    :cond_2
    iput-object v2, v1, LMh;->c:Ljava/util/Iterator;

    iput v5, v1, LMh;->a:I

    iput-object p0, v1, LMh;->d:LS5;

    move-object p0, v0

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v4

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Lon;->d:Ljava/lang/Object;

    check-cast p1, LMh;

    iput-object p1, p0, Lon;->d:Ljava/lang/Object;

    iput v3, p0, Lon;->c:I

    invoke-virtual {p1, v2, p0}, LMh;->b(Ljava/lang/Object;Lih;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LMh;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lon;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lon;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lon;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
