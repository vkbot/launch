.class public final Lsd;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic E:I

.field public final synthetic F:Lvd;


# direct methods
.method public constructor <init>(Lvd;II)V
    .locals 0

    iput-object p1, p0, Lsd;->F:Lvd;

    iput p3, p0, Lsd;->E:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final A0(LAg;[I)V
    .locals 2

    iget p1, p0, Lsd;->E:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lsd;->F:Lvd;

    if-nez p1, :cond_0

    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p2, v0

    :goto_0
    return-void
.end method

.method public final x0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lli;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Llc;-><init>(Landroid/content/Context;)V

    iput p2, v0, Llc;->a:I

    invoke-virtual {p0, v0}, Lng;->y0(Llc;)V

    return-void
.end method
