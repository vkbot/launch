.class public final LJa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LIo;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Lfj;

.field public f:Z

.field public g:I

.field public final h:LO;


# direct methods
.method public constructor <init>(Landroid/content/Context;LIo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowLauncher"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJa;->a:Landroid/content/Context;

    iput-object p2, p0, LJa;->b:LIo;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, LJa;->c:Landroid/os/Handler;

    const-string p2, "unified_home"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, LJa;->d:Landroid/content/SharedPreferences;

    new-instance p1, LS4;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, LS4;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lfj;

    invoke-direct {p2, p1}, Lfj;-><init>(LS9;)V

    iput-object p2, p0, LJa;->e:Lfj;

    new-instance p1, LO;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0}, LO;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LJa;->h:LO;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-static {}, Lvf;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, LJa;->f:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Z)V
    .locals 5

    iget-object v0, p0, LJa;->a:Landroid/content/Context;

    iget-object v1, p0, LJa;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "opening_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/omoda/launcher/HomeActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "HomeKeeper"

    const-string v1, "Home screen launch failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p1, p0, LJa;->c:Landroid/os/Handler;

    iget-object p0, p0, LJa;->h:LO;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
