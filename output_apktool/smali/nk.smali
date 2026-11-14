.class public final Lnk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lkk;

.field public static c:LH4;

.field public static final d:Landroid/os/Handler;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static f:Z

.field public static final g:Le8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnk;->d:Landroid/os/Handler;

    new-instance v0, Llk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Le8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le8;-><init>(I)V

    sput-object v0, Lnk;->g:Le8;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkk;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lt3;

    invoke-direct {v0, p0}, Lt3;-><init>(Ljava/lang/String;)V

    sget-object p0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p0, "base"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Z)V
    .locals 15

    sget-object v0, Lnk;->b:Lkk;

    const-string v1, "base"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lkk;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_e

    iget v0, v0, Lkk;->d:I

    invoke-static {v3, v4}, Lnk;->g(J)J

    move-result-wide v5

    const/4 v1, 0x0

    const-string v7, "app"

    if-eqz p0, :cond_3

    const-wide/32 v8, 0x493e0

    cmp-long p0, v5, v8

    if-lez p0, :cond_3

    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "clock corrected by "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x3e8

    int-to-long v9, v9

    div-long/2addr v5, v9

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x73

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkRevalidator"

    const-string v8, "asked for re-validation after "

    const-string v9, "reason"

    invoke-static {v5, v9}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sget-wide v11, Lfm;->p:J

    sub-long v11, v9, v11

    const-wide/16 v13, 0x7530

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    goto :goto_0

    :cond_0
    sput-wide v9, Lfm;->p:J

    :try_start_0
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v9, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v9}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v9, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "re-validation request failed: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_d

    invoke-static {p0, v0}, Lvf;->p(Landroid/content/Context;I)V

    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_c

    int-to-long v5, v0

    const-wide/32 v8, 0xea60

    mul-long/2addr v5, v8

    add-long/2addr v5, v3

    sget-object v0, LC6;->y:Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, LC6;->z:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_5

    goto/16 :goto_3

    :cond_5
    :try_start_1
    const-string v0, "android.car.Car"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "createCar"

    const-class v8, Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "createCar returned null"

    invoke-static {p0}, LC6;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_2

    :cond_6
    sput-object p0, LC6;->x:Ljava/lang/Object;

    const-string v4, "getCarManager"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "property"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, LC6;->y:Ljava/lang/Object;

    if-nez p0, :cond_7

    const-string p0, "getCarManager(property) returned null"

    invoke-static {p0}, LC6;->b(Ljava/lang/String;)V

    :cond_7
    sget-object p0, LC6;->y:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_9

    :goto_1
    sget-object p0, LC6;->y:Ljava/lang/Object;

    if-nez p0, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setIntProperty"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v6, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const v5, 0x2140302e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit16 v8, v8, -0x7d0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x2140302f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x21403030

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x21403031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x21403032

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x21403033

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "setIntProperty failed: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LC6;->b(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "CarService unavailable: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LC6;->b(Ljava/lang/String;)V

    :cond_9
    :goto_3
    sget-object p0, Lnk;->a:Landroid/content/Context;

    if-eqz p0, :cond_b

    const-string v0, "FirmwareSwitch"

    const-string v2, "use_gps_time"

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    const/4 v3, -0x1

    :goto_4
    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "use_gps_time := 0 (GPS time source disabled)"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot write use_gps_time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_b
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_f
    return-void

    :cond_10
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public static c()Lmk;
    .locals 1

    sget-boolean v0, Lnk;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmk;->b:Lmk;

    goto :goto_0

    :cond_0
    const-string v0, "base"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    sget-object v0, Lmk;->a:Lmk;

    :goto_0
    return-object v0
.end method

.method public static d(JLjava/lang/String;)Z
    .locals 11

    const-string v0, "source"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lnk;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lnk;->b:Lkk;

    const/4 v2, 0x0

    const-string v3, "base"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lkk;->a()J

    move-result-wide v4

    cmp-long v0, p0, v4

    const-string v6, "TimeKeeper"

    if-ltz v0, :cond_7

    const-wide v7, 0x496cebb800L

    add-long/2addr v4, v7

    cmp-long v0, p0, v4

    if-gtz v0, :cond_7

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_6

    iget-object v4, v0, Lkk;->c:Ljk;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    new-instance v7, Ljk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {v7, p0, p1, v8, v9}, Ljk;-><init>(JJ)V

    iput-object v7, v0, Lkk;->c:Ljk;

    iget-object v7, v0, Lkk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "base_utc"

    invoke-interface {v7, v10, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "base_elapsed"

    invoke-interface {v7, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    :try_start_0
    iget-object v8, v0, Lkk;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "boot_count"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    goto :goto_1

    :catchall_0
    const-wide/16 v8, -0x1

    :goto_1
    const-string v10, "base_boot_count"

    invoke-interface {v7, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v0, Lkk;->b:Landroid/content/SharedPreferences;

    const-string v7, "floor_utc"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v8, p0, v8

    if-lez v8, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "base set from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (first="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lkk;->e:Z

    if-nez p0, :cond_5

    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_3

    invoke-static {}, Lkk;->e()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lkk;->d(IZ)V

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    sget-object p0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lt3;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lt3;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v5

    :cond_6
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "rejecting "

    const-string v2, ": "

    invoke-static {v0, p2, v2}, Lpi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " outside the plausible window"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public static e()V
    .locals 13

    sget-object v0, Lnk;->b:Lkk;

    const/4 v1, 0x0

    const-string v2, "base"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkk;->a()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_3

    iget v0, v0, Lkk;->d:I

    int-to-long v0, v0

    const-wide/32 v7, 0xea60

    mul-long/2addr v0, v7

    add-long v7, v5, v0

    const-wide/32 v9, 0x5265c00

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v7

    add-long v11, v3, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-long/2addr v11, v7

    sub-long/2addr v11, v0

    cmp-long v0, v11, v3

    if-gez v0, :cond_2

    add-long/2addr v11, v9

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no trusted UTC and clock reads "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 lifting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " so TLS works until a real time source answers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeKeeper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v12}, Lnk;->g(J)J

    return-void

    :cond_3
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public static f(I)V
    .locals 4

    sget-boolean v0, Lnk;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lnk;->b:Lkk;

    const/4 v1, 0x0

    const-string v2, "base"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkk;->b()Z

    move-result v3

    invoke-virtual {v0, p0, v3}, Lkk;->d(IZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "offset = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_2

    iget v0, v0, Lkk;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m manual="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lkk;->e:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimeKeeper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lt3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "offset"

    invoke-static {p0}, Lnk;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public static g(J)J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-gez v2, :cond_0

    return-wide v3

    :cond_0
    :try_start_0
    sget-object v2, Lnk;->a:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v2, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/AlarmManager;

    invoke-virtual {v2, p0, p1}, Landroid/app/AlarmManager;->setTime(J)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "app"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string p1, "TimeKeeper"

    const-string v0, "setTime failed \u2014 missing SET_TIME?"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v3

    :goto_1
    return-wide v0
.end method
