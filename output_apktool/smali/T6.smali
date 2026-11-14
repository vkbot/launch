.class public final LT6;
.super Lzh;
.source "SourceFile"


# static fields
.field public static final d:LT6;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LT6;

    sget v2, LCj;->c:I

    sget v3, LCj;->d:I

    sget-wide v4, LCj;->e:J

    sget-object v6, LCj;->a:Ljava/lang/String;

    invoke-direct {v0}, Lg6;-><init>()V

    new-instance v7, Lj6;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj6;-><init>(IIJLjava/lang/String;)V

    iput-object v7, v0, Lzh;->c:Lj6;

    sput-object v0, LT6;->d:LT6;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
