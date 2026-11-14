.class public final Lt8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lt8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt8;->a:Lt8;

    return-void
.end method


# virtual methods
.method public final b(Ld6;)Lc6;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Ld6;)Le6;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lha;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final f(Le6;)Le6;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
