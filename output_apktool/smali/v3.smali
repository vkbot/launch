.class public abstract Lv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static b:Landroid/content/Context;

.field public static c:Z

.field public static d:Z

.field public static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lv3;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)V
    .locals 9

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result v0

    const-string v1, "BootWatch"

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "AccessibilityService is up"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AccessibilityService recovered at attempt "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lv3;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "app"

    if-eqz v0, :cond_4

    if-lez p0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-wide v7, Lv3;->e:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "AccessibilityService still not bound after "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " attempts \u2014 MainActivity\'s error screen takes over"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object p0, Lv3;->b:Landroid/content/Context;

    if-eqz p0, :cond_3

    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lv3;->b:Landroid/content/Context;

    if-eqz v5, :cond_2

    const-class v3, Lcom/omoda/launcher/MainActivity;

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "boot_watch"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cannot start MainActivity: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "AccessibilityService not bound (installed="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lv3;->b:Landroid/content/Context;

    if-eqz v5, :cond_b

    invoke-static {v5}, LC6;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, LC6;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", enabled="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lv3;->b:Landroid/content/Context;

    if-eqz v5, :cond_a

    invoke-static {v5}, LC6;->y(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") \u2014 recovery attempt "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lv3;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-static {v0}, LC6;->j(Landroid/content/Context;)V

    sget-object v0, Lv3;->a:Landroid/os/Handler;

    new-instance v1, Lu3;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lu3;-><init>(II)V

    if-eqz p0, :cond_8

    if-eq p0, v2, :cond_7

    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x3

    if-eq p0, v2, :cond_5

    const-wide/16 v2, 0x3a98

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0x1f40

    goto :goto_3

    :cond_6
    const-wide/16 v2, 0xfa0

    goto :goto_3

    :cond_7
    const-wide/16 v2, 0x7d0

    goto :goto_3

    :cond_8
    const-wide/16 v2, 0x3e8

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lv3;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lv3;->c:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lv3;->b:Landroid/content/Context;

    sput-boolean p1, Lv3;->d:Z

    sget-object p0, Lv3;->a:Landroid/os/Handler;

    new-instance p1, Lt3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lt3;-><init>(I)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
