.class public final Lo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lo;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo;->c:Lo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp;->f:Lfm;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lfm;->D(Lo;Ljava/lang/Thread;)V

    return-void
.end method
