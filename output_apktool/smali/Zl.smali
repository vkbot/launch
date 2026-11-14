.class public final LZl;
.super LYl;
.source "SourceFile"


# instance fields
.field public final synthetic a:LW2;

.field public final synthetic b:Lam;


# direct methods
.method public constructor <init>(Lam;LW2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZl;->b:Lam;

    iput-object p2, p0, LZl;->a:LW2;

    return-void
.end method


# virtual methods
.method public final e(LXl;)V
    .locals 3

    iget-object v0, p0, LZl;->b:Lam;

    iget-object v0, v0, Lam;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LZl;->a:LW2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lki;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LXl;->u(LWl;)V

    return-void
.end method
