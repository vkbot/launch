.class public abstract Ldj;
.super LT5;
.source "SourceFile"

# interfaces
.implements Lqa;


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(LS5;)V
    .locals 0

    invoke-direct {p0, p1}, LT5;-><init>(LS5;)V

    const/4 p1, 0x2

    iput p1, p0, Ldj;->d:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    iget p0, p0, Ldj;->d:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj3;->a:LS5;

    if-nez v0, :cond_0

    sget-object v0, LLg;->a:LMg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LMg;->a(Lqa;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lj3;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
