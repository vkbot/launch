.class public final LSb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LSb;

.field public static final b:Ljava/lang/String;

.field public static c:Landroid/content/SharedPreferences;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x53aafe331faf7680L    # 1.1261060317680099E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    const-wide v0, 0x53aafe241faf7680L

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    const-wide v0, 0x53aafe1c1faf7680L    # 1.12609139057193E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    const-wide v0, 0x53aafe121faf7680L    # 1.126085024834504E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    const-wide v0, 0x53aafe031faf7680L    # 1.1260754762283649E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    new-instance v0, LSb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSb;->a:LSb;

    const-wide v0, 0x53aafdf01faf7680L    # 1.1260633813272554E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LSb;->b:Ljava/lang/String;

    const-wide v0, 0x53aafdd91faf7680L

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LSb;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 4

    sget-object v0, LSb;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide v2, 0x53aaffc81faf7680L    # 1.1263638441337647E95

    invoke-static {v2, v3}, LC6;->r(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    sget-object v0, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-wide v2, 0x53aaffbe1faf7680L    # 1.1263574783963387E95

    invoke-static {v2, v3}, LC6;->r(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    rsub-int/lit8 v0, v0, 0xd

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static b(Z)V
    .locals 4

    sget-object v0, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v1, 0x53aafedd1faf7680L    # 1.1262142493042526E95

    invoke-static {v1, v2}, LC6;->r(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-wide v0, 0x53aafed31faf7680L

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, 0x53aafec41faf7680L    # 1.1261983349606875E95

    invoke-static {v2, v3}, LC6;->r(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
