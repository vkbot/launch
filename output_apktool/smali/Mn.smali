.class public final LMn;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "SourceFile"


# virtual methods
.method public final onRecordingConfigChanged(Ljava/util/List;)V
    .locals 0

    const-string p0, "configs"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LNn;->a:Landroid/net/Uri;

    invoke-static {p1}, LNn;->d(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sput-wide p0, LNn;->d:J

    sget-boolean p0, LNn;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "VoiceMic"

    const-string p1, "the navigator records: the microphone is its again"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, LNn;->b:Z

    :cond_0
    return-void
.end method
