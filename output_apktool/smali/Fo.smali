.class public final enum LFo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LFo;

.field public static final enum b:LFo;

.field public static final enum c:LFo;

.field public static final enum d:LFo;

.field public static final enum e:LFo;

.field public static final enum f:LFo;

.field public static final synthetic g:[LFo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LFo;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFo;->a:LFo;

    new-instance v1, LFo;

    const-string v2, "LAUNCHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LFo;->b:LFo;

    new-instance v2, LFo;

    const-string v3, "PRESET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LFo;->c:LFo;

    new-instance v3, LFo;

    const-string v4, "FULLSCREEN_APP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LFo;->d:LFo;

    new-instance v4, LFo;

    const-string v5, "OTHER_APP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LFo;->e:LFo;

    new-instance v5, LFo;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LFo;->f:LFo;

    filled-new-array/range {v0 .. v5}, [LFo;

    move-result-object v0

    sput-object v0, LFo;->g:[LFo;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LFo;
    .locals 1

    const-class v0, LFo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LFo;

    return-object p0
.end method

.method public static values()[LFo;
    .locals 1

    sget-object v0, LFo;->g:[LFo;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFo;

    return-object v0
.end method
