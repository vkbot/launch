.class public final LHf$a;
.super Ls8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHf;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LIf;


# direct methods
.method public constructor <init>(LIf;)V
    .locals 0

    iput-object p1, p0, LHf$a;->this$0:LIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LHf$a;->this$0:LIf;

    iget p1, p0, LIf;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, LIf;->b:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, LIf;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LIf;->f:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_RESUME:LVb;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LIf;->c:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, LIf;->e:Landroid/os/Handler;

    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    iget-object p0, p0, LIf;->g:LO;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LHf$a;->this$0:LIf;

    iget p1, p0, LIf;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, LIf;->a:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, LIf;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LIf;->f:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_START:LVb;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LIf;->d:Z

    :cond_0
    return-void
.end method
