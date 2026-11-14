.class public abstract Lra;
.super LI3;
.source "SourceFile"

# interfaces
.implements Lqa;
.implements LIb;
.implements Lpa;


# instance fields
.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, LI3;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lra;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lra;->h:I

    return-void
.end method


# virtual methods
.method public final b()LIb;
    .locals 1

    sget-object v0, LLg;->a:LMg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lra;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lra;

    iget-object v1, p1, LI3;->d:Ljava/lang/String;

    iget-object v3, p0, LI3;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LI3;->e:Ljava/lang/String;

    iget-object v3, p1, LI3;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lra;->h:I

    iget v3, p1, Lra;->h:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lra;->g:I

    iget v3, p1, Lra;->g:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LI3;->b:Ljava/lang/Object;

    iget-object v3, p1, LI3;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LI3;->a()Lu4;

    move-result-object p0

    invoke-virtual {p1}, LI3;->a()Lu4;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, Lra;

    if-eqz v0, :cond_4

    iget-object v0, p0, LI3;->a:LIb;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lra;->b()LIb;

    iput-object p0, p0, LI3;->a:LIb;

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lra;->g:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, LI3;->a()Lu4;

    invoke-virtual {p0}, LI3;->a()Lu4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LI3;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, LI3;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LI3;->a:LIb;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lra;->b()LIb;

    iput-object p0, p0, LI3;->a:LIb;

    move-object v0, p0

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, LI3;->d:Ljava/lang/String;

    const-string v0, "<init>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
