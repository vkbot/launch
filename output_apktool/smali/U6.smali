.class public final LU6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LU6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LZ6;Ljava/util/ArrayList;Lvi;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LU6;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU6;->d:Ljava/lang/Object;

    iput-object p2, p0, LU6;->b:Ljava/lang/Object;

    iput-object p3, p0, LU6;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lmo;LK1;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, LU6;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU6;->b:Ljava/lang/Object;

    iput-object p3, p0, LU6;->c:Ljava/lang/Object;

    iput-object p4, p0, LU6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LU6;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU6;->c:Ljava/lang/Object;

    check-cast v0, LK1;

    iget-object v1, p0, LU6;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v0}, Lio;->h(Landroid/view/View;LK1;)V

    iget-object p0, p0, LU6;->d:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, LU6;->b:Ljava/lang/Object;

    check-cast v0, Li9;

    invoke-virtual {v0}, Li9;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lj0;

    iget-object v2, p0, LU6;->c:Ljava/lang/Object;

    check-cast v2, Lj9;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, LU6;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, LU6;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LU6;->c:Ljava/lang/Object;

    check-cast v1, Lvi;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, LU6;->d:Ljava/lang/Object;

    check-cast p0, LZ6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lvi;->c:Lx9;

    iget-object p0, p0, Lx9;->E:Landroid/view/View;

    iget v0, v1, Lvi;->a:I

    invoke-static {p0, v0}, Lpi;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
