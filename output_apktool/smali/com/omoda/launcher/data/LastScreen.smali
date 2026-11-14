.class public abstract Lcom/omoda/launcher/data/LastScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/omoda/launcher/data/LastScreen$AppFullscreen;,
        Lcom/omoda/launcher/data/LastScreen$Companion;,
        Lcom/omoda/launcher/data/LastScreen$Home;,
        Lcom/omoda/launcher/data/LastScreen$PresetShown;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_ID:Ljava/lang/String; = "preset_id"

.field private static final KEY_KIND:Ljava/lang/String; = "kind"

.field private static final KEY_LEFT:Ljava/lang/String; = "preset_left"

.field private static final KEY_RATIO:Ljava/lang/String; = "preset_ratio"

.field private static final KEY_RIGHT:Ljava/lang/String; = "preset_right"

.field private static final KIND_APP:Ljava/lang/String; = "app"

.field private static final KIND_HOME:Ljava/lang/String; = "home"

.field private static final KIND_PRESET:Ljava/lang/String; = "preset"

.field private static final PREFS:Ljava/lang/String; = "last_screen"

.field private static atStart:Lcom/omoda/launcher/data/LastScreen;

.field private static current:Lcom/omoda/launcher/data/LastScreen;

.field private static prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/omoda/launcher/data/LastScreen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/omoda/launcher/data/LastScreen$Companion;-><init>(LF6;)V

    sput-object v0, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LF6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/omoda/launcher/data/LastScreen;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAtStart$cp()Lcom/omoda/launcher/data/LastScreen;
    .locals 1

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->atStart:Lcom/omoda/launcher/data/LastScreen;

    return-object v0
.end method

.method public static final synthetic access$getCurrent$cp()Lcom/omoda/launcher/data/LastScreen;
    .locals 1

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->current:Lcom/omoda/launcher/data/LastScreen;

    return-object v0
.end method

.method public static final synthetic access$getPrefs$cp()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static final synthetic access$setAtStart$cp(Lcom/omoda/launcher/data/LastScreen;)V
    .locals 0

    sput-object p0, Lcom/omoda/launcher/data/LastScreen;->atStart:Lcom/omoda/launcher/data/LastScreen;

    return-void
.end method

.method public static final synthetic access$setCurrent$cp(Lcom/omoda/launcher/data/LastScreen;)V
    .locals 0

    sput-object p0, Lcom/omoda/launcher/data/LastScreen;->current:Lcom/omoda/launcher/data/LastScreen;

    return-void
.end method

.method public static final synthetic access$setPrefs$cp(Landroid/content/SharedPreferences;)V
    .locals 0

    sput-object p0, Lcom/omoda/launcher/data/LastScreen;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method
