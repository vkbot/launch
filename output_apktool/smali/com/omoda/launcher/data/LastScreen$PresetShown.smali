.class public final Lcom/omoda/launcher/data/LastScreen$PresetShown;
.super Lcom/omoda/launcher/data/LastScreen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omoda/launcher/data/LastScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresetShown"
.end annotation


# instance fields
.field private final preset:Lcom/omoda/launcher/data/Preset;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/data/Preset;)V
    .locals 1

    const-string v0, "preset"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/omoda/launcher/data/LastScreen;-><init>(LF6;)V

    iput-object p1, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    return-void
.end method

.method public static synthetic copy$default(Lcom/omoda/launcher/data/LastScreen$PresetShown;Lcom/omoda/launcher/data/Preset;ILjava/lang/Object;)Lcom/omoda/launcher/data/LastScreen$PresetShown;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->copy(Lcom/omoda/launcher/data/Preset;)Lcom/omoda/launcher/data/LastScreen$PresetShown;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/omoda/launcher/data/Preset;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    return-object p0
.end method

.method public final copy(Lcom/omoda/launcher/data/Preset;)Lcom/omoda/launcher/data/LastScreen$PresetShown;
    .locals 0

    const-string p0, "preset"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-direct {p0, p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;-><init>(Lcom/omoda/launcher/data/Preset;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    iget-object p1, p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPreset()Lcom/omoda/launcher/data/Preset;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    invoke-virtual {p0}, Lcom/omoda/launcher/data/Preset;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PresetShown(preset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/omoda/launcher/data/LastScreen$PresetShown;->preset:Lcom/omoda/launcher/data/Preset;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
