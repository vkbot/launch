.class public final LHf;
.super Ls8;
.source "SourceFile"


# instance fields
.field final synthetic this$0:LIf;


# direct methods
.method public constructor <init>(LIf;)V
    .locals 0

    iput-object p1, p0, LHf;->this$0:LIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LHf;->this$0:LIf;

    iget p1, p0, LIf;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LIf;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, LIf;->e:Landroid/os/Handler;

    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    iget-object p0, p0, LIf;->g:LO;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LHf$a;

    iget-object p0, p0, LHf;->this$0:LIf;

    invoke-direct {p2, p0}, LHf$a;-><init>(LIf;)V

    invoke-static {p1, p2}, LGf;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LHf;->this$0:LIf;

    iget p1, p0, LIf;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LIf;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, LIf;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LIf;->f:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_STOP:LVb;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LIf;->d:Z

    :cond_0
    return-void
.end method
