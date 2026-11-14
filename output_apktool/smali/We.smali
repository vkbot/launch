.class public final LWe;
.super LY7;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lng;I)V
    .locals 0

    iput p2, p0, LWe;->d:I

    invoke-direct {p0, p1}, LY7;-><init>(Lng;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Log;

    iget-object p1, p1, Log;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Log;

    iget-object p1, p1, Log;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Log;

    iget-object p0, p0, Log;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Log;

    iget-object p0, p0, Log;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Log;

    iget-object p0, p0, Log;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Log;

    iget-object p0, p0, Log;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Log;

    iget-object p1, p1, Log;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Log;

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Log;

    iget-object p1, p1, Log;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->o:I

    return p0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->n:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget v0, p0, Lng;->o:I

    invoke-virtual {p0}, Lng;->B()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget v0, p0, Lng;->n:I

    invoke-virtual {p0}, Lng;->D()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Lng;->B()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Lng;->D()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->m:I

    return p0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->l:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->l:I

    return p0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget p0, p0, Lng;->m:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Lng;->E()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0}, Lng;->C()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .locals 2

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget v0, p0, Lng;->o:I

    invoke-virtual {p0}, Lng;->E()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lng;->B()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    iget v0, p0, Lng;->n:I

    invoke-virtual {p0}, Lng;->C()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lng;->D()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Landroid/view/View;)I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    iget-object p0, p0, LY7;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lng;->I(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    :pswitch_0
    iget-object v0, p0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    iget-object p0, p0, LY7;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lng;->I(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;)I
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    iget-object p0, p0, LY7;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lng;->I(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0

    :pswitch_0
    iget-object v0, p0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    iget-object p0, p0, LY7;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lng;->I(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, LWe;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0, p1}, Lng;->N(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY7;->b:Ljava/lang/Object;

    check-cast p0, Lng;

    invoke-virtual {p0, p1}, Lng;->M(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
