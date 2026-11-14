.class public final enum Lmk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lmk;

.field public static final enum b:Lmk;

.field public static final synthetic c:[Lmk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmk;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmk;->a:Lmk;

    new-instance v1, Lmk;

    const-string v2, "B"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmk;->b:Lmk;

    filled-new-array {v0, v1}, [Lmk;

    move-result-object v0

    sput-object v0, Lmk;->c:[Lmk;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmk;
    .locals 1

    const-class v0, Lmk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmk;

    return-object p0
.end method

.method public static values()[Lmk;
    .locals 1

    sget-object v0, Lmk;->c:[Lmk;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmk;

    return-object v0
.end method
