.class public final Lr7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lxf;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lxf;-><init>(I)V

    iput-object p1, p0, Lr7;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Lki;

    invoke-direct {p1}, Lki;-><init>()V

    iput-object p1, p0, Lr7;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr7;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lr7;->d:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, LW2;

    .line 8
    invoke-direct {p1}, Lki;-><init>()V

    .line 9
    iput-object p1, p0, Lr7;->a:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr7;->b:Ljava/lang/Object;

    .line 11
    new-instance p1, LQc;

    invoke-direct {p1}, LQc;-><init>()V

    iput-object p1, p0, Lr7;->c:Ljava/lang/Object;

    .line 12
    new-instance p1, LW2;

    .line 13
    invoke-direct {p1}, Lki;-><init>()V

    .line 14
    iput-object p1, p0, Lr7;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lr7;->d:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lr7;->a:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr7;->c:Ljava/lang/Object;

    .line 38
    new-instance p1, Lki;

    invoke-direct {p1}, Lki;-><init>()V

    iput-object p1, p0, Lr7;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lje;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lr7;->d:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lr7;->a:Ljava/lang/Object;

    .line 18
    new-instance p1, Lke;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lke;-><init>(I)V

    iput-object p1, p0, Lr7;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 19
    invoke-virtual {p2, p1}, Lhj;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    iget v2, p2, Lhj;->a:I

    add-int/2addr v0, v2

    .line 21
    iget-object v2, p2, Lhj;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 22
    iget-object v0, p2, Lhj;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 23
    new-array v0, v0, [C

    iput-object v0, p0, Lr7;->b:Ljava/lang/Object;

    .line 24
    invoke-virtual {p2, p1}, Lhj;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    iget v0, p2, Lhj;->a:I

    add-int/2addr p1, v0

    .line 26
    iget-object v0, p2, Lhj;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 27
    iget-object p1, p2, Lhj;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 28
    new-instance v0, Lk8;

    invoke-direct {v0, p0, p2}, Lk8;-><init>(Lr7;I)V

    .line 29
    invoke-virtual {v0}, Lk8;->c()Lie;

    move-result-object v2

    const/4 v3, 0x4

    .line 30
    invoke-virtual {v2, v3}, Lhj;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lhj;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lhj;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 31
    iget-object v4, p0, Lr7;->b:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 32
    invoke-virtual {v0}, Lk8;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, Lff;->d(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v0}, Lk8;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lr7;->c:Ljava/lang/Object;

    check-cast v3, Lke;

    invoke-virtual {v3, v0, v1, v2}, Lke;->a(Lk8;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr7;->b:Ljava/lang/Object;

    check-cast v0, Lki;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lki;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lr7;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lp0;)LYi;
    .locals 5

    iget-object v0, p0, Lr7;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LYi;

    if-eqz v3, :cond_0

    iget-object v4, v3, LYi;->b:Lp0;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LYi;

    iget-object p0, p0, Lr7;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, LYi;-><init>(Landroid/content/Context;Lp0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public c(Lp0;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lr7;->b(Lp0;)LYi;

    move-result-object p1

    new-instance v0, LTd;

    iget-object v1, p0, Lr7;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, Lcj;

    invoke-direct {v0, v1, p2}, LTd;-><init>(Landroid/content/Context;Lcj;)V

    iget-object p0, p0, Lr7;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public d(Lp0;LLd;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lr7;->b(Lp0;)LYi;

    move-result-object p1

    iget-object v0, p0, Lr7;->b:Ljava/lang/Object;

    check-cast v0, Lki;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lki;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lhe;

    iget-object v2, p0, Lr7;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lhe;-><init>(Landroid/content/Context;LLd;)V

    invoke-virtual {v0, p2, v1}, Lki;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lr7;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
