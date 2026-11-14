.class public final LR1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LR1;->a:I

    iput-object p2, p0, LR1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, LR1;->b:Ljava/lang/Object;

    iget v1, p0, LR1;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, LDi;

    invoke-virtual {v0}, LDi;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, LDi;->h:Lce;

    iget-boolean v1, p0, LAc;->y:Z

    if-nez v1, :cond_2

    iget-object v1, v0, LDi;->m:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LAc;->h()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, LDi;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    check-cast v0, LY3;

    invoke-virtual {v0}, LY3;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, LY3;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3;

    iget-object v1, v1, LX3;->a:Lce;

    iget-boolean v1, v1, LAc;->y:Z

    if-nez v1, :cond_5

    iget-object v1, v0, LY3;->o:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3;

    iget-object v0, v0, LX3;->a:Lce;

    invoke-virtual {v0}, LAc;->h()V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, LY3;->dismiss()V

    :cond_5
    return-void

    :pswitch_1
    check-cast v0, LZ1;

    iget-object p0, v0, LZ1;->E:Lc2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LUm;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, LZ1;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, LZ1;->s()V

    invoke-virtual {v0}, LAc;->h()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, LAc;->dismiss()V

    :goto_4
    return-void

    :pswitch_2
    check-cast v0, Lc2;

    invoke-virtual {v0}, Lc2;->getInternalPopup()Lb2;

    move-result-object v1

    invoke-interface {v1}, Lb2;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, LT1;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, LT1;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v0, Lc2;->f:Lb2;

    invoke-interface {v3, v1, v2}, Lb2;->f(II)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0, p0}, LS1;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
