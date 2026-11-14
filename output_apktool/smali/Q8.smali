.class public final LQ8;
.super LYl;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LQ8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, LQ8;->a:I

    iput-object p2, p0, LQ8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget v0, p0, LQ8;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LQ8;->b:Ljava/lang/Object;

    check-cast p0, Lc3;

    iget-boolean v0, p0, Lc3;->z:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LXl;->D()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc3;->z:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final e(LXl;)V
    .locals 2

    iget v0, p0, LQ8;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LQ8;->b:Ljava/lang/Object;

    check-cast v0, Lc3;

    iget v1, v0, Lc3;->y:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc3;->y:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc3;->z:Z

    invoke-virtual {v0}, LXl;->l()V

    :cond_0
    invoke-virtual {p1, p0}, LXl;->u(LWl;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LQ8;->b:Ljava/lang/Object;

    check-cast v0, LXl;

    invoke-virtual {v0}, LXl;->w()V

    invoke-virtual {p1, p0}, LXl;->u(LWl;)V

    return-void

    :pswitch_1
    sget-object v0, LCn;->a:Lc4;

    iget-object v0, p0, LQ8;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, LXl;->u(LWl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
