.class public final LIi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/WindowManager;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/widget/LinearLayout;

.field public e:Z

.field public final f:LJ2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIi;->a:Landroid/content/Context;

    iput-object p2, p0, LIi;->b:Landroid/view/WindowManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LIi;->c:Landroid/os/Handler;

    new-instance p1, LJ2;

    const/16 p2, 0xc

    invoke-direct {p1, p2, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LIi;->f:LJ2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LIi;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LIi;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LIi;->d:Landroid/widget/LinearLayout;

    return-void
.end method
