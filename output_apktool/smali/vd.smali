.class public final Lvd;
.super Lsf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lsf;"
    }
.end annotation


# instance fields
.field public S:I

.field public T:LH3;

.field public U:Lme;

.field public V:I

.field public W:LK1;

.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Landroid/view/View;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/View;

.field public c0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsf;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Lme;)V
    .locals 6

    iget-object v0, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lfg;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/c;

    iget-object v1, v0, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object v1, v1, LH3;->a:Lme;

    invoke-virtual {v1, p1}, Lme;->d(Lme;)I

    move-result v1

    iget-object v2, p0, Lvd;->U:Lme;

    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object v0, v0, LH3;->a:Lme;

    invoke-virtual {v0, v2}, Lme;->d(Lme;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    move v4, v5

    :cond_1
    iput-object p1, p0, Lvd;->U:Lme;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LJ3;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p0}, LJ3;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LJ3;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p0}, LJ3;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LJ3;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p0}, LJ3;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final C(I)V
    .locals 4

    iput p1, p0, Lvd;->V:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p1

    iget-object v0, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lfg;

    move-result-object v0

    check-cast v0, LPo;

    iget-object v3, p0, Lvd;->U:Lme;

    iget v3, v3, Lme;->c:I

    iget-object v0, v0, LPo;->d:Lvd;

    iget-object v0, v0, Lvd;->T:LH3;

    iget-object v0, v0, LH3;->a:Lme;

    iget v0, v0, Lme;->c:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lng;->n0(I)V

    iget-object p1, p0, Lvd;->b0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->c0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->Z:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lvd;->a0:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lvd;->b0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->c0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->Z:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->a0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lvd;->U:Lme;

    invoke-virtual {p0, p1}, Lvd;->B(Lme;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lx9;->m(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lx9;->f:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lvd;->S:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, LH3;

    iput-object v0, p0, Lvd;->T:LH3;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lme;

    iput-object p1, p0, Lvd;->U:Lme;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lx9;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lvd;->S:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, LK1;

    invoke-direct {v1, v0}, LK1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lvd;->W:LK1;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lvd;->T:LH3;

    iget-object v1, v1, LH3;->a:Lme;

    const v2, 0x101020d

    invoke-static {v0, v2}, LBd;->E(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const v3, 0x7f0b005a

    move v6, v4

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0055

    move v6, v5

    :goto_0
    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lx9;->w()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f06029c

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v7, 0x7f06029d

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v7, v3

    const v3, 0x7f06029b

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v3, v7

    const v7, 0x7f06028c

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lne;->d:I

    const v9, 0x7f060287

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v8

    sub-int/2addr v8, v4

    const v10, 0x7f06029a

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    mul-int/2addr v10, v8

    add-int/2addr v10, v9

    const v8, 0x7f060284

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr v3, v7

    add-int/2addr v3, v10

    add-int/2addr v3, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumHeight(I)V

    const p2, 0x7f08015e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v3, Lrd;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lrd;-><init>(I)V

    invoke-static {p2, v3}, Lhn;->h(Landroid/view/View;Lt;)V

    iget-object v3, p0, Lvd;->T:LH3;

    iget v3, v3, LH3;->e:I

    new-instance v7, LA6;

    if-lez v3, :cond_1

    invoke-direct {v7, v3}, LA6;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v7}, LA6;-><init>()V

    :goto_1
    invoke-virtual {p2, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Lme;->d:I

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f080161

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lsd;

    invoke-direct {p2, p0, v6, v6}, Lsd;-><init>(Lvd;II)V

    iget-object v1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lng;)V

    iget-object p2, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/material/datepicker/c;

    iget-object v1, p0, Lvd;->T:LH3;

    new-instance v3, LL;

    const/16 v5, 0x13

    invoke-direct {v3, v5, p0}, LL;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0, v1, v3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/view/ContextThemeWrapper;LH3;LL;)V

    iget-object v1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lfg;)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090032

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v3, 0x7f080164

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v5, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lng;)V

    iget-object v1, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, LPo;

    invoke-direct {v5, p0}, LPo;-><init>(Lvd;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lfg;)V

    iget-object v1, p0, Lvd;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Ltd;

    invoke-direct {v5, p0}, Ltd;-><init>(Lvd;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->i(Lkg;)V

    :cond_2
    const v1, 0x7f080157

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v5, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v5, Li4;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0}, Li4;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v5}, Lhn;->h(Landroid/view/View;Lt;)V

    const v5, 0x7f080159

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lvd;->Z:Landroid/view/View;

    const-string v6, "NAVIGATION_PREV_TAG"

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080158

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lvd;->a0:Landroid/view/View;

    const-string v6, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lvd;->b0:Landroid/view/View;

    const v3, 0x7f08015d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lvd;->c0:Landroid/view/View;

    invoke-virtual {p0, v4}, Lvd;->C(I)V

    iget-object v3, p0, Lvd;->U:Lme;

    invoke-virtual {v3}, Lme;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lud;

    invoke-direct {v4, p0, p2, v1}, Lud;-><init>(Lvd;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->j(Lrg;)V

    new-instance v3, LZ;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, LZ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lvd;->a0:Landroid/view/View;

    new-instance v3, Lqd;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p2, v4}, Lqd;-><init>(Lvd;Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lvd;->Z:Landroid/view/View;

    new-instance v3, Lqd;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lqd;-><init>(Lvd;Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {v0, v2}, LBd;->E(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lmc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmc;-><init>(I)V

    iget-object v1, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lmc;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    iget-object v0, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lvd;->U:Lme;

    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object p2, p2, LH3;->a:Lme;

    invoke-virtual {p2, v1}, Lme;->d(Lme;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    iget-object p0, p0, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lrd;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lrd;-><init>(I)V

    invoke-static {p0, p2}, Lhn;->h(Landroid/view/View;Lt;)V

    return-object p1
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lvd;->S:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v2, p0, Lvd;->T:LH3;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object p0, p0, Lvd;->U:Lme;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
