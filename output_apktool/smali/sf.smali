.class public abstract Lsf;
.super Lx9;
.source "SourceFile"


# instance fields
.field public final R:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx9;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lsf;->R:Ljava/util/LinkedHashSet;

    return-void
.end method
