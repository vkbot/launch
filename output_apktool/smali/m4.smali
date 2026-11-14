.class public final Lm4;
.super LAb;
.source "SourceFile"

# interfaces
.implements Ll4;


# instance fields
.field public final e:LHb;


# direct methods
.method public constructor <init>(LHb;)V
    .locals 0

    invoke-direct {p0}, LLc;-><init>()V

    iput-object p1, p0, Lm4;->e:LHb;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, LCb;->n()LHb;

    move-result-object p0

    invoke-virtual {p0, p1}, LHb;->q(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm4;->o(Ljava/lang/Throwable;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final o(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, LCb;->n()LHb;

    move-result-object p1

    iget-object p0, p0, Lm4;->e:LHb;

    invoke-virtual {p0, p1}, LHb;->n(Ljava/lang/Object;)Z

    return-void
.end method
