.class public final synthetic Lmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LS4;

.field public final synthetic c:Lzj;


# direct methods
.method public synthetic constructor <init>(ILS4;Lzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmj;->a:I

    iput-object p2, p0, Lmj;->b:LS4;

    iput-object p3, p0, Lmj;->c:Lzj;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object p1, p0, Lmj;->b:LS4;

    iget-object p2, p0, Lmj;->c:Lzj;

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lmj;->a:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    invoke-virtual {p1}, LS4;->d()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lmj;

    invoke-direct {v1, p0, p1, p2}, Lmj;-><init>(ILS4;Lzj;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void
.end method
