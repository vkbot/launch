.class public final Lqk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:[J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Lpk;

.field public volatile d:I

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public final h:LJ2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lqk;->i:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1388
        0x3a98
        0xea60
        0x493e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqk;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lqk;->b:Landroid/os/Handler;

    new-instance p1, LJ2;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lqk;->h:LJ2;

    return-void
.end method
