.class public final LU8;
.super Li;
.source "SourceFile"


# instance fields
.field public final c:LT8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcg;-><init>()V

    new-instance v0, LT8;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LU8;->c:LT8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, LU8;->c:LT8;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
