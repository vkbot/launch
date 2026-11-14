.class public final synthetic LD2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LD2;->a:I

    iput-object p1, p0, LD2;->b:Ljava/lang/Object;

    iput-object p3, p0, LD2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const-string v3, "this$0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, LD2;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v2, v0, LD2;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioRecord;

    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v3, "VoiceMic"

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/16 v0, 0xc80

    new-array v7, v0, [B

    :try_start_0
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    :goto_0
    sget-boolean v8, LNn;->b:Z

    if-eqz v8, :cond_3

    invoke-virtual {v2, v7, v5, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    if-lez v8, :cond_0

    sget-object v9, LNn;->e:[B

    if-eqz v9, :cond_2

    array-length v10, v9

    sget v11, LNn;->f:I

    sub-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    sget v11, LNn;->f:I

    invoke-virtual {v6, v9, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    if-ge v10, v8, :cond_1

    sub-int/2addr v8, v10

    new-array v8, v8, [B

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    sget v8, LNn;->f:I

    add-int/2addr v8, v10

    sput v8, LNn;->f:I

    array-length v9, v9

    if-lt v8, v9, :cond_0

    sput-object v4, LNn;->e:[B

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v7, v5, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    :goto_2
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    sput-boolean v5, LNn;->b:Z

    goto :goto_5

    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x7530

    add-long/2addr v0, v3

    sput-wide v0, LNn;->c:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_6

    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cherry Voice stopped listening: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v0, v1

    add-long/2addr v3, v0

    sput-wide v3, LNn;->c:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    :try_start_7
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    :try_start_8
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    sput-boolean v5, LNn;->b:Z

    throw v0

    :pswitch_0
    iget-object v1, v0, LD2;->b:Ljava/lang/Object;

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    if-nez v2, :cond_4

    goto :goto_8

    :cond_4
    iget-boolean v1, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_5
    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    move-object v4, v0

    :goto_7
    if-nez v4, :cond_7

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "\u00b0C"

    invoke-static {v0, v3}, Lpi;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    return-void

    :pswitch_1
    sget-object v1, Lmk;->a:Lmk;

    iget-object v6, v0, LD2;->b:Ljava/lang/Object;

    check-cast v6, Lqk;

    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LJ2;

    sget-object v8, Lqk;->i:[J

    const-string v9, "TimeSyncWatchdog"

    const-string v0, "no time source answered (attempt "

    const-string v10, "time from "

    invoke-static {v6, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$self"

    invoke-static {v7, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    const-wide/16 v13, 0x0

    const-wide/32 v15, 0x1499700

    :try_start_9
    sget-object v17, Lnk;->a:Landroid/content/Context;

    sget-boolean v17, Lnk;->f:Z

    if-eqz v17, :cond_9

    sget-object v17, Lnk;->b:Lkk;

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lkk;->a()J

    move-result-wide v17

    goto :goto_9

    :cond_8
    const-string v0, "base"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_9
    move-wide/from16 v17, v13

    :goto_9
    invoke-static/range {v17 .. v18}, LGe;->a(J)LFe;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v11, v4, LFe;->a:J

    iget-object v0, v4, LFe;->b:Ljava/lang/String;

    invoke-static {v11, v12, v0}, Lnk;->d(JLjava/lang/String;)Z

    move-result v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-nez v11, :cond_b

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, LFe;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rejected \u2014 keeping retry cadence"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    goto :goto_f

    :goto_a
    move v11, v5

    goto :goto_f

    :cond_a
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v6, Lqk;->d:I

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move v11, v5

    :cond_b
    :goto_b
    iput-boolean v5, v6, Lqk;->e:Z

    if-eqz v11, :cond_c

    iput v5, v6, Lqk;->d:I

    goto :goto_c

    :cond_c
    iget v0, v6, Lqk;->d:I

    add-int/2addr v0, v2

    iput v0, v6, Lqk;->d:I

    :goto_c
    iget-boolean v0, v6, Lqk;->g:Z

    iput-boolean v5, v6, Lqk;->g:Z

    if-eqz v0, :cond_d

    move-wide v11, v13

    goto :goto_d

    :cond_d
    if-eqz v11, :cond_f

    :cond_e
    move-wide v11, v15

    goto :goto_d

    :cond_f
    invoke-static {}, Lnk;->c()Lmk;

    move-result-object v0

    if-ne v0, v1, :cond_e

    iget v0, v6, Lqk;->d:I

    if-gt v0, v3, :cond_10

    iget v0, v6, Lqk;->d:I

    aget-wide v11, v8, v0

    goto :goto_d

    :cond_10
    const-wide/32 v11, 0x927c0

    :goto_d
    iget-boolean v0, v6, Lqk;->f:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Lqk;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_e
    iget-object v0, v6, Lqk;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12

    :catchall_9
    move-exception v0

    goto :goto_a

    :goto_f
    :try_start_c
    const-string v4, "time acquisition threw"

    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    iput-boolean v5, v6, Lqk;->e:Z

    if-eqz v11, :cond_11

    iput v5, v6, Lqk;->d:I

    goto :goto_10

    :cond_11
    iget v0, v6, Lqk;->d:I

    add-int/2addr v0, v2

    iput v0, v6, Lqk;->d:I

    :goto_10
    iget-boolean v0, v6, Lqk;->g:Z

    iput-boolean v5, v6, Lqk;->g:Z

    if-eqz v0, :cond_12

    move-wide v11, v13

    goto :goto_11

    :cond_12
    if-eqz v11, :cond_14

    :cond_13
    move-wide v11, v15

    goto :goto_11

    :cond_14
    sget-object v0, Lnk;->a:Landroid/content/Context;

    invoke-static {}, Lnk;->c()Lmk;

    move-result-object v0

    if-ne v0, v1, :cond_13

    iget v0, v6, Lqk;->d:I

    if-gt v0, v3, :cond_15

    iget v0, v6, Lqk;->d:I

    aget-wide v11, v8, v0

    goto :goto_11

    :cond_15
    const-wide/32 v11, 0x927c0

    :goto_11
    iget-boolean v0, v6, Lqk;->f:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Lqk;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_16
    :goto_12
    return-void

    :catchall_a
    move-exception v0

    iput-boolean v5, v6, Lqk;->e:Z

    if-eqz v11, :cond_17

    iput v5, v6, Lqk;->d:I

    goto :goto_13

    :cond_17
    iget v4, v6, Lqk;->d:I

    add-int/2addr v4, v2

    iput v4, v6, Lqk;->d:I

    :goto_13
    iget-boolean v2, v6, Lqk;->g:Z

    iput-boolean v5, v6, Lqk;->g:Z

    if-eqz v2, :cond_18

    move-wide v11, v13

    goto :goto_14

    :cond_18
    if-eqz v11, :cond_1a

    :cond_19
    move-wide v11, v15

    goto :goto_14

    :cond_1a
    sget-object v2, Lnk;->a:Landroid/content/Context;

    invoke-static {}, Lnk;->c()Lmk;

    move-result-object v2

    if-ne v2, v1, :cond_19

    iget v1, v6, Lqk;->d:I

    if-gt v1, v3, :cond_1b

    iget v1, v6, Lqk;->d:I

    aget-wide v11, v8, v1

    goto :goto_14

    :cond_1b
    const-wide/32 v11, 0x927c0

    :goto_14
    iget-boolean v1, v6, Lqk;->f:Z

    if-eqz v1, :cond_1c

    iget-object v1, v6, Lqk;->b:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v6, Lqk;->b:Landroid/os/Handler;

    invoke-virtual {v1, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    throw v0

    :pswitch_2
    iget-object v1, v0, LD2;->b:Ljava/lang/Object;

    check-cast v1, Lzj;

    invoke-static {v1, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$1"

    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    check-cast v0, Lqj;

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LEg;->c()I

    move-result v0

    invoke-static {v1, v0}, Lzj;->b(Lzj;I)V

    return-void

    :pswitch_3
    iget-object v1, v0, LD2;->b:Ljava/lang/Object;

    check-cast v1, Lff;

    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lff;->A(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_4
    iget-object v3, v0, LD2;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/profileinstaller/ProfileInstallerInitializer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, LNf;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    new-instance v5, Li1;

    iget-object v0, v0, LD2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v5, v0, v2}, Li1;-><init>(Landroid/content/Context;I)V

    add-int/2addr v4, v1

    int-to-long v0, v4

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_5
    iget-object v1, v0, LD2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, LD2;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LE2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_d
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    invoke-virtual {v2}, LE2;->a()V

    return-void

    :catchall_b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2}, LE2;->a()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
