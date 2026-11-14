.class public final Lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvi;

.field public final synthetic c:LZ6;


# direct methods
.method public synthetic constructor <init>(LZ6;Lvi;I)V
    .locals 0

    iput p3, p0, Lui;->a:I

    iput-object p1, p0, Lui;->c:LZ6;

    iput-object p2, p0, Lui;->b:Lvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lui;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lui;->c:LZ6;

    iget-object v1, v0, LZ6;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lui;->b:Lvi;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, LZ6;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lui;->c:LZ6;

    iget-object v0, v0, LZ6;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lui;->b:Lvi;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lvi;->a:I

    iget-object p0, p0, Lvi;->c:Lx9;

    iget-object p0, p0, Lx9;->E:Landroid/view/View;

    invoke-static {p0, v0}, Lpi;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
