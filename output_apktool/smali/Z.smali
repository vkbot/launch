.class public final LZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LZ;->a:I

    iput-object p2, p0, LZ;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, LZ;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, LZ;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->L:Lyk;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyk;->b:LPd;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, LPd;->collapseActionView()Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, LZ;->b:Ljava/lang/Object;

    check-cast p0, Lvd;

    iget p1, p0, Lvd;->V:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lvd;->C(I)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lvd;->C(I)V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object p0, p0, LZ;->b:Ljava/lang/Object;

    check-cast p0, LE0;

    iget-object p1, p0, LE0;->f:Landroid/widget/Button;

    iget-object p1, p0, LE0;->v:LC0;

    const/4 v0, 0x1

    iget-object p0, p0, LE0;->b:LF0;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_2
    iget-object p0, p0, LZ;->b:Ljava/lang/Object;

    check-cast p0, Lp0;

    invoke-virtual {p0}, Lp0;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
