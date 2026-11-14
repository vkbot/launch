.class public final Lpo;
.super Loo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lyo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loo;-><init>(Lyo;)V

    return-void
.end method


# virtual methods
.method public c(ILdb;)V
    .locals 0

    invoke-static {p1}, Lxo;->a(I)I

    move-result p1

    invoke-virtual {p2}, Ldb;->d()Landroid/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Loo;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p0, p1, p2}, Lz;->p(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
