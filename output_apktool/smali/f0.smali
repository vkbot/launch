.class public final Lf0;
.super Lu9;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf0;->j:I

    .line 1
    iput-object p1, p0, Lf0;->k:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Lu9;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lk0;Lk0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf0;->j:I

    .line 3
    iput-object p1, p0, Lf0;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Lu9;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lhi;
    .locals 1

    iget v0, p0, Lf0;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0;->k:Landroid/view/View;

    check-cast p0, Lk0;

    iget-object p0, p0, Lk0;->d:Ll0;

    iget-object p0, p0, Ll0;->s:Lh0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LXd;->a()LUd;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf0;->k:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lg0;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Li0;

    iget-object p0, p0, Li0;->a:Ll0;

    iget-object p0, p0, Ll0;->t:Lh0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LXd;->a()LUd;

    move-result-object v0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    iget v0, p0, Lf0;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf0;->k:Landroid/view/View;

    check-cast p0, Lk0;

    iget-object p0, p0, Lk0;->d:Ll0;

    invoke-virtual {p0}, Ll0;->l()Z

    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object v0, p0, Lf0;->k:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:LKd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:LPd;

    invoke-interface {v1, v0}, LKd;->c(LPd;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf0;->b()Lhi;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lhi;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lf0;->j:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lu9;->d()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lf0;->k:Landroid/view/View;

    check-cast p0, Lk0;

    iget-object p0, p0, Lk0;->d:Ll0;

    iget-object v0, p0, Ll0;->u:Lj0;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll0;->e()Z

    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
