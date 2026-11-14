.class public final Ls3;
.super LG8;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, LG8;-><init>()V

    iput-object p1, p0, Ls3;->i:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Ls3;->i:Ljava/lang/Thread;

    return-object p0
.end method
