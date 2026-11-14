.class public final enum LZc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LZc;

.field public static final enum b:LZc;

.field public static final enum c:LZc;

.field public static final enum d:LZc;

.field public static final synthetic e:[LZc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LZc;

    const-string v1, "NOT_INSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZc;->a:LZc;

    new-instance v1, LZc;

    const-string v2, "NOT_ENABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZc;->b:LZc;

    new-instance v2, LZc;

    const-string v3, "NOT_BINDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZc;->c:LZc;

    new-instance v3, LZc;

    const-string v4, "GAVE_UP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LZc;->d:LZc;

    filled-new-array {v0, v1, v2, v3}, [LZc;

    move-result-object v0

    sput-object v0, LZc;->e:[LZc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZc;
    .locals 1

    const-class v0, LZc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZc;

    return-object p0
.end method

.method public static values()[LZc;
    .locals 1

    sget-object v0, LZc;->e:[LZc;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZc;

    return-object v0
.end method
