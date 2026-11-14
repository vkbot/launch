.class public final Lf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6;


# instance fields
.field public final a:LNb;

.field public final b:Ld6;


# direct methods
.method public constructor <init>(Ld6;Lda;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, LNb;

    iput-object p2, p0, Lf6;->a:LNb;

    instance-of p2, p1, Lf6;

    if-eqz p2, :cond_0

    check-cast p1, Lf6;

    iget-object p1, p1, Lf6;->b:Ld6;

    :cond_0
    iput-object p1, p0, Lf6;->b:Ld6;

    return-void
.end method
