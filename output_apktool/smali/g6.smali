.class public abstract Lg6;
.super Lg;
.source "SourceFile"

# interfaces
.implements LU5;


# static fields
.field public static final b:Lf6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf6;

    sget-object v1, LT7;->b:LT7;

    sget-object v2, Lz4;->f:Lz4;

    invoke-direct {v0, v1, v2}, Lf6;-><init>(Ld6;Lda;)V

    sput-object v0, Lg6;->b:Lf6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, LT7;->b:LT7;

    invoke-direct {p0, v0}, Lg;-><init>(Ld6;)V

    return-void
.end method


# virtual methods
.method public final b(Ld6;)Lc6;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lf6;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lf6;

    iget-object v0, p0, Lg;->a:Ld6;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, Lf6;->b:Ld6;

    if-ne v2, v0, :cond_3

    :cond_0
    iget-object p1, p1, Lf6;->a:LNb;

    invoke-interface {p1, p0}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_1
    sget-object v0, LT7;->b:LT7;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public final d(Ld6;)Le6;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lf6;

    sget-object v1, Lt8;->a:Lt8;

    if-eqz v0, :cond_1

    check-cast p1, Lf6;

    iget-object v0, p0, Lg;->a:Ld6;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, Lf6;->b:Ld6;

    if-ne v2, v0, :cond_2

    :cond_0
    iget-object p1, p1, Lf6;->a:LNb;

    invoke-interface {p1, p0}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6;

    if-eqz p1, :cond_2

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    sget-object v0, LT7;->b:LT7;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public abstract g(Le6;Ljava/lang/Runnable;)V
.end method

.method public h()Z
    .locals 0

    instance-of p0, p0, Lmm;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LC6;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
