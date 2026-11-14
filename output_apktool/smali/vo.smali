.class public final Lvo;
.super Luo;
.source "SourceFile"


# static fields
.field public static final q:Lyo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lz;->g()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object v0

    sput-object v0, Lvo;->q:Lyo;

    return-void
.end method

.method public constructor <init>(Lyo;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Luo;-><init>(Lyo;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)Ldb;
    .locals 0

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lxo;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Lz;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Ldb;->c(Landroid/graphics/Insets;)Ldb;

    move-result-object p0

    return-object p0
.end method
