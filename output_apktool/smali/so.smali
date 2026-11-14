.class public abstract Lso;
.super Lro;
.source "SourceFile"


# instance fields
.field public m:Ldb;


# direct methods
.method public constructor <init>(Lyo;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lro;-><init>(Lyo;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lso;->m:Ldb;

    return-void
.end method


# virtual methods
.method public b()Lyo;
    .locals 1

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object p0

    return-object p0
.end method

.method public c()Lyo;
    .locals 1

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ldb;
    .locals 4

    iget-object v0, p0, Lso;->m:Ldb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Ldb;->b(IIII)Ldb;

    move-result-object v0

    iput-object v0, p0, Lso;->m:Ldb;

    :cond_0
    iget-object p0, p0, Lso;->m:Ldb;

    return-object p0
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
