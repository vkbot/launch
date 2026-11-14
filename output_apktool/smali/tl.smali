.class public final Ltl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;ILS5;)V
    .locals 0

    iput-object p1, p0, Ltl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Ltl;->f:Ljava/lang/String;

    iput p3, p0, Ltl;->g:I

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 2

    new-instance p2, Ltl;

    iget-object v0, p0, Ltl;->f:Ljava/lang/String;

    iget v1, p0, Ltl;->g:I

    iget-object p0, p0, Ltl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, v0, v1, p1}, Ltl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;ILS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Ltl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object v0

    iget-object v1, p0, Ltl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, LJi;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, LC6;->D(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iget p0, p0, Ltl;->g:I

    const-string v2, "createScaledBitmap(...)"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v6, p0, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v7, p0

    int-to-float v6, v6

    div-float/2addr v7, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, LC6;->P(F)I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-static {v8}, LC6;->P(F)I

    move-result v7

    invoke-static {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v6, v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    move-object v3, v0

    goto/16 :goto_9

    :cond_5
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v6}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x7530

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    move-object v7, v3

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v6}, Lnb;->o(Ljava/lang/Object;)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    const/16 v9, 0x2000

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v6, v7}, Lfm;->h(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "toByteArray(...)"

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v6, v3}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catchall_0
    move-exception v6

    goto :goto_5

    :catchall_1
    move-exception v7

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v8

    :try_start_8
    invoke-static {v6, v7}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadIcon failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ApiClient"

    invoke-static {v0, v6, v7}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    :goto_7
    if-nez v7, :cond_7

    goto :goto_9

    :cond_7
    array-length v0, v7

    invoke-static {v7, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v5, p0, :cond_9

    goto :goto_8

    :cond_9
    int-to-float p0, p0

    int-to-float v5, v5

    div-float/2addr p0, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p0

    invoke-static {v5}, LC6;->P(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p0

    invoke-static {v6}, LC6;->P(F)I

    move-result p0

    invoke-static {v0, v5, p0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object v0, p0

    :goto_8
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, LJi;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, LJi;->b(Ljava/io/File;[B)V

    goto/16 :goto_3

    :cond_b
    :goto_9
    return-object v3
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Ltl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Ltl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Ltl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
