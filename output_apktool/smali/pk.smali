.class public final Lpk;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lpk;->a:I

    iput-object p2, p0, Lpk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    iget v0, p0, Lpk;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "network"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lpk;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-boolean p1, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpk;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object p1, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t:LJk;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lpk;->b:Ljava/lang/Object;

    check-cast p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t:LJk;

    iget-wide v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "network"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "TimeSyncWatchdog"

    const-string v0, "network available \u2014 starting time acquisition"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lpk;->b:Ljava/lang/Object;

    check-cast p1, Lqk;

    const/4 v0, 0x0

    iput v0, p1, Lqk;->d:I

    iget-object p0, p0, Lpk;->b:Ljava/lang/Object;

    check-cast p0, Lqk;

    iget-object p1, p0, Lqk;->b:Landroid/os/Handler;

    iget-object v0, p0, Lqk;->h:LJ2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lqk;->b:Landroid/os/Handler;

    iget-object v0, p0, Lqk;->h:LJ2;

    sget-object v1, Lqk;->i:[J

    iget p0, p0, Lqk;->d:I

    const/4 v2, 0x4

    if-le p0, v2, :cond_1

    move p0, v2

    :cond_1
    aget-wide v1, v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
