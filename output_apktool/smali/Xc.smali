.class public final synthetic LXc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;

.field public final synthetic c:LQ7;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V
    .locals 0

    iput p3, p0, LXc;->a:I

    iput-object p1, p0, LXc;->b:Lcom/omoda/launcher/MainActivity;

    iput-object p2, p0, LXc;->c:LQ7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "$dualBinding"

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LXc;->c:LQ7;

    const-string v3, "this$0"

    iget-object v4, p0, LXc;->b:Lcom/omoda/launcher/MainActivity;

    iget p0, p0, LXc;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-virtual {v4, v1, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_0
    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-virtual {v4, v0, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_2
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_3
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_4
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_5
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    :pswitch_6
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v4, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lcom/omoda/launcher/MainActivity;->J(ZLQ7;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
