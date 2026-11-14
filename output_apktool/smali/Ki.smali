.class public final LKi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LKi;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/lang/Object;

.field public static d:LX4;

.field public static e:LA2;

.field public static f:Lle;

.field public static g:LSh;

.field public static h:LDf;

.field public static i:Ld3;

.field public static j:Lo6;

.field public static k:Lqm;

.field public static l:Lq0;

.field public static m:LOg;

.field public static n:Lrm;

.field public static o:LR2;

.field public static p:LOb;

.field public static q:Lu;

.field public static r:LHi;

.field public static s:LAj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, LKi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LKi;->a:LKi;

    const-string v6, "kk"

    const-string v7, "ms"

    const-string v1, "en"

    const-string v2, "tr"

    const-string v3, "pt"

    const-string v4, "fr"

    const-string v5, "ru"

    const-string v8, "es"

    const-string v9, "zh"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LKi;->b:Ljava/util/List;

    new-instance v1, Laf;

    const-string v0, "ru"

    const-string v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-direct {v1, v0, v2}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Laf;

    const-string v0, "en"

    const-string v3, "English"

    invoke-direct {v2, v0, v3}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Laf;

    const-string v0, "tr"

    const-string v4, "T\u00fcrk\u00e7e"

    invoke-direct {v3, v0, v4}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Laf;

    const-string v0, "pt"

    const-string v5, "Portugu\u00eas"

    invoke-direct {v4, v0, v5}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Laf;

    const-string v0, "fr"

    const-string v6, "Fran\u00e7ais"

    invoke-direct {v5, v0, v6}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Laf;

    const-string v0, "kk"

    const-string v7, "\u049a\u0430\u0437\u0430\u049b"

    invoke-direct {v6, v0, v7}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Laf;

    const-string v0, "ms"

    const-string v8, "Bahasa Melayu"

    invoke-direct {v7, v0, v8}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Laf;

    const-string v0, "es"

    const-string v9, "Espa\u00f1ol"

    invoke-direct {v8, v0, v9}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Laf;

    const-string v0, "zh"

    const-string v10, "\u4e2d\u6587"

    invoke-direct {v9, v0, v10}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v9}, [Laf;

    move-result-object v0

    invoke-static {v0}, Lid;->r0([Laf;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LKi;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lq0;
    .locals 1

    sget-object v0, LKi;->l:Lq0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activation"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static b()LR2;
    .locals 1

    sget-object v0, LKi;->o:LR2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appStorage"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static c()LX4;
    .locals 1

    sget-object v0, LKi;->d:LX4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "common"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static d()LOb;
    .locals 1

    sget-object v0, LKi;->p:LOb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "launcherUpdate"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static e()LOg;
    .locals 1

    sget-object v0, LKi;->m:LOg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "remoteApp"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static f()LSh;
    .locals 1

    sget-object v0, LKi;->g:LSh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settings"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static g()LAj;
    .locals 1

    sget-object v0, LKi;->s:LAj;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "taskManager"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static h(Lcom/omoda/launcher/LauncherApp;Ljava/lang/String;)V
    .locals 9

    const-string v0, "Loaded language: "

    const-string v1, "Strings"

    const-string v2, "open(...)"

    const-string v3, "lang/"

    sget-object v4, LKi;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "en"

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    const/4 v4, 0x0

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, LKi;->i(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v3, v0}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Failed to load lang/"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".json \u2014 falling back to en"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "lang/en.json"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_5
    invoke-static {p0}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {p0, v4}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LKi;->i(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p0, p1}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    throw v0
.end method

.method public static i(Lorg/json/JSONObject;)V
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "common"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v10, LX4;

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "getString(...)"

    const-string v2, "yes"

    invoke-static {v3, v11, v1, v2, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "delete"

    invoke-static {v5, v11, v1, v12, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "install"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "update"

    invoke-static {v7, v11, v1, v2, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "loading"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LX4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, LKi;->d:LX4;

    const-string v1, "appList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LA2;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deleteHint"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "reorderHint"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v1}, LA2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->e:LA2;

    const-string v1, "presetBar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "modeSelector"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lle;

    const-string v4, "fullscreen"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "split"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->f:Lle;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LSh;

    move-object v13, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    const-string v5, "unifiedLauncher"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "unifiedLauncherDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    const-string v5, "presetSize"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "presetSizeDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    const-string v6, "covers"

    invoke-static {v4, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "coversDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    const-string v6, "hideBack"

    invoke-static {v4, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v4, "hideBackDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    const-string v6, "sportKey"

    invoke-static {v4, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v4, "sportKeyDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    const-string v6, "autostart"

    invoke-static {v4, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "autostartDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    const-string v7, "timeZone"

    invoke-static {v4, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v4, "clockHourSuffix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    const-string v7, "language"

    invoke-static {v4, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "languageDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    const-string v7, "updateLauncher"

    invoke-static {v4, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "updateLauncherDesc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v32, v4

    const-string v7, "checkButton"

    invoke-static {v4, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v13 .. v33}, LSh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->g:LSh;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LDf;

    const-string v4, "small"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "medium"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "large"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v1}, LDf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->h:LDf;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ld3;

    const-string v4, "last"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "presets"

    invoke-static {v5, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "nothing"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "apps"

    invoke-static {v7, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "navi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Ld3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->i:Ld3;

    const-string v1, "coversMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lo6;

    const-string v4, "withBg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "noBg"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "black"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v1}, Lo6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->j:Lo6;

    const-string v1, "unifiedMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lqm;

    const-string v4, "off"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "on"

    invoke-static {v5, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "androidAuto"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "carPlay"

    invoke-static {v7, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "both"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lqm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->k:Lqm;

    const-string v1, "activation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lq0;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "deviceId"

    invoke-static {v14, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "enterCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wrongCode"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "emptyCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "site"

    invoke-static {v5, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v6, "later"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "laterRemaining"

    invoke-static {v6, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "launchOne"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "launchFew"

    invoke-static {v7, v11, v1, v8, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v8, "launchMany"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "activate"

    invoke-static {v8, v11, v1, v9, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "activateOnline"

    invoke-static {v9, v11, v1, v10, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v10, "onlineFailed"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v1

    invoke-direct/range {v13 .. v28}, Lq0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->l:Lq0;

    const-string v1, "remoteApp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LOg;

    const-string v4, "size"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "description"

    invoke-static {v13, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "downloading"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "downloadingPercent"

    invoke-static {v15, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "installing"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "installed"

    invoke-static {v5, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "error"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "downloadError"

    invoke-static {v6, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v7, "networkError"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v1

    invoke-direct/range {v12 .. v21}, LOg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->m:LOg;

    const-string v1, "uninstall"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lrm;

    const-string v5, "confirmTitle"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uninstalled"

    invoke-static {v5, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "replaceConfirm"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v5, v6, v1}, Lrm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->n:Lrm;

    const-string v1, "appStorage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LR2;

    const-string v5, "onDisk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "cache"

    invoke-static {v6, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "clear"

    invoke-static {v8, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "clearDataConfirm"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, LR2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->o:LR2;

    const-string v1, "launcherUpdate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LOb;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "latestVersion"

    invoke-static {v13, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "currentVersion"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "checking"

    invoke-static {v15, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "noUpdate"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "downloadFailed"

    invoke-static {v5, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "installSuccess"

    invoke-static {v4, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v6, "changes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v4

    move-object/from16 v21, v1

    invoke-direct/range {v12 .. v21}, LOb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->p:LOb;

    const-string v1, "accessibilityError"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lu;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "reasonNotInstalled"

    invoke-static {v13, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "reasonNotEnabled"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "reasonNotBinding"

    invoke-static {v15, v11, v1, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "reasonGaveUp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "diagAttempts"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "diagInstalled"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "diagEnabled"

    invoke-static {v5, v11, v1, v6, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v6, "diagBootTime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "diagYes"

    invoke-static {v6, v11, v1, v7, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v7, "diagNo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secondsSuffix"

    invoke-static {v7, v11, v1, v8, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v8, "btnRetry"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "btnSettings"

    invoke-static {v8, v11, v1, v9, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v9, "btnRestart"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v1

    invoke-direct/range {v12 .. v27}, Lu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->q:Lu;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, LHi;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-static {v4, v11, v1, v5, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "free"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v1}, LHi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, LKi;->r:LHi;

    const-string v1, "lang"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    sget-object v4, LKi;->b:Ljava/util/List;

    invoke-static {v4}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-static {v5}, Lid;->p0(I)I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    move v5, v6

    :cond_0
    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskManager"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, LAj;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "empty"

    invoke-static {v13, v11, v0, v2, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "swipeHint"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "memory"

    invoke-static {v15, v11, v0, v2, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "mb"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gb"

    invoke-static {v2, v11, v0, v3, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "notInMemory"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "preset"

    invoke-static {v3, v11, v0, v4, v11}, Lpi;->j(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v12, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v20}, LAj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, LKi;->s:LAj;

    return-void
.end method
