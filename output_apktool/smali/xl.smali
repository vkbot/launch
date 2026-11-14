.class public final Lxl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILS5;)V
    .locals 0

    iput-object p1, p0, Lxl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput p2, p0, Lxl;->f:I

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lxl;

    iget-object v0, p0, Lxl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget p0, p0, Lxl;->f:I

    invoke-direct {p2, v0, p0, p1}, Lxl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Lxl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object v1

    iget-object v1, v1, LJi;->b:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    sget-object v5, Lh4;->a:Ljava/nio/charset/Charset;

    const-string v6, "charset"

    invoke-static {v5, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v6}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6, v2}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_0
    if-ge v6, v1, :cond_1

    sget-object v7, Lcom/omoda/launcher/data/RemoteApp;->Companion:Lcom/omoda/launcher/data/RemoteApp$Companion;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "getJSONObject(...)"

    invoke-static {v8, v9}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/omoda/launcher/data/RemoteApp$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/omoda/launcher/data/RemoteApp;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v6, v1}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "list unreadable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "StoreCache"

    invoke-static {v1, v4, v5}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v6}, Lcom/omoda/launcher/data/RemoteApp;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    move-object v8, v2

    goto :goto_8

    :cond_5
    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z()LJi;

    move-result-object v7

    invoke-virtual {v7, v6}, LJi;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    move-object v7, v2

    :goto_5
    if-eqz v7, :cond_7

    invoke-static {v7}, LC6;->D(Ljava/io/File;)[B

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object v7, v2

    :goto_6
    if-eqz v7, :cond_4

    array-length v8, v7

    invoke-static {v7, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_8

    move-object v7, v2

    goto :goto_7

    :cond_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, p0, Lxl;->f:I

    if-gt v8, v9, :cond_9

    goto :goto_7

    :cond_9
    int-to-float v9, v9

    int-to-float v8, v8

    div-float/2addr v9, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-static {v8}, LC6;->P(F)I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    invoke-static {v10}, LC6;->P(F)I

    move-result v9

    invoke-static {v7, v8, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "createScaledBitmap(...)"

    invoke-static {v8, v9}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v8, v7, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object v7, v8

    :goto_7
    if-eqz v7, :cond_4

    new-instance v8, Laf;

    invoke-direct {v8, v6, v7}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    if-eqz v8, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v2, Laf;

    invoke-direct {v2, v5, v1}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    return-object v2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lxl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lxl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lxl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
