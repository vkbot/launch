.class public final Lrc;
.super Lh;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lrc;


# instance fields
.field public a:[Ljava/lang/Object;

.field public final b:I

.field public c:I

.field public d:Z

.field public final e:Lrc;

.field public final f:Lrc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrc;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrc;->d:Z

    sput-object v0, Lrc;->g:Lrc;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    if-ltz p1, :cond_0

    .line 9
    new-array v1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Lrc;-><init>([Ljava/lang/Object;IIZLrc;Lrc;)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/lang/Object;IIZLrc;Lrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh;-><init>()V

    .line 2
    iput-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lrc;->b:I

    .line 4
    iput p3, p0, Lrc;->c:I

    .line 5
    iput-boolean p4, p0, Lrc;->d:Z

    .line 6
    iput-object p5, p0, Lrc;->e:Lrc;

    .line 7
    iput-object p6, p0, Lrc;->f:Lrc;

    if-eqz p5, :cond_0

    .line 8
    iget p1, p5, Ljava/util/AbstractList;->modCount:I

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lrc;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    invoke-virtual {p0}, Lrc;->f()V

    iget p0, p0, Lrc;->c:I

    return p0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lrc;->g()V

    .line 5
    invoke-virtual {p0}, Lrc;->f()V

    .line 6
    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 7
    iget v0, p0, Lrc;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lrc;->e(ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "index: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrc;->g()V

    .line 2
    invoke-virtual {p0}, Lrc;->f()V

    .line 3
    iget v0, p0, Lrc;->b:I

    iget v1, p0, Lrc;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lrc;->e(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lrc;->g()V

    .line 6
    invoke-virtual {p0}, Lrc;->f()V

    .line 7
    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 9
    iget v1, p0, Lrc;->b:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lrc;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "index: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lrc;->g()V

    .line 2
    invoke-virtual {p0}, Lrc;->f()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    iget v1, p0, Lrc;->b:I

    iget v2, p0, Lrc;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lrc;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lrc;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lrc;->i(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->b:I

    iget v1, p0, Lrc;->c:I

    invoke-virtual {p0, v0, v1}, Lrc;->j(II)V

    return-void
.end method

.method public final d(ILjava/util/Collection;I)V
    .locals 4

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lrc;->e:Lrc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lrc;->d(ILjava/util/Collection;I)V

    iget-object p1, v0, Lrc;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    iget p1, p0, Lrc;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lrc;->c:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lrc;->h(II)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lrc;->a:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lrc;->e:Lrc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lrc;->e(ILjava/lang/Object;)V

    iget-object p1, v0, Lrc;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    iget p1, p0, Lrc;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lrc;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lrc;->h(II)V

    iget-object p0, p0, Lrc;->a:[Ljava/lang/Object;

    aput-object p2, p0, p1

    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Lrc;->f()V

    if-eq p1, p0, :cond_2

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget v2, p0, Lrc;->c:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    iget v4, p0, Lrc;->b:I

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lrc;->f:Lrc;

    if-eqz v0, :cond_1

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lrc;->d:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lrc;->f:Lrc;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lrc;->d:Z

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget p0, p0, Lrc;->b:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(II)V
    .locals 5

    iget v0, p0, Lrc;->c:I

    add-int/2addr v0, p2

    if-ltz v0, :cond_4

    iget-object v1, p0, Lrc;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_3

    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_2

    if-le v0, v3, :cond_1

    const v0, 0x7fffffff

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget v1, p0, Lrc;->b:I

    iget v2, p0, Lrc;->c:I

    add-int/2addr v1, v2

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, LZ2;->U([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget p1, p0, Lrc;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lrc;->c:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Lrc;->f()V

    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget v1, p0, Lrc;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    iget v5, p0, Lrc;->b:I

    add-int/2addr v5, v4

    aget-object v5, v0, v5

    mul-int/lit8 v2, v2, 0x1f

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lrc;->e:Lrc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lrc;->i(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lrc;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lrc;->c:I

    return-object p1

    :cond_0
    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lrc;->c:I

    iget v4, p0, Lrc;->b:I

    add-int/2addr v3, v4

    invoke-static {v0, v0, p1, v2, v3}, LZ2;->U([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    iget v0, p0, Lrc;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v0, p1, v4

    iget p1, p0, Lrc;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lrc;->c:I

    return-object v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lrc;->f()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lrc;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lrc;->a:[Ljava/lang/Object;

    iget v2, p0, Lrc;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lrc;->f()V

    iget p0, p0, Lrc;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrc;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final j(II)V
    .locals 3

    if-lez p2, :cond_0

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    iget-object v0, p0, Lrc;->e:Lrc;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lrc;->j(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lrc;->c:I

    invoke-static {v0, v0, p1, v1, v2}, LZ2;->U([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    iget v0, p0, Lrc;->c:I

    sub-int v1, v0, p2

    const-string v2, "<this>"

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lrc;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lrc;->c:I

    return-void
.end method

.method public final k(IILjava/util/Collection;Z)I
    .locals 5

    iget-object v0, p0, Lrc;->e:Lrc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lrc;->k(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lrc;->a:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1

    iget-object v2, p0, Lrc;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p2, v1

    iget-object p4, p0, Lrc;->a:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lrc;->c:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, LZ2;->U([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lrc;->a:[Ljava/lang/Object;

    iget p2, p0, Lrc;->c:I

    sub-int p4, p2, p3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-ge p4, p2, :cond_3

    const/4 v0, 0x0

    aput-object v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    move p1, p3

    :goto_2
    if-lez p1, :cond_4

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_4
    iget p2, p0, Lrc;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, Lrc;->c:I

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lrc;->a:[Ljava/lang/Object;

    iget v2, p0, Lrc;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lrc;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lrc;->f()V

    .line 3
    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 4
    new-instance v0, Lqc;

    invoke-direct {v0, p0, p1}, Lqc;-><init>(Lrc;I)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    invoke-virtual {p0, p1}, Lrc;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lrc;->b(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    iget v1, p0, Lrc;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lrc;->k(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    iget v1, p0, Lrc;->b:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Lrc;->k(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lrc;->g()V

    invoke-virtual {p0}, Lrc;->f()V

    iget v0, p0, Lrc;->c:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget p0, p0, Lrc;->b:I

    add-int v1, p0, p1

    aget-object v1, v0, v1

    add-int/2addr p0, p1

    aput-object p2, v0, p0

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "index: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 8

    iget v0, p0, Lrc;->c:I

    invoke-static {p1, p2, v0}, Lnb;->s(III)V

    new-instance v0, Lrc;

    iget-object v2, p0, Lrc;->a:[Ljava/lang/Object;

    iget v1, p0, Lrc;->b:I

    add-int v3, v1, p1

    sub-int v4, p2, p1

    iget-boolean v5, p0, Lrc;->d:Z

    iget-object p1, p0, Lrc;->f:Lrc;

    if-nez p1, :cond_0

    move-object v7, p0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lrc;-><init>([Ljava/lang/Object;IIZLrc;Lrc;)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 8
    invoke-virtual {p0}, Lrc;->f()V

    .line 9
    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget v1, p0, Lrc;->c:I

    iget p0, p0, Lrc;->b:I

    add-int/2addr v1, p0

    .line 10
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v2, v0

    if-gt v1, v2, :cond_0

    .line 12
    invoke-static {v0, p0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "copyOfRange(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "toIndex ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const-string v0, "destination"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lrc;->f()V

    .line 2
    array-length v0, p1

    iget v1, p0, Lrc;->c:I

    iget v2, p0, Lrc;->b:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lrc;->a:[Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p0, p1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, p1, v3, v2, v1}, LZ2;->U([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 5
    iget p0, p0, Lrc;->c:I

    .line 6
    array-length v0, p1

    if-ge p0, v0, :cond_1

    const/4 v0, 0x0

    .line 7
    aput-object v0, p1, p0

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lrc;->f()V

    iget-object v0, p0, Lrc;->a:[Ljava/lang/Object;

    iget v1, p0, Lrc;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-lez v3, :cond_0

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v4, p0, Lrc;->b:I

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    if-ne v4, p0, :cond_1

    const-string v4, "(this Collection)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
