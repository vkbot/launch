.class public LT7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6;
.implements Lde;
.implements LKf;


# static fields
.field public static final A:LT7;

.field public static final B:LT7;

.field public static final synthetic b:LT7;

.field public static final synthetic c:LT7;

.field public static final d:LT7;

.field public static volatile e:Z = false

.field public static final synthetic f:LT7;

.field public static final g:LT7;

.field public static final h:LT7;

.field public static final i:LT7;

.field public static volatile j:Z = false

.field public static volatile k:I = -0x1

.field public static l:Lak;

.field public static m:LXj;

.field public static n:LZj;

.field public static o:Ldk;

.field public static p:LVj;

.field public static q:LYj;

.field public static r:LWj;

.field public static s:Lbk;

.field public static t:Lck;

.field public static final u:LT7;

.field public static final v:LT7;

.field public static volatile w:Z

.field public static x:Lse;

.field public static y:Lse;

.field public static z:Ljava/lang/Object;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LT7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->b:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->c:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->d:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->f:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->g:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->h:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->i:LT7;

    new-instance v0, LT7;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->u:LT7;

    new-instance v0, LT7;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->v:LT7;

    new-instance v0, LT7;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->A:LT7;

    new-instance v0, LT7;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    sput-object v0, LT7;->B:LT7;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LT7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LJ9;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, LT7;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLContext;
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const-string v3, "getTrustManagers(...)"

    invoke-static {v1, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_0

    const-string v1, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-static {v6, v1}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    new-instance v1, Lab;

    invoke-direct {v1, v6}, Lab;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v0, v4

    invoke-virtual {v3, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v3

    :cond_0
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;I)LT7;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v3, v2}, Lff;->d(Ljava/lang/String;Z)V

    sget-object v2, LYf;->m:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lnb;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lnb;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lnb;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Le;

    int-to-float v1, v1

    invoke-direct {v3, v1}, Le;-><init>(F)V

    invoke-static {p0, v0, v2, v3}, LVh;->a(Landroid/content/Context;IILe;)LUh;

    move-result-object p0

    invoke-virtual {p0}, LUh;->a()LVh;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, LT7;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, LT7;-><init>(I)V

    iget p1, v5, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lff;->e(I)V

    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lff;->e(I)V

    iget p1, v5, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lff;->e(I)V

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lff;->e(I)V

    return-object p0
.end method

.method public static d()LVj;
    .locals 1

    sget-object v0, LT7;->p:LVj;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "button"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static e()LWj;
    .locals 1

    sget-object v0, LT7;->r:LWj;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "color"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static f()Lbk;
    .locals 1

    sget-object v0, LT7;->s:Lbk;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "size"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static g(Lg8;Landroid/text/Editable;IIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-gez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    if-eq v2, v3, :cond_19

    if-eq v1, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    if-eqz p4, :cond_16

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_3

    if-ge p4, v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p2, :cond_4

    :cond_3
    :goto_0
    move v1, v3

    goto :goto_3

    :cond_4
    :goto_1
    move p4, v0

    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_9

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_0

    :cond_b
    move p4, v4

    goto :goto_2

    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_d

    if-ge p3, v2, :cond_c

    goto :goto_4

    :cond_c
    if-gez p2, :cond_e

    :cond_d
    :goto_4
    move p3, v3

    goto :goto_7

    :cond_e
    :goto_5
    move p4, v0

    :goto_6
    if-nez p2, :cond_f

    move p3, v2

    goto :goto_7

    :cond_f
    if-lt v2, p3, :cond_10

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move p4, v4

    goto :goto_6

    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    if-ne p3, v3, :cond_17

    goto :goto_9

    :cond_16
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_17
    const-class p2, Lim;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lim;

    if-eqz p2, :cond_19

    array-length p4, p2

    if-lez p4, :cond_19

    array-length p4, p2

    move v2, v0

    :goto_8
    if-ge v2, p4, :cond_18

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move v0, v4

    :cond_19
    :goto_9
    return v0
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 31

    move/from16 v1, p1

    const-string v0, "nav"

    const-string v2, "ThemeConfig"

    const-string v3, "textColor"

    const-string v4, "bg"

    const-string v5, "getString(...)"

    const-string v6, "Loaded "

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_0

    const-string v7, "themes/theme_1.json"

    goto :goto_0

    :cond_0
    const-string v7, "themes/theme_2.json"

    goto :goto_0

    :cond_1
    const-string v7, "themes/theme_3.json"

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "open(...)"

    invoke-static {v8, v9}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v8, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v8}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    :try_start_2
    invoke-static {v8, v10}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v11, Lak;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "btnOffsetX"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v11, v12, v9}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v11, LT7;->l:Lak;

    const-string v9, "cover"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v11, LXj;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "plain"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12, v9}, LXj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, LT7;->m:LXj;

    const-string v9, "indicator"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v11, LZj;

    const-string v12, "normal"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "selected"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12, v9}, LZj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, LT7;->n:LZj;

    const-string v9, "toggle"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v11, Ldk;

    const-string v12, "track"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "thumb"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12, v9}, Ldk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, LT7;->o:Ldk;

    const-string v9, "button"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v19, LVj;

    const-string v11, "primary"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "short"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "long"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "arrow"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "primaryFillColor"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v11, "primaryTextColor"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v11, v19

    invoke-direct/range {v11 .. v18}, LVj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v19, LT7;->p:LVj;

    const-string v9, "dialog"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v11, LYj;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "check"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v4, v9}, LYj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, LT7;->q:LYj;

    const-string v4, "color"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, LWj;

    invoke-static {v4}, Lnb;->o(Ljava/lang/Object;)V

    const-string v9, "icon"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v9, "iconDim"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v9, "iconAccent"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v9, "secondaryText"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v9, "toggleAccent"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v9, "appLabel"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v9, "textOnAccent"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v9, "accent"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v9, "accentDim"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v9, "error"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v9, "surface"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v9, "surfaceAlt"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    const-string v9, "divider"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v9, "scrim"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v9, "btnBorder"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    const-string v9, "btnBackground"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    const-string v9, "btnActiveLight"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    const-string v9, "btnActiveDim"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    move-object v11, v5

    invoke-direct/range {v11 .. v29}, LWj;-><init>(IIIIIIIIIIIIIIIIII)V

    sput-object v5, LT7;->r:LWj;

    const-string v4, "size"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lbk;

    const-string v9, "titleLarge"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v9, "titleMedium"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v9, "title"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v9, "body"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v9, "bodySmall"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v9, "caption"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v9, "clock"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lbk;-><init>(IIIIIII)V

    sput-object v5, LT7;->s:Lbk;

    const-string v4, "statusBar"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lck;

    invoke-static {v4}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v8, "plateColor"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v3, v4}, Lck;-><init>(II)V

    sput-object v5, LT7;->t:Lck;

    sput v1, LT7;->k:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (firmware mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", icon=#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, LT7;->l:Lak;

    if-eqz v4, :cond_2

    iget-object v0, v4, Lak;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-static {v8, v3}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u2014 falling back to hardcoded design 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lak;

    const-string v2, "theme_bg_1"

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT7;->l:Lak;

    new-instance v0, LXj;

    const-string v2, "cover_theme_1_bg"

    const-string v3, "cover_theme_1_plain"

    invoke-direct {v0, v2, v3}, LXj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LT7;->m:LXj;

    new-instance v0, LZj;

    const-string v2, "indicator_theme_1_n"

    const-string v3, "indicator_theme_1_p"

    invoke-direct {v0, v2, v3}, LZj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LT7;->n:LZj;

    new-instance v0, Ldk;

    const-string v2, "toggle_base_track"

    const-string v3, "toggle_base_thumb"

    invoke-direct {v0, v2, v3}, Ldk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LT7;->o:Ldk;

    new-instance v0, LVj;

    const v10, -0xe0e0d6

    const v11, -0x1a1a16

    const-string v5, "btn_thd_primary"

    const-string v6, "btn_thd_short"

    const-string v7, "btn_thd_long"

    const-string v8, "arrow_thd"

    const v9, -0x7c7967

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, LVj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, LT7;->p:LVj;

    new-instance v0, LYj;

    const-string v2, "dialog_bg_thd"

    const-string v3, "dialog_check_thd"

    invoke-direct {v0, v2, v3}, LYj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LT7;->q:LYj;

    new-instance v0, LWj;

    move-object v4, v0

    const v21, -0x1a1a16

    const v22, -0x717166

    const v5, -0x717166

    const v6, -0x545446

    const v7, -0x4a4a40

    const v8, -0x6e5d38

    const v9, -0xfe0f20

    const v10, -0x1a1a16

    const/4 v11, -0x1

    const v12, -0xa18538

    const v13, -0xb79f60

    const v14, -0x9495

    const v15, -0xfe7e7e0

    const v16, -0xd5d5d0

    const v17, -0xcacac0

    const/high16 v18, -0x34000000    # -3.3554432E7f

    const v19, -0xc5c5bb

    const v20, -0xe5e5de

    invoke-direct/range {v4 .. v22}, LWj;-><init>(IIIIIIIIIIIIIIIIII)V

    sput-object v0, LT7;->r:LWj;

    new-instance v0, Lbk;

    const/16 v29, 0x20

    const/16 v30, 0x30

    const/16 v24, 0x24

    const/16 v25, 0x1e

    const/16 v26, 0x24

    const/16 v27, 0x18

    const/16 v28, 0x16

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v30}, Lbk;-><init>(IIIIIII)V

    sput-object v0, LT7;->s:Lbk;

    new-instance v0, Lck;

    const v2, 0x7fffffff

    const v3, -0x33ebe8e6    # -3.8820968E7f

    invoke-direct {v0, v2, v3}, Lck;-><init>(II)V

    sput-object v0, LT7;->t:Lck;

    sput v1, LT7;->k:I

    :goto_2
    return-void
.end method

.method public static k()I
    .locals 4

    sget-boolean v0, LT7;->w:Z

    if-eqz v0, :cond_4

    sget-object v0, LT7;->z:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEf;

    const-string v2, "sizes"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v1, LEf;->g:I

    mul-int/lit8 v1, v1, 0x5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LEf;

    invoke-static {v3, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v3, LEf;->g:I

    mul-int/lit8 v3, v3, 0x5

    if-ge v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "presetVariants"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiConfig not initialized \u2014 call UiConfig.init(context) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final l()V
    .locals 0

    return-void
.end method

.method private final m(ILjava/io/Serializable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public b(LLd;Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized h(Lcom/omoda/launcher/LauncherApp;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, LT7;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v0, LD3;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.citos.setting.theme.mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    :try_start_3
    invoke-static {p1, v0}, LT7;->i(Landroid/content/Context;I)V

    const/4 p1, 0x1

    sput-boolean p1, LT7;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public j(ILjava/io/Serializable;)V
    .locals 2

    iget p0, p0, LT7;->a:I

    packed-switch p0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v0, 0x6

    const-string v1, "ProfileInstaller"

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :pswitch_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n()V
    .locals 1

    iget p0, p0, LT7;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "ProfileInstaller"

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public p(LLd;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
