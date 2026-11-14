.class public final LDb;
.super LCb;
.source "SourceFile"


# instance fields
.field public final e:LHb;

.field public final f:LEb;

.field public final g:Lm4;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LHb;LEb;Lm4;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LLc;-><init>()V

    iput-object p1, p0, LDb;->e:LHb;

    iput-object p2, p0, LDb;->f:LEb;

    iput-object p3, p0, LDb;->g:Lm4;

    iput-object p4, p0, LDb;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LDb;->o(Ljava/lang/Throwable;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final o(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, LDb;->g:Lm4;

    iget-object v0, p0, LDb;->e:LHb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LHb;->E(LLc;)Lm4;

    move-result-object p1

    iget-object v1, p0, LDb;->f:LEb;

    iget-object p0, p0, LDb;->h:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v2, p1, Lm4;->e:LHb;

    new-instance v3, LDb;

    invoke-direct {v3, v0, v1, p1, p0}, LDb;-><init>(LHb;LEb;Lm4;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Lnb;->J(Lyb;ZLCb;I)Ly7;

    move-result-object v2

    sget-object v3, LDe;->a:LDe;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LHb;->E(LLc;)Lm4;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, p0}, LHb;->t(LEb;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, LHb;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
