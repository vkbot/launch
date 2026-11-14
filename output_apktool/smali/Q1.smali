.class public final LQ1;
.super Lu9;
.source "SourceFile"


# instance fields
.field public final synthetic j:LZ1;

.field public final synthetic k:Lc2;


# direct methods
.method public constructor <init>(Lc2;Lc2;LZ1;)V
    .locals 0

    iput-object p1, p0, LQ1;->k:Lc2;

    iput-object p3, p0, LQ1;->j:LZ1;

    invoke-direct {p0, p2}, Lu9;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lhi;
    .locals 0

    iget-object p0, p0, LQ1;->j:LZ1;

    return-object p0
.end method

.method public final c()Z
    .locals 2

    iget-object p0, p0, LQ1;->k:Lc2;

    invoke-virtual {p0}, Lc2;->getInternalPopup()Lb2;

    move-result-object v0

    invoke-interface {v0}, Lb2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, LT1;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, LT1;->a(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lc2;->f:Lb2;

    invoke-interface {p0, v0, v1}, Lb2;->f(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
