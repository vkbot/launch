.class public final enum Lpm;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lpm;

.field public static final enum e:Lpm;

.field public static final synthetic f:[Lpm;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lpm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "OFF"

    const/4 v2, 0x0

    const-string v3, "off"

    const/4 v6, 0x6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v7, Lpm;->d:Lpm;

    new-instance v0, Lpm;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v9, "ON"

    const/4 v10, 0x1

    const-string v11, "on"

    const/4 v14, 0x6

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v0, Lpm;->e:Lpm;

    new-instance v1, Lpm;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "ANDROID_AUTO"

    const/16 v17, 0x2

    const-string v18, "android_auto"

    const/16 v21, 0x4

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    new-instance v2, Lpm;

    const/4 v13, 0x1

    const-string v9, "CARPLAY"

    const/4 v10, 0x3

    const-string v11, "carplay"

    const/4 v14, 0x2

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    new-instance v3, Lpm;

    const/16 v17, 0x4

    const-string v18, "both"

    const-string v16, "BOTH"

    const/16 v20, 0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    filled-new-array {v7, v0, v1, v2, v3}, [Lpm;

    move-result-object v0

    sput-object v0, Lpm;->f:[Lpm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lpm;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lpm;->b:Z

    iput-boolean p5, p0, Lpm;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZI)V
    .locals 8

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v2 .. v7}, Lpm;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpm;
    .locals 1

    const-class v0, Lpm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpm;

    return-object p0
.end method

.method public static values()[Lpm;
    .locals 1

    sget-object v0, Lpm;->f:[Lpm;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpm;

    return-object v0
.end method
