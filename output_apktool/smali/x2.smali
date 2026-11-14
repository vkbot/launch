.class public final synthetic Lx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz2;


# direct methods
.method public synthetic constructor <init>(Lz2;I)V
    .locals 0

    iput p2, p0, Lx2;->a:I

    iput-object p1, p0, Lx2;->b:Lz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lx2;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lx2;->b:Lz2;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz2;->f:LIa;

    iget v0, p1, LIa;->a:I

    packed-switch v0, :pswitch_data_1

    iget-object p1, p1, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p1}, Lcom/omoda/launcher/data/AppOrderStore;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p1}, Lcom/omoda/launcher/data/AppOrderStore;->clear()V

    :goto_0
    iget-object p0, p0, Lz2;->h:LY0;

    iget-object p1, p0, LY0;->g:LIa;

    iget-object v0, p0, LY0;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, LIa;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LY0;->i:Ljava/util/List;

    invoke-virtual {p0}, LY0;->i()V

    return-void

    :pswitch_1
    const-string p1, "this$0"

    iget-object p0, p0, Lx2;->b:Lz2;

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz2;->r:LK2;

    iget-boolean p1, p1, LK2;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lx2;->b:Lz2;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    iget-object p0, p0, Lz2;->c:LYk;

    invoke-virtual {p0}, LYk;->d()Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object p0, p0, Lx2;->b:Lz2;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz2;->d:Lcl;

    invoke-virtual {p0}, Lcl;->d()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
