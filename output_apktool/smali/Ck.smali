.class public final LCk;
.super Lvf;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public d:Z

.field public e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LDk;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LCk;->c:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LCk;->f:Ljava/lang/Object;

    iput p2, p0, LCk;->e:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LCk;->d:Z

    return-void
.end method

.method public constructor <init>(Lxn;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LCk;->c:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LCk;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, LCk;->d:Z

    .line 7
    iput p1, p0, LCk;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, LCk;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LCk;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCk;->e:I

    iget-object v1, p0, LCk;->f:Ljava/lang/Object;

    check-cast v1, Lxn;

    iget-object v2, v1, Lxn;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lxn;->d:Lvf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyn;->a()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LCk;->e:I

    iput-boolean v0, p0, LCk;->d:Z

    iput-boolean v0, v1, Lxn;->e:Z

    :cond_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, LCk;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LCk;->f:Ljava/lang/Object;

    check-cast v0, LDk;

    iget-object v0, v0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, LCk;->e:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget p1, p0, LCk;->c:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LCk;->d:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    iget v0, p0, LCk;->c:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LCk;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LCk;->d:Z

    iget-object p0, p0, LCk;->f:Ljava/lang/Object;

    check-cast p0, Lxn;

    iget-object p0, p0, Lxn;->d:Lvf;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyn;->c()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, LCk;->f:Ljava/lang/Object;

    check-cast p0, LDk;

    iget-object p0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
