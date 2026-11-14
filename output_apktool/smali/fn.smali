.class public final Lfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:LSe;


# direct methods
.method public constructor <init>(LSe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfn;->a:LSe;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, LK5;

    new-instance v1, LL;

    invoke-direct {v1, p2}, LL;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, LK5;-><init>(LJ5;)V

    iget-object p0, p0, Lfn;->a:LSe;

    check-cast p0, LTj;

    invoke-virtual {p0, p1, v0}, LTj;->a(Landroid/view/View;LK5;)LK5;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p0, p0, LK5;->a:LJ5;

    invoke-interface {p0}, LJ5;->r()Landroid/view/ContentInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lx3;->g(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p0

    return-object p0
.end method
