.class public abstract Lhh;
.super Lj3;
.source "SourceFile"


# direct methods
.method public constructor <init>(LS5;)V
    .locals 0

    invoke-direct {p0, p1}, Lj3;-><init>(LS5;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, LS5;->i()Le6;

    move-result-object p0

    sget-object p1, Lt8;->a:Lt8;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final i()Le6;
    .locals 0

    sget-object p0, Lt8;->a:Lt8;

    return-object p0
.end method
