.class public abstract Lue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v4, "net.osmand.plus"

    const-string v5, "net.osmand"

    const-string v0, "ru.yandex.yandexnavi"

    const-string v1, "ru.yandex.yandexmaps"

    const-string v2, "ru.dublgis.dgismobile"

    const-string v3, "com.google.android.apps.maps"

    const-string v6, "com.waze"

    const-string v7, "com.astrob.turbodog"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvf;->n([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lue;->a:Ljava/util/Set;

    return-void
.end method
