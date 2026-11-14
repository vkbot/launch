.class public final synthetic LTc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;

.field public final synthetic c:Lcom/omoda/launcher/data/Preset;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/MainActivity;Lcom/omoda/launcher/data/Preset;Ljava/util/Map;I)V
    .locals 0

    iput p4, p0, LTc;->a:I

    iput-object p1, p0, LTc;->b:Lcom/omoda/launcher/MainActivity;

    iput-object p2, p0, LTc;->c:Lcom/omoda/launcher/data/Preset;

    iput-object p3, p0, LTc;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "this$0"

    iget v1, p0, LTc;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LTc;->b:Lcom/omoda/launcher/MainActivity;

    iget-object v2, p0, LTc;->c:Lcom/omoda/launcher/data/Preset;

    iget-object p0, p0, LTc;->d:Ljava/util/Map;

    sget-object v3, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$next"

    invoke-static {v2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/omoda/launcher/MainActivity;->E:Lcom/omoda/launcher/data/Preset;

    invoke-static {v0, v2}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, p0}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, LTc;->b:Lcom/omoda/launcher/MainActivity;

    iget-object v2, p0, LTc;->c:Lcom/omoda/launcher/data/Preset;

    iget-object p0, p0, LTc;->d:Ljava/util/Map;

    sget-object v3, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/omoda/launcher/MainActivity;->E:Lcom/omoda/launcher/data/Preset;

    invoke-static {v0, v2}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2, p0}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
