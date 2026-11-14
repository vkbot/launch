.class public final enum Lhf;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lhf;

.field public static final enum b:Lhf;

.field public static final synthetic c:[Lhf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhf;

    const-string v1, "ANDROID_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf;->a:Lhf;

    new-instance v1, Lhf;

    const-string v2, "CARPLAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhf;->b:Lhf;

    filled-new-array {v0, v1}, [Lhf;

    move-result-object v0

    sput-object v0, Lhf;->c:[Lhf;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhf;
    .locals 1

    const-class v0, Lhf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhf;

    return-object p0
.end method

.method public static values()[Lhf;
    .locals 1

    sget-object v0, Lhf;->c:[Lhf;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf;

    return-object v0
.end method
