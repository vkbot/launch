.class public final Lyo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyo;


# instance fields
.field public final a:Lwo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lvo;->q:Lyo;

    sput-object v0, Lyo;->b:Lyo;

    goto :goto_0

    :cond_0
    sget-object v0, Lwo;->b:Lyo;

    sput-object v0, Lyo;->b:Lyo;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lwo;

    invoke-direct {v0, p0}, Lwo;-><init>(Lyo;)V

    iput-object v0, p0, Lyo;->a:Lwo;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lvo;

    invoke-direct {v0, p0, p1}, Lvo;-><init>(Lyo;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lyo;->a:Lwo;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Luo;

    invoke-direct {v0, p0, p1}, Luo;-><init>(Lyo;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lyo;->a:Lwo;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;
    .locals 2

    new-instance v0, Lyo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lyo;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    sget-object p1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LUm;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, LYm;->a(Landroid/view/View;)Lyo;

    move-result-object p1

    iget-object v1, v0, Lyo;->a:Lwo;

    invoke-virtual {v1, p1}, Lwo;->p(Lyo;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lwo;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lyo;->a:Lwo;

    invoke-virtual {p0}, Lwo;->j()Ldb;

    move-result-object p0

    iget p0, p0, Ldb;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lyo;->a:Lwo;

    invoke-virtual {p0}, Lwo;->j()Ldb;

    move-result-object p0

    iget p0, p0, Ldb;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lyo;->a:Lwo;

    invoke-virtual {p0}, Lwo;->j()Ldb;

    move-result-object p0

    iget p0, p0, Ldb;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lyo;->a:Lwo;

    invoke-virtual {p0}, Lwo;->j()Ldb;

    move-result-object p0

    iget p0, p0, Ldb;->b:I

    return p0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Lyo;->a:Lwo;

    instance-of v0, p0, Lro;

    if-eqz v0, :cond_0

    check-cast p0, Lro;

    iget-object p0, p0, Lro;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyo;

    iget-object p1, p1, Lyo;->a:Lwo;

    iget-object p0, p0, Lyo;->a:Lwo;

    invoke-static {p0, p1}, LHe;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyo;->a:Lwo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lwo;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
