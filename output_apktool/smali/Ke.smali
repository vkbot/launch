.class public final LKe;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/activity/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/b;I)V
    .locals 0

    iput p2, p0, LKe;->b:I

    iput-object p1, p0, LKe;->c:Landroidx/activity/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LKe;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LKe;->c:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LKe;->c:Landroidx/activity/b;

    iget-object v0, p0, Landroidx/activity/b;->b:LT2;

    invoke-virtual {v0}, LT2;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LD9;

    iget-boolean v3, v3, LD9;->a:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, LD9;

    iput-object v2, p0, Landroidx/activity/b;->c:LD9;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_1
    iget-object p0, p0, LKe;->c:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
