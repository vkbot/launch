.class public final Lcom/omoda/launcher/data/RemoteApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/omoda/launcher/data/RemoteApp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/omoda/launcher/data/RemoteApp$Companion;


# instance fields
.field private final available:Z

.field private final description:Ljava/lang/String;

.field private final fileSize:J

.field private final fileSizeHuman:Ljava/lang/String;

.field private final iconUrl:Ljava/lang/String;

.field private final id:I

.field private final isDemo:Z

.field private final modVersion:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/omoda/launcher/data/RemoteApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/omoda/launcher/data/RemoteApp$Companion;-><init>(LF6;)V

    sput-object v0, Lcom/omoda/launcher/data/RemoteApp;->Companion:Lcom/omoda/launcher/data/RemoteApp$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p4, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSizeHuman"

    invoke-static {p9, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    iput-object p2, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    iput-object p5, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    iput-wide p7, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    iput-object p9, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    iput-object p10, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    iput-boolean p12, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/omoda/launcher/data/RemoteApp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/omoda/launcher/data/RemoteApp;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/omoda/launcher/data/RemoteApp;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)Lcom/omoda/launcher/data/RemoteApp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    return p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    return p0
.end method

.method public final component11()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)Lcom/omoda/launcher/data/RemoteApp;
    .locals 14

    const-string v0, "packageName"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSizeHuman"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/omoda/launcher/data/RemoteApp;

    move-object v1, v0

    move v2, p1

    move-object/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/omoda/launcher/data/RemoteApp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/omoda/launcher/data/RemoteApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    iget v1, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    iget v3, p1, Lcom/omoda/launcher/data/RemoteApp;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    iget-wide v5, p1, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    iget-boolean v3, p1, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    iget-boolean p1, p1, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    return-wide v0
.end method

.method public final getFileSizeHuman()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    return p0
.end method

.method public final getModVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-wide v4, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lpi;->e(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final isDemo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    return p0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget v2, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "version"

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    const-string v2, "mod_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "file_size"

    iget-wide v2, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "file_size_human"

    iget-object v2, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    const-string v2, "icon_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "is_demo"

    iget-boolean v2, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "available"

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "put(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteApp(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/omoda/launcher/data/RemoteApp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->modVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSizeHuman="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->fileSizeHuman:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/omoda/launcher/data/RemoteApp;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/omoda/launcher/data/RemoteApp;->isDemo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/omoda/launcher/data/RemoteApp;->available:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
