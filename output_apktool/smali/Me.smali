.class public final LMe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lda;

.field public final synthetic b:Lda;

.field public final synthetic c:LS9;

.field public final synthetic d:LS9;


# direct methods
.method public constructor <init>(Lda;Lda;LS9;LS9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMe;->a:Lda;

    iput-object p2, p0, LMe;->b:Lda;

    iput-object p3, p0, LMe;->c:LS9;

    iput-object p4, p0, LMe;->d:LS9;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, LMe;->d:LS9;

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, LMe;->c:LS9;

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LMe;->b:Lda;

    new-instance v0, Le3;

    invoke-direct {v0, p1}, Le3;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LMe;->a:Lda;

    new-instance v0, Le3;

    invoke-direct {v0, p1}, Le3;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
