.class public final Lal;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Ljava/lang/CharSequence;

.field public final synthetic h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, Lal;->f:Landroid/widget/TextView;

    iput-object p2, p0, Lal;->g:Ljava/lang/CharSequence;

    iput-object p3, p0, Lal;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 2

    new-instance p2, Lal;

    iget-object v0, p0, Lal;->g:Ljava/lang/CharSequence;

    iget-object v1, p0, Lal;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lal;->f:Landroid/widget/TextView;

    invoke-direct {p2, p0, v0, v1, p1}, Lal;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Ll6;->a:Ll6;

    iget v0, v1, Lal;->e:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    const-string v0, "optString(...)"

    const-string v4, ""

    const-string v5, "getString(...)"

    const-string v6, "ApiClient"

    const-string v7, "fetchLauncherUpdate: HTTP "

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "https://omoda-c5-launcher.ru/api/launcher/latest"

    invoke-static {v10}, LT0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v9, v10}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/net/HttpURLConnection;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v10, 0x7530

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v10, "Accept"

    const-string v11, "application/json"

    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v13, v8

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v10, "getInputStream(...)"

    invoke-static {v7, v10}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {v7}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, LS0;

    const-string v11, "version"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "download_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "file_size"

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v5, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "file_size_human"

    invoke-virtual {v10, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "changelog"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, LS0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v13, v7

    goto :goto_3

    :goto_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string v4, "fetchLauncherUpdate failed"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_3
    sget-object v0, Lv7;->a:LT6;

    sget-object v0, Lcd;->a:LCa;

    new-instance v4, LZk;

    iget-object v10, v1, Lal;->f:Landroid/widget/TextView;

    iget-object v11, v1, Lal;->g:Ljava/lang/CharSequence;

    iget-object v12, v1, Lal;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, LZk;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;LS5;)V

    iput v3, v1, Lal;->e:I

    invoke-static {v0, v4, v1}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_4
    sget-object v0, Lsm;->a:Lsm;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lal;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lal;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lal;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
