.class public final Lcom/omoda/launcher/LauncherApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    sget-object v3, LT7;->d:LT7;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, LT7;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v3

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, LT7;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-boolean v2, LT7;->e:Z

    const-string v0, "InsecureSslContext"

    const-string v4, "Date-tolerant SSL factory installed for HttpsURLConnection"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "InsecureSslContext"

    const-string v5, "Failed to install date-tolerant SSL factory \u2014 falling back to default"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v3

    :goto_1
    sget-object v0, LSb;->a:LSb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v3, 0x53aaffff1faf7680L    # 1.126398855689608E95

    invoke-static {v3, v4}, LC6;->r(J)Ljava/lang/String;

    const-wide v3, 0x53aafff71faf7680L    # 1.1263937630996671E95

    invoke-static {v3, v4}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LSb;->c:Landroid/content/SharedPreferences;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide v4, 0x53aaffef1faf7680L    # 1.1263886705097263E95

    invoke-static {v4, v5}, LC6;->r(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide v4, 0x53aaffe41faf7680L    # 1.1263816681985576E95

    invoke-static {v4, v5}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sput-object v0, LSb;->d:Ljava/lang/String;

    const-wide v4, 0x53aaffe31faf7680L    # 1.126381031624815E95

    invoke-static {v4, v5}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, 0x53aaffd41faf7680L    # 1.126371483018676E95

    invoke-static {v5, v6}, LC6;->r(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, LSb;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, LT7;->v:LT7;

    monitor-enter v4

    :try_start_3
    sget-boolean v0, LT7;->w:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    monitor-exit v4

    goto/16 :goto_5

    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v6, "ui_config.json"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v6, "open(...)"

    invoke-static {v0, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v6, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v6, v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v6}, Lvf;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v6, v5}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "navPanel"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "default"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "getJSONObject(...)"

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lse;

    const-string v9, "buttonSize"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "spacer"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v9, v7}, Lse;-><init>(II)V

    sput-object v8, LT7;->x:Lse;

    const-string v7, "backHidden"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "getJSONObject(...)"

    invoke-static {v0, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lse;

    const-string v8, "buttonSize"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "spacer"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v7, v8, v0}, Lse;-><init>(II)V

    sput-object v7, LT7;->y:Lse;

    const-string v0, "preset"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "keys(...)"

    invoke-static {v6, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lpc;

    invoke-direct {v7, v2, v6}, Lpc;-><init>(ILjava/lang/Object;)V

    new-instance v6, Lo5;

    invoke-direct {v6, v7}, Lo5;-><init>(LLh;)V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v6}, Lo5;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "getJSONObject(...)"

    invoke-static {v9, v10}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LEf;

    const-string v11, "itemSize"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v11, "iconSize"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v11, "containerSize"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v11, "cardIconSize"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v11, "marginV"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v11, "sidebarWidth"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v11, "maxFit"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v11, "editBtnSize"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v11, "editBtnPad"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v11, "editBtnOffset"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object v11, v10

    invoke-direct/range {v11 .. v21}, LEf;-><init>(IIIIIIIIII)V

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    sput-object v7, LT7;->z:Ljava/lang/Object;

    sput-boolean v2, LT7;->w:Z

    const-string v0, "UiConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UiConfig loaded: navPanel(default+backHidden), preset variants="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, LT7;->z:Ljava/lang/Object;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    const-string v0, "presetVariants"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-static {v6, v7}, LC6;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    const-string v6, "UiConfig"

    const-string v7, "Failed to load ui_config.json \u2014 using fallbacks"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lse;

    const/16 v6, 0x38

    const/16 v7, 0x2d

    invoke-direct {v0, v6, v7}, Lse;-><init>(II)V

    sput-object v0, LT7;->x:Lse;

    new-instance v0, Lse;

    const/16 v6, 0x43

    const/16 v7, 0x36

    invoke-direct {v0, v6, v7}, Lse;-><init>(II)V

    sput-object v0, LT7;->y:Lse;

    const-string v0, "small"

    new-instance v15, LEf;

    const/16 v11, 0x20

    const/16 v12, 0x78

    const/4 v13, 0x5

    const/16 v14, 0x28

    const/16 v16, 0x8

    const/16 v17, 0xa

    const/16 v7, 0x60

    const/16 v8, 0x48

    const/16 v9, 0x50

    const/16 v10, 0x36

    move-object v6, v15

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v6 .. v16}, LEf;-><init>(IIIIIIIIII)V

    new-instance v6, Laf;

    invoke-direct {v6, v0, v5}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "medium"

    new-instance v5, LEf;

    const/16 v12, 0x2d

    const/16 v13, 0xa0

    const/4 v14, 0x4

    const/16 v15, 0x38

    const/16 v16, 0xb

    const/16 v17, 0xe

    const/16 v8, 0x86

    const/16 v9, 0x65

    const/16 v10, 0x70

    const/16 v11, 0x4c

    move-object v7, v5

    invoke-direct/range {v7 .. v17}, LEf;-><init>(IIIIIIIIII)V

    new-instance v7, Laf;

    invoke-direct {v7, v0, v5}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "large"

    new-instance v5, LEf;

    const/16 v24, 0x3b

    const/16 v25, 0xd2

    const/16 v26, 0x3

    const/16 v27, 0x4a

    const/16 v28, 0xf

    const/16 v29, 0x12

    const/16 v20, 0xb2

    const/16 v21, 0x85

    const/16 v22, 0x94

    const/16 v23, 0x64

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v29}, LEf;-><init>(IIIIIIIIII)V

    new-instance v8, Laf;

    invoke-direct {v8, v0, v5}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7, v8}, [Laf;

    move-result-object v0

    invoke-static {v0}, Lid;->r0([Laf;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LT7;->z:Ljava/lang/Object;

    sput-boolean v2, LT7;->w:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    monitor-exit v4

    :goto_5
    sget-object v2, Ljm;->a:Ljm;

    monitor-enter v2

    :try_start_a
    sget-object v0, Ljm;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "ui_preferences"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Ljm;->d:Landroid/content/SharedPreferences;

    new-instance v4, LS4;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, LS4;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lfj;

    invoke-direct {v5, v4}, Lfj;-><init>(LS9;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "unified_mode"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "unified_launcher"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "unified_launcher"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_6

    :catchall_4
    move-exception v0

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v5}, Lfj;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_6
    const-string v6, "unified_mode"

    if-eqz v3, :cond_6

    sget-object v3, Lpm;->e:Lpm;

    goto :goto_7

    :cond_6
    sget-object v3, Lpm;->d:Lpm;

    :goto_7
    iget-object v3, v3, Lpm;->a:Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "unified_launcher"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    const-string v3, "autostart_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "autostart_mode"

    invoke-virtual {v5}, Lfj;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "last"

    goto :goto_8

    :cond_8
    const-string v3, "presets"

    :goto_8
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_a
    monitor-exit v2

    sget-object v3, LKi;->a:LKi;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v0

    monitor-enter v3

    :try_start_b
    invoke-static {v1, v0}, LKi;->h(Lcom/omoda/launcher/LauncherApp;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    monitor-exit v3

    sget-object v0, LT7;->i:LT7;

    invoke-virtual {v0, v1}, LT7;->h(Lcom/omoda/launcher/LauncherApp;)V

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {v0, v1}, Lcom/omoda/launcher/data/LastScreen$Companion;->init(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, LNn;->a:Landroid/net/Uri;

    sget-object v0, LNn;->g:Landroid/content/Context;

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LNn;->g:Landroid/content/Context;

    sget-object v0, LNn;->h:Lfj;

    invoke-virtual {v0}, Lfj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    sget-object v2, LNn;->i:Le8;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, LNn;->g:Landroid/content/Context;

    const-string v2, "app"

    if-eqz v1, :cond_d

    new-instance v3, LLn;

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.omoda.launcher.VOICE_FEED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v0}, Lfj;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v1, LNn;->g:Landroid/content/Context;

    if-eqz v1, :cond_c

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_e

    new-instance v2, LMn;

    invoke-direct {v2}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    invoke-virtual {v0}, Lfj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    goto :goto_9

    :cond_c
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_d
    const/4 v1, 0x0

    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_9
    return-void

    :goto_a
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_a

    :goto_b
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :goto_c
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    :goto_d
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method
