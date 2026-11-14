.class public final Lud;
.super Lrg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmc;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lud;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lud;->b:Ljava/lang/Object;

    iput-object p2, p0, Lud;->c:Ljava/lang/Object;

    iput-object p3, p0, Lud;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvd;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lud;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lud;->d:Ljava/lang/Object;

    iput-object p2, p0, Lud;->b:Ljava/lang/Object;

    iput-object p3, p0, Lud;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    iget v0, p0, Lud;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "rv"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lud;->c()V

    :cond_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lud;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget p3, p0, Lud;->a:I

    packed-switch p3, :pswitch_data_0

    const-string p2, "rv"

    invoke-static {p1, p2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lud;->c()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lud;->d:Ljava/lang/Object;

    check-cast p1, Lvd;

    if-gez p2, :cond_1

    iget-object p2, p1, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lvd;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()I

    move-result p2

    :goto_0
    iget-object p3, p0, Lud;->b:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/material/datepicker/c;

    iget-object p3, p3, Lcom/google/android/material/datepicker/c;->d:LH3;

    iget-object v0, p3, LH3;->a:Lme;

    iget-object v0, v0, Lme;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lvm;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Lme;

    invoke-direct {v2, v0}, Lme;-><init>(Ljava/util/Calendar;)V

    iput-object v2, p1, Lvd;->U:Lme;

    iget-object p1, p3, LH3;->a:Lme;

    iget-object p1, p1, Lme;->a:Ljava/util/Calendar;

    invoke-static {p1}, Lvm;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p2, 0x5

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lvm;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    sget-object v0, Lvm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "yMMMM"

    invoke-static {v0, p3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p3

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lud;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, Lud;->b:Ljava/lang/Object;

    check-cast v0, Lmc;

    iget-object v1, p0, Lud;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lmc;->g(Lng;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lng;->F(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lud;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout;

    sget-object v1, LT7;->n:LZj;

    const/4 v2, 0x0

    const-string v3, "indicator"

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, LZj;->a:Ljava/lang/String;

    const-string v7, "drawable"

    invoke-virtual {v6, v1, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v4, LT7;->n:LZj;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v4, LZj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v5, v6}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/ImageView;

    if-ne v4, v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method
