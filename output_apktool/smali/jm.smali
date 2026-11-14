.class public final Ljm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljm;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/List;

.field public static volatile d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljm;->a:Ljm;

    const-string v0, "apps"

    const-string v1, "navi"

    const-string v2, "last"

    const-string v3, "presets"

    const-string v4, "nothing"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljm;->b:Ljava/util/List;

    const-string v0, "no_bg"

    const-string v1, "black"

    const-string v2, "with_bg"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljm;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lang_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LKi;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnb;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preset_size"

    const-string v2, "small"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public static c()Z
    .locals 3

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "service_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Ljm;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiPreferences not initialized \u2014 call UiPreferences.init(context) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
