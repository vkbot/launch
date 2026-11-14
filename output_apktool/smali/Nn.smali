.class public final LNn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static volatile b:Z

.field public static volatile c:J

.field public static volatile d:J

.field public static volatile e:[B

.field public static f:I

.field public static g:Landroid/content/Context;

.field public static final h:Lfj;

.field public static final i:Le8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.cherryvoice.offline/audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LNn;->a:Landroid/net/Uri;

    sget-object v0, LPh;->l:LPh;

    new-instance v1, Lfj;

    invoke-direct {v1, v0}, Lfj;-><init>(LS9;)V

    sput-object v1, LNn;->h:Lfj;

    new-instance v0, Le8;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le8;-><init>(I)V

    sput-object v0, LNn;->i:Le8;

    return-void
.end method

.method public static final a()Z
    .locals 6

    sget-object v0, LNn;->g:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "app"

    if-eqz v0, :cond_8

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "ru.yandex.yandexnavi"

    invoke-static {v4, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_6

    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-eq v0, v3, :cond_7

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, LNn;->g:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    sget-object v1, Lv8;->a:Lv8;

    :cond_4
    invoke-static {v1}, LNn;->d(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v4, 0x0

    :cond_7
    :goto_1
    return v4

    :cond_8
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public static final b()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LNn;->g:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, LNn;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-static {v2, v1}, Lfm;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_0
    const-string v1, "app"

    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1
    move-object v2, v0

    :goto_1
    const-wide/16 v3, 0x7530

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v3

    sput-wide v0, LNn;->c:J

    goto :goto_3

    :cond_2
    const/16 v1, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    invoke-static {v1, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    :try_start_6
    new-instance v11, Landroid/media/AudioRecord;

    const/16 v5, 0x1900

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v6, 0x6

    const/16 v7, 0x3e80

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v11

    :catch_1
    const-string v1, "VoiceMic"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    sput-boolean v6, LNn;->b:Z

    const-string v3, "the navigator does not listen (closed, map hidden): microphone -> Cherry Voice"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LD2;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4, v2}, LD2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v0, "voice-mic-capture"

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_4
    :goto_2
    const-string v5, "no microphone"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v3

    sput-wide v0, LNn;->c:J

    :goto_3
    return-void
.end method

.method public static final c(Ljava/io/File;)[B
    .locals 17

    invoke-static/range {p0 .. p0}, LC6;->D(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    move v5, v2

    move v4, v3

    :goto_0
    add-int/lit8 v6, v1, 0x8

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v7

    if-gt v6, v7, :cond_7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    add-int/lit8 v8, v1, 0x4

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x20746d66

    if-eq v7, v9, :cond_6

    const v9, 0x61746164

    if-eq v7, v9, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/2addr v1, v4

    rem-int/lit16 v7, v5, 0x3e80

    if-nez v7, :cond_1

    div-int/lit16 v8, v5, 0x3e80

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-nez v7, :cond_2

    div-int v9, v1, v8

    goto :goto_2

    :cond_2
    int-to-long v9, v1

    int-to-long v11, v2

    mul-long/2addr v9, v11

    int-to-long v11, v5

    div-long/2addr v9, v11

    long-to-int v9, v9

    :goto_2
    mul-int/lit8 v10, v9, 0x2

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_5

    if-nez v7, :cond_4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v13, v8, :cond_3

    mul-int v15, v12, v8

    add-int/2addr v15, v13

    mul-int/lit8 v15, v15, 0x2

    mul-int/2addr v15, v4

    add-int/2addr v15, v6

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    div-int/2addr v14, v8

    int-to-short v13, v14

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v16, v12

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v1, -0x1

    int-to-long v14, v12

    move/from16 v16, v12

    int-to-long v11, v5

    mul-long/2addr v14, v11

    int-to-long v11, v2

    div-long/2addr v14, v11

    long-to-int v11, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    mul-int/2addr v11, v4

    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v12, v16, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_6
    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    add-int/lit8 v5, v1, 0xc

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    :goto_6
    add-int/lit8 v6, v8, 0x8

    and-int/lit8 v7, v8, 0x1

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no data in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    sget-object v0, LNn;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "ru.yandex.yandexnavi"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getClientUid"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    return-object v1

    :cond_4
    :try_start_2
    const-string p0, "app"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
