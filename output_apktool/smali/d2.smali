.class public final Ld2;
.super Lff;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Lj2;


# direct methods
.method public constructor <init>(Lj2;IILjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2;->d:Lj2;

    iput p2, p0, Ld2;->a:I

    iput p3, p0, Ld2;->b:I

    iput-object p4, p0, Ld2;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final A(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Ld2;->a:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Ld2;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Li2;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Ld2;->d:Lj2;

    iget-boolean v1, v0, Lj2;->m:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Lj2;->l:Landroid/graphics/Typeface;

    iget-object p0, p0, Ld2;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LUm;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lj2;->j:I

    new-instance v1, Le2;

    invoke-direct {v1, p0, p1, v0}, Le2;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Lj2;->j:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final z(I)V
    .locals 0

    return-void
.end method
