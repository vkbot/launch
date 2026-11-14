.class public final Lxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LAc;


# direct methods
.method public synthetic constructor <init>(LAc;I)V
    .locals 0

    iput p2, p0, Lxc;->a:I

    iput-object p1, p0, Lxc;->b:LAc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxc;->b:LAc;

    iget p0, p0, Lxc;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v0, LAc;->c:LK7;

    if-eqz p0, :cond_0

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LUm;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, LAc;->c:LK7;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p0

    iget-object v1, v0, LAc;->c:LK7;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le p0, v1, :cond_0

    iget-object p0, v0, LAc;->c:LK7;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    iget v1, v0, LAc;->m:I

    if-gt p0, v1, :cond_0

    iget-object p0, v0, LAc;->z:LJ1;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v0}, LAc;->h()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, v0, LAc;->c:LK7;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LK7;->setListSelectionHidden(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
