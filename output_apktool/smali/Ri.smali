.class public final LRi;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic b:[C

.field public final synthetic c:Z


# direct methods
.method public constructor <init>([CZ)V
    .locals 0

    iput-object p1, p0, LRi;->b:[C

    iput-boolean p2, p0, LRi;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LRi;->b:[C

    iget-boolean p0, p0, LRi;->c:Z

    invoke-static {p1, v0, p2, p0}, LSi;->L(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Laf;

    invoke-direct {p2, p0, p1}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method
