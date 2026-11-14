.class public final Ltd;
.super Lkg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvd;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltd;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltd;->b:Ljava/lang/Object;

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lvm;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 4
    invoke-static {p0}, Lvm;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lzj;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ltd;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ltd;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;LAg;)V
    .locals 3

    iget v0, p0, Ltd;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lkg;->d(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;LAg;)V

    return-void

    :pswitch_0
    const-string v0, "outRect"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LEg;->b()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iget-object p0, p0, Ltd;->b:Ljava/lang/Object;

    check-cast p0, Lzj;

    iget-object p4, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-static {p4, p2}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnj;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-static {p0, v0}, Lzj;->a(Lzj;Lnj;)I

    move-result p0

    sub-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    if-ge p3, v1, :cond_2

    move p3, v1

    :cond_2
    if-nez p2, :cond_3

    move p0, p3

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p4}, LM4;->o0(Ljava/util/List;)I

    move-result p0

    if-ne p2, p0, :cond_4

    move v1, p3

    :cond_4
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget p1, p0, Ltd;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lfg;

    move-result-object p1

    instance-of p1, p1, LPo;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lfg;

    move-result-object p1

    check-cast p1, LPo;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p0, p0, Ltd;->b:Ljava/lang/Object;

    check-cast p0, Lvd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
