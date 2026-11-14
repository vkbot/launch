.class public final LJe;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/activity/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/b;I)V
    .locals 0

    iput p2, p0, LJe;->b:I

    iput-object p1, p0, LJe;->c:Landroidx/activity/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LJe;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Le3;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJe;->c:Landroidx/activity/b;

    iget-object p0, p0, Landroidx/activity/b;->b:LT2;

    invoke-virtual {p0}, LT2;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, LD9;

    iget-boolean v0, v0, LD9;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, LD9;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_0
    check-cast p1, Le3;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJe;->c:Landroidx/activity/b;

    iget-object p1, p0, Landroidx/activity/b;->b:LT2;

    invoke-virtual {p1}, LT2;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LD9;

    iget-boolean v1, v1, LD9;->a:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    check-cast v0, LD9;

    iput-object v0, p0, Landroidx/activity/b;->c:LD9;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
