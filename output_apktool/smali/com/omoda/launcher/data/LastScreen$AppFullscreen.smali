.class public final Lcom/omoda/launcher/data/LastScreen$AppFullscreen;
.super Lcom/omoda/launcher/data/LastScreen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omoda/launcher/data/LastScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppFullscreen"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen;-><init>(LF6;)V

    iput-object p1, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/omoda/launcher/data/LastScreen$AppFullscreen;Ljava/lang/String;ILjava/lang/Object;)Lcom/omoda/launcher/data/LastScreen$AppFullscreen;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->copy(Ljava/lang/String;)Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/omoda/launcher/data/LastScreen$AppFullscreen;
    .locals 0

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    invoke-direct {p0, p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppFullscreen(packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->packageName:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lpi;->k(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
