.class public final Lgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:LV2;


# direct methods
.method public constructor <init>(LV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd;->d:LV2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgd;->c:Z

    invoke-virtual {p1}, LV2;->d()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgd;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lgd;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lgd;->b:I

    iget-object v3, p0, Lgd;->d:LV2;

    invoke-virtual {v3, v2, v1}, LV2;->b(II)Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget p0, p0, Lgd;->b:I

    const/4 v0, 0x1

    invoke-virtual {v3, p0, v0}, LV2;->b(II)Ljava/lang/Object;

    move-result-object p0

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lgd;->b:I

    iget-object p0, p0, Lgd;->d:LV2;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LV2;->b(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lgd;->b:I

    iget-object p0, p0, Lgd;->d:LV2;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LV2;->b(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lgd;->b:I

    iget p0, p0, Lgd;->a:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lgd;->b:I

    iget-object v1, p0, Lgd;->d:LV2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LV2;->b(II)Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Lgd;->b:I

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, LV2;->b(II)Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int p0, v0, v2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lgd;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lgd;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgd;->b:I

    iput-boolean v1, p0, Lgd;->c:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgd;->d:LV2;

    iget v1, p0, Lgd;->b:I

    invoke-virtual {v0, v1}, LV2;->g(I)V

    iget v0, p0, Lgd;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgd;->b:I

    iget v0, p0, Lgd;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgd;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgd;->c:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lgd;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgd;->d:LV2;

    iget p0, p0, Lgd;->b:I

    iget v1, v0, LV2;->d:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    iget-object v0, v0, LV2;->e:Ljava/lang/Object;

    check-cast v0, LW2;

    iget-object v0, v0, Lki;->b:[Ljava/lang/Object;

    aget-object v1, v0, p0

    aput-object p1, v0, p0

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgd;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgd;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
