.class public final synthetic LCo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LIo;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(LIo;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, LCo;->a:I

    iput-object p1, p0, LCo;->b:LIo;

    iput-object p2, p0, LCo;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, LCo;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LCo;->b:LIo;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LCo;->c:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, v0, LIo;->i:Z

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laf;

    iget-object v4, v2, Laf;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Laf;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    iget-object v6, v0, LIo;->k:Lbo;

    invoke-virtual {v6, v4}, Lbo;->a(Ljava/lang/String;)Ldd;

    move-result-object v7

    if-eqz v7, :cond_1

    iput v5, v7, Ldd;->b:I

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v7, Ldd;->c:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v6, v6, Lbo;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    new-instance v7, Ldd;

    invoke-direct {v7, v4, v5, v2, v3}, Ldd;-><init>(Ljava/lang/String;ILandroid/graphics/Rect;LJo;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LIo;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, LCo;->b:LIo;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LCo;->c:Ljava/util/Map;

    iget-object v1, v0, LIo;->b:Landroid/os/Handler;

    new-instance v2, LCo;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, LCo;-><init>(LIo;Ljava/util/Map;I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
