.class public final Lh0;
.super LXd;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ll0;


# direct methods
.method public constructor <init>(Ll0;Landroid/content/Context;LLd;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lh0;->l:I

    .line 1
    iput-object p1, p0, Lh0;->m:Ll0;

    const v2, 0x7f030022

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    .line 2
    invoke-direct/range {v1 .. v6}, LXd;-><init>(ILLd;Landroid/content/Context;Landroid/view/View;Z)V

    const p2, 0x800005

    .line 3
    iput p2, p0, LXd;->f:I

    .line 4
    iget-object p1, p1, Ll0;->w:LL;

    .line 5
    iput-object p1, p0, LXd;->h:Lde;

    .line 6
    iget-object p0, p0, LXd;->i:LUd;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lee;->i(Lde;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ll0;Landroid/content/Context;LTi;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lh0;->l:I

    .line 8
    iput-object p1, p0, Lh0;->m:Ll0;

    const/4 v6, 0x0

    const v2, 0x7f030022

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    .line 9
    invoke-direct/range {v1 .. v6}, LXd;-><init>(ILLd;Landroid/content/Context;Landroid/view/View;Z)V

    .line 10
    iget-object p2, p3, LTi;->A:LPd;

    .line 11
    invoke-virtual {p2}, LPd;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Ll0;->i:Lk0;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Ll0;->h:Lge;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_0
    iput-object p2, p0, LXd;->e:Landroid/view/View;

    .line 16
    :cond_1
    iget-object p1, p1, Ll0;->w:LL;

    .line 17
    iput-object p1, p0, LXd;->h:Lde;

    .line 18
    iget-object p0, p0, LXd;->i:LUd;

    if-eqz p0, :cond_2

    .line 19
    invoke-interface {p0, p1}, Lee;->i(Lde;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lh0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lh0;->m:Ll0;

    iget-object v1, v0, Ll0;->c:LLd;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LLd;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Ll0;->s:Lh0;

    invoke-super {p0}, LXd;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lh0;->m:Ll0;

    iput-object v0, v1, Ll0;->t:Lh0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, LXd;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
