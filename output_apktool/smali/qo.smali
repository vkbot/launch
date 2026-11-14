.class public abstract Lqo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyo;

.field public b:[Ldb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lyo;

    invoke-direct {v0}, Lyo;-><init>()V

    invoke-direct {p0, v0}, Lqo;-><init>(Lyo;)V

    return-void
.end method

.method public constructor <init>(Lyo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lqo;->a:Lyo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lqo;->b:[Ldb;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lqo;->a:Lyo;

    if-nez v0, :cond_0

    iget-object v0, v3, Lyo;->a:Lwo;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lwo;->f(I)Ldb;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, Lyo;->a:Lwo;

    invoke-virtual {v1, v2}, Lwo;->f(I)Ldb;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, Ldb;->a(Ldb;Ldb;)Ldb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqo;->f(Ldb;)V

    iget-object v0, p0, Lqo;->b:[Ldb;

    const/16 v1, 0x10

    invoke-static {v1}, Lvf;->i(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lqo;->e(Ldb;)V

    :cond_2
    iget-object v0, p0, Lqo;->b:[Ldb;

    const/16 v1, 0x20

    invoke-static {v1}, Lvf;->i(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lqo;->d(Ldb;)V

    :cond_3
    iget-object v0, p0, Lqo;->b:[Ldb;

    const/16 v1, 0x40

    invoke-static {v1}, Lvf;->i(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lqo;->g(Ldb;)V

    :cond_4
    return-void
.end method

.method public abstract b()Lyo;
.end method

.method public c(ILdb;)V
    .locals 3

    iget-object v0, p0, Lqo;->b:[Ldb;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [Ldb;

    iput-object v0, p0, Lqo;->b:[Ldb;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lqo;->b:[Ldb;

    invoke-static {v0}, Lvf;->i(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract d(Ldb;)V
.end method

.method public abstract e(Ldb;)V
.end method

.method public abstract f(Ldb;)V
.end method

.method public abstract g(Ldb;)V
.end method
