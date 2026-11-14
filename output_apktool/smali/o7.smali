.class public final Lo7;
.super Lnb;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lv9;

.field public final synthetic s:Lp7;


# direct methods
.method public constructor <init>(Lp7;Lv9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7;->s:Lp7;

    iput-object p2, p0, Lo7;->r:Lv9;

    return-void
.end method


# virtual methods
.method public final R(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo7;->r:Lv9;

    invoke-virtual {v0}, Lv9;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lv9;->R(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lo7;->s:Lp7;

    iget-object p0, p0, Lp7;->a0:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Lo7;->r:Lv9;

    invoke-virtual {v0}, Lv9;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lo7;->s:Lp7;

    iget-boolean p0, p0, Lp7;->d0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
