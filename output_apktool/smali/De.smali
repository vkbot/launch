.class public final LDe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7;
.implements Ll4;


# static fields
.field public static final a:LDe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LDe;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDe;->a:LDe;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
