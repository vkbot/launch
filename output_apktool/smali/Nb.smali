.class public abstract LNb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqa;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LNb;->a:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    iget p0, p0, LNb;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LLg;->a:LMg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LMg;->a(Lqa;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
