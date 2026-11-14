.class public final LP2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic a:LNb;


# direct methods
.method public constructor <init>(Lda;)V
    .locals 0

    check-cast p1, LNb;

    iput-object p1, p0, LP2;->a:LNb;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    sget-object p1, LQ2;->a:Landroid/os/Handler;

    new-instance v0, LO2;

    iget-object p0, p0, LP2;->a:LNb;

    invoke-direct {v0, p0, p2}, LO2;-><init>(Lda;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
