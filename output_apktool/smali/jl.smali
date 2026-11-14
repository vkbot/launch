.class public final Ljl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:Ljava/io/File;

.field public f:I

.field public final synthetic g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic h:LS0;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V
    .locals 1

    sget-object v0, LKi;->a:LKi;

    iput-object p1, p0, Ljl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Ljl;->h:LS0;

    iput-object p3, p0, Ljl;->i:Landroid/widget/TextView;

    iput-object p4, p0, Ljl;->j:Landroid/widget/TextView;

    iput-object p5, p0, Ljl;->k:Landroid/widget/TextView;

    invoke-direct {p0, p6}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 7

    new-instance p2, Ljl;

    iget-object v4, p0, Ljl;->j:Landroid/widget/TextView;

    iget-object v5, p0, Ljl;->k:Landroid/widget/TextView;

    iget-object v3, p0, Ljl;->i:Landroid/widget/TextView;

    sget-object v0, LKi;->a:LKi;

    iget-object v1, p0, Ljl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, Ljl;->h:LS0;

    move-object v0, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    sget-object v2, Ll6;->a:Ll6;

    iget v0, v1, Ljl;->f:I

    sget-object v3, Lsm;->a:Lsm;

    sget-object v4, LKi;->a:LKi;

    iget-object v4, v1, Ljl;->i:Landroid/widget/TextView;

    iget-object v5, v1, Ljl;->k:Landroid/widget/TextView;

    iget-object v6, v1, Ljl;->j:Landroid/widget/TextView;

    iget-object v7, v1, Ljl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    iget-object v0, v1, Ljl;->e:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    move-object/from16 v20, v3

    move-object v3, v5

    move-object/from16 v21, v6

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    move-object/from16 v20, v3

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    new-instance v10, Ljava/io/File;

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_3
    const-string v11, "launcher_update.apk"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, v1, Ljl;->h:LS0;

    iget-object v0, v0, LS0;->b:Ljava/lang/String;

    sget-object v11, LKi;->a:LKi;

    const-string v11, "ApiClient"

    const-string v12, "downloadApkFromUrl: HTTP "

    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-static {v0}, LT0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v14, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v14}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2710

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0x493e0

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v14, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v15, 0xc8

    if-gt v15, v0, :cond_7

    const/16 v15, 0x12c

    if-ge v0, v15, :cond_7

    invoke-virtual {v14}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v20, v3

    const/4 v3, -0x1

    if-eq v13, v3, :cond_5

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v15, v0, v3, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v5

    move-object/from16 v21, v6

    int-to-long v5, v13

    add-long v18, v18, v5

    cmp-long v5, v8, v16

    if-lez v5, :cond_4

    const/16 v5, 0x64

    int-to-long v5, v5

    mul-long v5, v5, v18

    :try_start_5
    div-long/2addr v5, v8

    long-to-int v5, v5

    iget-object v6, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object v13, Lv7;->a:LT6;

    sget-object v13, Lcd;->a:LCa;

    move-object/from16 v22, v0

    new-instance v0, Lil;

    sget-object v23, LKi;->a:LKi;

    move-wide/from16 v23, v8

    const/4 v8, 0x0

    invoke-direct {v0, v4, v5, v8}, Lil;-><init>(Landroid/widget/TextView;ILS5;)V

    const/4 v5, 0x2

    invoke-static {v6, v13, v0, v5}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v3

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v0, v22

    move-wide/from16 v8, v23

    goto :goto_0

    :goto_1
    move-object v6, v0

    move-object/from16 v5, v21

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v5, v3

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v5

    move-object/from16 v21, v6

    goto :goto_1

    :cond_5
    move-object v3, v5

    move-object/from16 v21, v6

    const/4 v5, 0x0

    :try_start_6
    invoke-static {v15, v5}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v12, v5}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadApkFromUrl: saved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    sget-object v5, Lv7;->a:LT6;

    sget-object v5, Lcd;->a:LCa;

    new-instance v6, Lgl;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v8}, Lgl;-><init>(Landroid/widget/TextView;LS5;)V

    iput-object v10, v1, Ljl;->e:Ljava/io/File;

    const/4 v0, 0x2

    iput v0, v1, Ljl;->f:I

    invoke-static {v5, v6, v1}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    :cond_6
    move-object v0, v10

    :goto_2
    sget-object v1, Ljb;->a:Landroid/os/Handler;

    new-instance v1, Lhl;

    move-object/from16 v5, v21

    invoke-direct {v1, v4, v5, v3}, Lhl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v7, v0, v3, v1, v2}, Ljb;->b(Landroid/content/Context;Ljava/io/File;ZLha;I)V

    return-object v20

    :catch_0
    move-exception v0

    move-object/from16 v5, v21

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v5, v21

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v5, v21

    :goto_3
    move-object v6, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v0

    :goto_4
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v7, v0

    :try_start_a
    invoke-static {v15, v6}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_3

    :goto_5
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    move-object v7, v0

    :try_start_c
    invoke-static {v12, v6}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7

    :catchall_9
    move-exception v0

    goto :goto_6

    :catchall_a
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v5

    move-object v5, v6

    goto :goto_6

    :cond_7
    move-object/from16 v20, v3

    move-object v3, v5

    move-object v5, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :try_start_d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :goto_6
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v5

    move-object v5, v6

    :goto_7
    const-string v6, "downloadApkFromUrl failed"

    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :goto_8
    sget-object v0, Lv7;->a:LT6;

    sget-object v0, Lcd;->a:LCa;

    new-instance v6, Lfl;

    sget-object v7, LKi;->a:LKi;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v3, v7}, Lfl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    const/4 v3, 0x1

    iput v3, v1, Ljl;->f:I

    invoke-static {v0, v6, v1}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    return-object v2

    :cond_8
    :goto_9
    return-object v20
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Ljl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Ljl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Ljl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
