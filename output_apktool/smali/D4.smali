.class public final synthetic LD4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LC8;


# direct methods
.method public synthetic constructor <init>(LC8;I)V
    .locals 0

    iput p2, p0, LD4;->a:I

    iput-object p1, p0, LD4;->b:LC8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, LD4;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, LD4;->b:LC8;

    check-cast p0, LP7;

    iput-boolean p2, p0, LP7;->l:Z

    invoke-virtual {p0}, LC8;->q()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LP7;->t(Z)V

    iput-boolean p1, p0, LP7;->m:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LD4;->b:LC8;

    check-cast p0, LG4;

    invoke-virtual {p0}, LG4;->u()Z

    move-result p1

    invoke-virtual {p0, p1}, LG4;->t(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
