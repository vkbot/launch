.class public final enum LTk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LTk;

.field public static final enum b:LTk;

.field public static final enum c:LTk;

.field public static final enum d:LTk;

.field public static final synthetic e:[LTk;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LTk;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTk;->a:LTk;

    new-instance v1, LTk;

    const-string v2, "TOP_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LTk;->b:LTk;

    new-instance v2, LTk;

    const-string v3, "BOTTOM_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LTk;->c:LTk;

    new-instance v3, LTk;

    const-string v4, "BOTTOM_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LTk;->d:LTk;

    filled-new-array {v0, v1, v2, v3}, [LTk;

    move-result-object v0

    sput-object v0, LTk;->e:[LTk;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LTk;
    .locals 1

    const-class v0, LTk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LTk;

    return-object p0
.end method

.method public static values()[LTk;
    .locals 1

    sget-object v0, LTk;->e:[LTk;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTk;

    return-object v0
.end method
