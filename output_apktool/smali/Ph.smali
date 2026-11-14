.class public final LPh;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# static fields
.field public static final c:LPh;

.field public static final d:LPh;

.field public static final e:LPh;

.field public static final f:LPh;

.field public static final g:LPh;

.field public static final h:LPh;

.field public static final i:LPh;

.field public static final j:LPh;

.field public static final k:LPh;

.field public static final l:LPh;

.field public static final m:LPh;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->c:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->d:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->e:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->f:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->g:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->h:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->i:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->j:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->k:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->l:LPh;

    new-instance v0, LPh;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LPh;-><init>(II)V

    sput-object v0, LPh;->m:LPh;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LPh;->b:I

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 5

    const-string v0, "UTC"

    const-string v1, "getService"

    const-string v2, "android.app.ActivityTaskManager"

    const-string v3, "base"

    const/4 v4, 0x0

    iget p0, p0, LPh;->b:I

    packed-switch p0, :pswitch_data_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WindowLauncher"

    const-string v1, "Cannot get IActivityTaskManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v4

    :pswitch_0
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "voice-mic"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0

    :pswitch_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lt3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_4
    sget-object p0, Lnk;->a:Landroid/content/Context;

    const-string p0, "guard"

    invoke-static {p0}, Lnk;->a(Ljava/lang/String;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_5
    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_0

    iget p0, p0, Lkk;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_6
    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkk;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_7
    sget-object p0, Lnk;->b:Lkk;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkk;->c()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_8
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get IActivityTaskManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "TaskSnapshots"

    invoke-static {p0, v0, v1}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v4

    :pswitch_9
    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
