.class public final Lcom/omoda/launcher/data/LastScreen$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omoda/launcher/data/LastScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LF6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/omoda/launcher/data/LastScreen$Companion;-><init>()V

    return-void
.end method

.method private final read(Landroid/content/SharedPreferences;)Lcom/omoda/launcher/data/LastScreen;
    .locals 4

    const-string v0, "kind"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3a6b1d21

    if-eq v2, v3, :cond_4

    const p0, 0x17a21

    if-eq v2, p0, :cond_2

    const p0, 0x30f4df

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "home"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/omoda/launcher/data/LastScreen$Home;->INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;

    goto :goto_0

    :cond_2
    const-string p0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    invoke-direct {v1, p0}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "preset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/omoda/launcher/data/LastScreen$Companion;->readPreset(Landroid/content/SharedPreferences;)Lcom/omoda/launcher/data/Preset;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-direct {v1, p0}, Lcom/omoda/launcher/data/LastScreen$PresetShown;-><init>(Lcom/omoda/launcher/data/Preset;)V

    :cond_6
    :goto_0
    return-object v1
.end method

.method private final readPreset(Landroid/content/SharedPreferences;)Lcom/omoda/launcher/data/Preset;
    .locals 5

    const-string p0, "preset_left"

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/omoda/launcher/data/Preset;

    const-string v2, "preset_id"

    const/4 v3, -0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "preset_right"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "preset_ratio"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/omoda/launcher/data/Preset;-><init>(ILjava/lang/String;Ljava/lang/String;F)V

    return-object v1
.end method

.method private final declared-synchronized write(Lcom/omoda/launcher/data/LastScreen;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getPrefs$cp()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getCurrent$cp()Lcom/omoda/launcher/data/LastScreen;

    move-result-object v1

    invoke-static {p1, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/omoda/launcher/data/LastScreen;->access$setCurrent$cp(Lcom/omoda/launcher/data/LastScreen;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    instance-of v1, p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    if-eqz v1, :cond_2

    const-string v1, "kind"

    const-string v2, "preset"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preset_id"

    move-object v2, p1

    check-cast v2, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/omoda/launcher/data/Preset;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preset_left"

    move-object v2, p1

    check-cast v2, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preset_right"

    move-object v2, p1

    check-cast v2, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preset_ratio"

    check-cast p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    instance-of v1, p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    if-eqz v1, :cond_3

    const-string v1, "kind"

    const-string v2, "app"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app"

    check-cast p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/omoda/launcher/data/LastScreen$Home;->INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;

    invoke-static {p1, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "kind"

    const-string v1, "home"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public final app(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    invoke-direct {v0, p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen$Companion;->write(Lcom/omoda/launcher/data/LastScreen;)V

    return-void
.end method

.method public final getAtStart()Lcom/omoda/launcher/data/LastScreen;
    .locals 0

    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getAtStart$cp()Lcom/omoda/launcher/data/LastScreen;

    move-result-object p0

    return-object p0
.end method

.method public final getLastPreset()Lcom/omoda/launcher/data/Preset;
    .locals 1

    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getPrefs$cp()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-direct {v0, p0}, Lcom/omoda/launcher/data/LastScreen$Companion;->readPreset(Landroid/content/SharedPreferences;)Lcom/omoda/launcher/data/Preset;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final home()V
    .locals 1

    sget-object v0, Lcom/omoda/launcher/data/LastScreen$Home;->INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen$Companion;->write(Lcom/omoda/launcher/data/LastScreen;)V

    return-void
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getPrefs$cp()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "last_screen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/omoda/launcher/data/LastScreen;->access$setPrefs$cp(Landroid/content/SharedPreferences;)V

    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/omoda/launcher/data/LastScreen$Companion;->read(Landroid/content/SharedPreferences;)Lcom/omoda/launcher/data/LastScreen;

    move-result-object p1

    invoke-static {p1}, Lcom/omoda/launcher/data/LastScreen;->access$setCurrent$cp(Lcom/omoda/launcher/data/LastScreen;)V

    invoke-static {}, Lcom/omoda/launcher/data/LastScreen;->access$getCurrent$cp()Lcom/omoda/launcher/data/LastScreen;

    move-result-object p1

    invoke-static {p1}, Lcom/omoda/launcher/data/LastScreen;->access$setAtStart$cp(Lcom/omoda/launcher/data/LastScreen;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final preset(Lcom/omoda/launcher/data/Preset;)V
    .locals 1

    const-string v0, "preset"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-direct {v0, p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;-><init>(Lcom/omoda/launcher/data/Preset;)V

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen$Companion;->write(Lcom/omoda/launcher/data/LastScreen;)V

    return-void
.end method
