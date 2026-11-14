.class public final Lqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LDk;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lqd;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Le0;

    iget-object v1, p1, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, LDk;->h:Ljava/lang/CharSequence;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x1000

    .line 5
    iput v2, v0, Le0;->e:I

    .line 6
    iput v2, v0, Le0;->g:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Le0;->l:Landroid/content/res/ColorStateList;

    .line 8
    iput-object v2, v0, Le0;->m:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Le0;->n:Z

    .line 10
    iput-boolean v2, v0, Le0;->o:Z

    const/16 v2, 0x10

    .line 11
    iput v2, v0, Le0;->p:I

    .line 12
    iput-object v1, v0, Le0;->i:Landroid/content/Context;

    .line 13
    iput-object p1, v0, Le0;->a:Ljava/lang/CharSequence;

    .line 14
    iput-object v0, p0, Lqd;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lvd;Lcom/google/android/material/datepicker/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqd;->a:I

    iput-object p1, p0, Lqd;->c:Ljava/lang/Object;

    iput-object p2, p0, Lqd;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lqd;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lqd;->c:Ljava/lang/Object;

    check-cast p1, LDk;

    iget-object v0, p1, LDk;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, LDk;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object p0, p0, Lqd;->b:Ljava/lang/Object;

    check-cast p0, Le0;

    invoke-interface {v0, p1, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lqd;->c:Ljava/lang/Object;

    check-cast p1, Lvd;

    iget-object v0, p1, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lfg;

    move-result-object v1

    invoke-virtual {v1}, Lfg;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lqd;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object p0, p0, LH3;->a:Lme;

    iget-object p0, p0, Lme;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lvm;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lme;

    invoke-direct {v0, p0}, Lme;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lvd;->B(Lme;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lqd;->c:Ljava/lang/Object;

    check-cast p1, Lvd;

    iget-object v0, p1, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object p0, p0, Lqd;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object p0, p0, LH3;->a:Lme;

    iget-object p0, p0, Lme;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lvm;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lme;

    invoke-direct {v0, p0}, Lme;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lvd;->B(Lme;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
