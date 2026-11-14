.class public final synthetic LYc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;

.field public final synthetic c:LQ7;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V
    .locals 0

    iput p3, p0, LYc;->a:I

    iput-object p1, p0, LYc;->b:Lcom/omoda/launcher/MainActivity;

    iput-object p2, p0, LYc;->c:LQ7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LYc;->c:LQ7;

    const-string v1, "this$0"

    iget-object v2, p0, LYc;->b:Lcom/omoda/launcher/MainActivity;

    iget p0, p0, LYc;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/omoda/launcher/MainActivity;->N(LQ7;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/omoda/launcher/MainActivity;->N(LQ7;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
