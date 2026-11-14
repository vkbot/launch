.class public Luo;
.super Lto;
.source "SourceFile"


# instance fields
.field public n:Ldb;

.field public o:Ldb;

.field public p:Ldb;


# direct methods
.method public constructor <init>(Lyo;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lto;-><init>(Lyo;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Luo;->n:Ldb;

    iput-object p1, p0, Luo;->o:Ldb;

    iput-object p1, p0, Luo;->p:Ldb;

    return-void
.end method


# virtual methods
.method public g()Ldb;
    .locals 1

    iget-object v0, p0, Luo;->o:Ldb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldb;->c(Landroid/graphics/Insets;)Ldb;

    move-result-object v0

    iput-object v0, p0, Luo;->o:Ldb;

    :cond_0
    iget-object p0, p0, Luo;->o:Ldb;

    return-object p0
.end method

.method public i()Ldb;
    .locals 1

    iget-object v0, p0, Luo;->n:Ldb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldb;->c(Landroid/graphics/Insets;)Ldb;

    move-result-object v0

    iput-object v0, p0, Luo;->n:Ldb;

    :cond_0
    iget-object p0, p0, Luo;->n:Ldb;

    return-object p0
.end method

.method public k()Ldb;
    .locals 1

    iget-object v0, p0, Luo;->p:Ldb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldb;->c(Landroid/graphics/Insets;)Ldb;

    move-result-object v0

    iput-object v0, p0, Luo;->p:Ldb;

    :cond_0
    iget-object p0, p0, Luo;->p:Ldb;

    return-object p0
.end method

.method public l(IIII)Lyo;
    .locals 0

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object p0

    return-object p0
.end method
