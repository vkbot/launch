.class public final Ld7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLh;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:LRi;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILRi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7;->a:Ljava/lang/String;

    iput p2, p0, Ld7;->b:I

    iput p3, p0, Ld7;->c:I

    iput-object p4, p0, Ld7;->d:LRi;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lc7;

    invoke-direct {v0, p0}, Lc7;-><init>(Ld7;)V

    return-object v0
.end method
