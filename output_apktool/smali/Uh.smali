.class public final LUh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnb;

.field public b:Lnb;

.field public c:Lnb;

.field public d:Lnb;

.field public e:Lb6;

.field public f:Lb6;

.field public g:Lb6;

.field public h:Lb6;

.field public i:LT7;

.field public j:LT7;

.field public k:LT7;

.field public l:LT7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LUh;->a:Lnb;

    new-instance v0, Llh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LUh;->b:Lnb;

    new-instance v0, Llh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LUh;->c:Lnb;

    new-instance v0, Llh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LUh;->d:Lnb;

    new-instance v0, Le;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le;-><init>(F)V

    iput-object v0, p0, LUh;->e:Lb6;

    new-instance v0, Le;

    invoke-direct {v0, v1}, Le;-><init>(F)V

    iput-object v0, p0, LUh;->f:Lb6;

    new-instance v0, Le;

    invoke-direct {v0, v1}, Le;-><init>(F)V

    iput-object v0, p0, LUh;->g:Lb6;

    new-instance v0, Le;

    invoke-direct {v0, v1}, Le;-><init>(F)V

    iput-object v0, p0, LUh;->h:Lb6;

    new-instance v0, LT7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    iput-object v0, p0, LUh;->i:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    iput-object v0, p0, LUh;->j:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    iput-object v0, p0, LUh;->k:LT7;

    new-instance v0, LT7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT7;-><init>(I)V

    iput-object v0, p0, LUh;->l:LT7;

    return-void
.end method

.method public static b(Lnb;)V
    .locals 1

    instance-of v0, p0, Llh;

    if-eqz v0, :cond_0

    check-cast p0, Llh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, Lw6;

    if-eqz v0, :cond_1

    check-cast p0, Lw6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()LVh;
    .locals 2

    new-instance v0, LVh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LUh;->a:Lnb;

    iput-object v1, v0, LVh;->a:Lnb;

    iget-object v1, p0, LUh;->b:Lnb;

    iput-object v1, v0, LVh;->b:Lnb;

    iget-object v1, p0, LUh;->c:Lnb;

    iput-object v1, v0, LVh;->c:Lnb;

    iget-object v1, p0, LUh;->d:Lnb;

    iput-object v1, v0, LVh;->d:Lnb;

    iget-object v1, p0, LUh;->e:Lb6;

    iput-object v1, v0, LVh;->e:Lb6;

    iget-object v1, p0, LUh;->f:Lb6;

    iput-object v1, v0, LVh;->f:Lb6;

    iget-object v1, p0, LUh;->g:Lb6;

    iput-object v1, v0, LVh;->g:Lb6;

    iget-object v1, p0, LUh;->h:Lb6;

    iput-object v1, v0, LVh;->h:Lb6;

    iget-object v1, p0, LUh;->i:LT7;

    iput-object v1, v0, LVh;->i:LT7;

    iget-object v1, p0, LUh;->j:LT7;

    iput-object v1, v0, LVh;->j:LT7;

    iget-object v1, p0, LUh;->k:LT7;

    iput-object v1, v0, LVh;->k:LT7;

    iget-object p0, p0, LUh;->l:LT7;

    iput-object p0, v0, LVh;->l:LT7;

    return-object v0
.end method
