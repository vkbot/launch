.class public LAh;
.super Lf;
.source "SourceFile"

# interfaces
.implements Lm6;


# instance fields
.field public final d:LS5;


# direct methods
.method public constructor <init>(LS5;Le6;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lf;-><init>(Le6;Z)V

    iput-object p1, p0, LAh;->d:LS5;

    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Lm6;
    .locals 1

    iget-object p0, p0, LAh;->d:LS5;

    instance-of v0, p0, Lm6;

    if-eqz v0, :cond_0

    check-cast p0, Lm6;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LAh;->d:LS5;

    invoke-static {p0}, LC6;->u(LS5;)LS5;

    move-result-object p0

    invoke-static {p1}, LC6;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lfm;->M(LS5;Ljava/lang/Object;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LAh;->d:LS5;

    invoke-static {p1}, LC6;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LS5;->c(Ljava/lang/Object;)V

    return-void
.end method
