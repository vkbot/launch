.class public abstract Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6;


# instance fields
.field public final a:Ld6;


# direct methods
.method public constructor <init>(Ld6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg;->a:Ld6;

    return-void
.end method


# virtual methods
.method public b(Ld6;)Lc6;
    .locals 0

    invoke-static {p0, p1}, Lfm;->l(Lc6;Ld6;)Lc6;

    move-result-object p0

    return-object p0
.end method

.method public d(Ld6;)Le6;
    .locals 0

    invoke-static {p0, p1}, Lfm;->v(Lc6;Ld6;)Le6;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lha;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Le6;)Le6;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt8;->a:Lt8;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LV4;->d:LV4;

    invoke-interface {p1, p0, v0}, Le6;->e(Ljava/lang/Object;Lha;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le6;

    :goto_0
    return-object p0
.end method

.method public final getKey()Ld6;
    .locals 0

    iget-object p0, p0, Lg;->a:Ld6;

    return-object p0
.end method
