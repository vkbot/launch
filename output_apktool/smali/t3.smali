.class public final synthetic Lt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    const/4 p1, 0x5

    iput p1, p0, Lt3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "cannot write use_gps_time: "

    const-string v1, "use_gps_time := 0 (GPS time source disabled)"

    const/4 v2, -0x1

    const-string v3, "use_gps_time"

    const-string v4, "FirmwareSwitch"

    const-string v5, "app"

    const-string v6, "base"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget p0, p0, Lt3;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    return-void

    :pswitch_0
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lkk;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v9}, Lnk;->b(Z)V

    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkk;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lkk;->b:Landroid/content/SharedPreferences;

    const-string v2, "floor_utc"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_2
    sget-object p0, Lnk;->a:Landroid/content/Context;

    invoke-static {}, Lnk;->e()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_5
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    sget-object p0, Lnk;->a:Landroid/content/Context;

    invoke-static {}, Lnk;->e()V

    return-void

    :pswitch_2
    invoke-static {v9}, Lnk;->b(Z)V

    return-void

    :pswitch_3
    sget-object p0, Lnk;->a:Landroid/content/Context;

    invoke-static {v7}, Lnk;->b(Z)V

    return-void

    :pswitch_4
    sget-object p0, Lnk;->a:Landroid/content/Context;

    invoke-static {}, Lnk;->e()V

    return-void

    :pswitch_5
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_a

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_9

    iget v0, v0, Lkk;->d:I

    invoke-static {p0, v0}, Lvf;->p(Landroid/content/Context;I)V

    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lkk;->b()Z

    move-result p0

    sget-object v0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_7

    invoke-static {v9}, Lnk;->b(Z)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lnk;->e()V

    :goto_3
    return-void

    :cond_8
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_9
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_a
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_b
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :pswitch_6
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_d

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_c

    iget v0, v0, Lkk;->d:I

    invoke-static {p0, v0}, Lvf;->p(Landroid/content/Context;I)V

    return-void

    :cond_c
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_d
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :pswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lv3;->e:J

    invoke-static {v9}, Lv3;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
