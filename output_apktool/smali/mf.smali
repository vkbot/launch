.class public abstract Lmf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx8;->a:Lx8;

    iput-object v0, p0, Lmf;->a:Ljava/lang/Object;

    iput-object v0, p0, Lmf;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a(Lhf;)Z
.end method

.method public abstract b(Lhf;)Ljava/util/List;
.end method

.method public abstract c(Lhf;)Lrf;
.end method

.method public abstract d(Lhf;)Lrf;
.end method

.method public e(Lif;)V
    .locals 0

    return-void
.end method
