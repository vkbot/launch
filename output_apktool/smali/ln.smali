.class public final Lln;
.super Lih;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/View;

.field public e:I

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;LS5;)V
    .locals 0

    iput-object p1, p0, Lln;->i:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lih;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance v0, Lln;

    iget-object p0, p0, Lln;->i:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p1}, Lln;-><init>(Landroid/view/ViewGroup;LS5;)V

    iput-object p2, v0, Lln;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lln;->g:I

    sget-object v2, Lsm;->a:Lsm;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v4, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget v1, p0, Lln;->f:I

    iget v4, p0, Lln;->e:I

    iget-object v5, p0, Lln;->c:Landroid/view/ViewGroup;

    iget-object v6, p0, Lln;->h:Ljava/lang/Object;

    check-cast v6, LMh;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lln;->f:I

    iget v5, p0, Lln;->e:I

    iget-object v6, p0, Lln;->d:Landroid/view/View;

    iget-object v7, p0, Lln;->c:Landroid/view/ViewGroup;

    iget-object v8, p0, Lln;->h:Ljava/lang/Object;

    check-cast v8, LMh;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    instance-of p1, v6, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    check-cast v6, Landroid/view/ViewGroup;

    new-instance p1, Lln;

    const/4 v9, 0x0

    invoke-direct {p1, v6, v9}, Lln;-><init>(Landroid/view/ViewGroup;LS5;)V

    iput-object v8, p0, Lln;->h:Ljava/lang/Object;

    iput-object v7, p0, Lln;->c:Landroid/view/ViewGroup;

    iput-object v9, p0, Lln;->d:Landroid/view/View;

    iput v5, p0, Lln;->e:I

    iput v1, p0, Lln;->f:I

    iput v4, p0, Lln;->g:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LMh;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v6, p1}, LC6;->f(LS5;LS5;Lha;)LS5;

    move-result-object p1

    iput-object p1, v6, LMh;->d:LS5;

    invoke-virtual {v6}, LMh;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_2
    iput-object v6, v8, LMh;->c:Ljava/util/Iterator;

    iput v4, v8, LMh;->a:I

    iput-object p0, v8, LMh;->d:LS5;

    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move v4, v5

    move-object v5, v7

    move-object v6, v8

    :goto_2
    move-object v7, v5

    move-object v8, v6

    move v5, v4

    :cond_5
    add-int/2addr v5, v3

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Lln;->h:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, LMh;

    iget-object v7, p0, Lln;->i:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object v8, p0, Lln;->h:Ljava/lang/Object;

    iput-object v7, p0, Lln;->c:Landroid/view/ViewGroup;

    iput-object p1, p0, Lln;->d:Landroid/view/View;

    iput v5, p0, Lln;->e:I

    iput v1, p0, Lln;->f:I

    iput v3, p0, Lln;->g:I

    invoke-virtual {v8, p1, p0}, LMh;->b(Ljava/lang/Object;Lih;)V

    return-object v0

    :cond_7
    return-object v2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LMh;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lln;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lln;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lln;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
