.class public final Lnn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lxf;


# instance fields
.field public a:I

.field public b:LBe;

.field public c:LBe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxf;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lxf;-><init>(I)V

    sput-object v0, Lnn;->d:Lxf;

    return-void
.end method

.method public static a()Lnn;
    .locals 1

    sget-object v0, Lnn;->d:Lxf;

    invoke-virtual {v0}, Lxf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn;

    if-nez v0, :cond_0

    new-instance v0, Lnn;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
