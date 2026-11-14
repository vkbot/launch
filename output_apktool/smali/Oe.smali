.class public final LOe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM3;


# instance fields
.field public final a:LD9;

.field public final synthetic b:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;LD9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LOe;->b:Landroidx/activity/b;

    iput-object p2, p0, LOe;->a:LD9;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, LOe;->b:Landroidx/activity/b;

    iget-object v1, v0, Landroidx/activity/b;->b:LT2;

    iget-object v2, p0, LOe;->a:LD9;

    invoke-virtual {v1, v2}, LT2;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/b;->c:LD9;

    invoke-static {v1, v2}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Landroidx/activity/b;->c:LD9;

    :cond_0
    iget-object v0, v2, LD9;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, v2, LD9;->c:Lra;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, LD9;->c:Lra;

    return-void
.end method
