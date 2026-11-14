.class public final Lcom/omoda/launcher/data/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dimmed:Z

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final label:Ljava/lang/String;

.field private final lastUpdateTime:J

.field private final packageName:Ljava/lang/String;

.field private final tile:LP8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;Z)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-wide p4, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    .line 6
    iput-object p6, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    .line 7
    iput-boolean p7, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILF6;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/omoda/launcher/data/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILjava/lang/Object;)Lcom/omoda/launcher/data/AppInfo;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p7, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    :cond_5
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-wide p6, v1

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/omoda/launcher/data/AppInfo;->copy(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;Z)Lcom/omoda/launcher/data/AppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public final component5()LP8;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;Z)Lcom/omoda/launcher/data/AppInfo;
    .locals 8

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "label"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "icon"

    invoke-static {p3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/omoda/launcher/data/AppInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/omoda/launcher/data/AppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    iget-wide v5, p1, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    iget-object v3, p1, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    iget-boolean p1, p1, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDimmed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    if-eqz v0, :cond_0

    iget-object v0, v0, LP8;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTile()LP8;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo(packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/omoda/launcher/data/AppInfo;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/AppInfo;->tile:LP8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dimmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/omoda/launcher/data/AppInfo;->dimmed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
