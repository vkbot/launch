.class public final Lvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX;


# static fields
.field public static final c:Ltb;

.field public static final d:Ltb;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb;-><init>(I)V

    sput-object v0, Lvj;->c:Ltb;

    new-instance v0, Ltb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb;-><init>(I)V

    sput-object v0, Lvj;->d:Ltb;

    return-void
.end method

.method public constructor <init>(I[Lr9;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lvj;->a:I

    .line 8
    iput-object p2, p0, Lvj;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, LF0;->i(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, LB0;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, v0}, LF0;->i(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, LB0;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Lvj;->b:Ljava/lang/Object;

    .line 5
    iput v0, p0, Lvj;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj;->b:Ljava/lang/Object;

    iput p2, p0, Lvj;->a:I

    return-void
.end method

.method public constructor <init>(Lzj;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lvj;->b:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lvj;->a:I

    return-void
.end method

.method public static b(II)I
    .locals 3

    const v0, 0x303030

    and-int v1, p0, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_1

    shr-int/lit8 p1, v1, 0x2

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_1
    shr-int/lit8 p1, v1, 0x1

    const v1, -0x303031

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public static c(II)I
    .locals 3

    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_1

    shl-int/lit8 p1, v1, 0x2

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_1
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;LEg;)V
    .locals 1

    const-string p0, "rv"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "vh"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p2, LEg;->a:Landroid/view/View;

    const p1, 0x7f080114

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p2}, LXm;->s(Landroid/view/View;F)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public d()LF0;
    .locals 9

    new-instance v0, LF0;

    iget-object v1, p0, Lvj;->b:Ljava/lang/Object;

    check-cast v1, LB0;

    iget-object v2, v1, LB0;->a:Landroid/view/ContextThemeWrapper;

    iget p0, p0, Lvj;->a:I

    invoke-direct {v0, v2, p0}, LF0;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object p0, v1, LB0;->e:Landroid/view/View;

    iget-object v2, v0, LF0;->f:LE0;

    if-eqz p0, :cond_0

    iput-object p0, v2, LE0;->n:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v1, LB0;->d:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    iput-object p0, v2, LE0;->d:Ljava/lang/CharSequence;

    iget-object v3, v2, LE0;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, v1, LB0;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    iput-object p0, v2, LE0;->j:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, LE0;->k:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, LE0;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object p0, v1, LB0;->g:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_7

    iget p0, v2, LE0;->r:I

    iget-object v5, v1, LB0;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v5, v1, LB0;->i:Z

    if-eqz v5, :cond_3

    iget v5, v2, LE0;->s:I

    goto :goto_1

    :cond_3
    iget v5, v2, LE0;->t:I

    :goto_1
    iget-object v6, v1, LB0;->g:Ljava/lang/Object;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, LD0;

    iget-object v7, v1, LB0;->a:Landroid/view/ContextThemeWrapper;

    const v8, 0x1020014

    invoke-direct {v6, v7, v5, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_2
    iput-object v6, v2, LE0;->o:Landroid/widget/ListAdapter;

    iget v5, v1, LB0;->j:I

    iput v5, v2, LE0;->p:I

    iget-object v5, v1, LB0;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_5

    new-instance v5, LA0;

    invoke-direct {v5, v1, v2}, LA0;-><init>(LB0;LE0;)V

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-boolean v5, v1, LB0;->i:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_6
    iput-object p0, v2, LE0;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_7
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v1, LB0;->f:LMd;

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_8
    return-object v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;IIJ)I
    .locals 3

    iget v0, p0, Lvj;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lvj;->a:I

    :cond_0
    iget p0, p0, Lvj;->a:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-int/2addr v0, p0

    int-to-float p0, v0

    sget-object p2, Lvj;->d:Ltb;

    invoke-virtual {p2, p1}, Ltb;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const-wide/16 p1, 0x7d0

    cmp-long p1, p4, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    long-to-float p1, p4

    const/high16 p2, 0x44fa0000    # 2000.0f

    div-float v2, p1, p2

    :goto_0
    int-to-float p0, p0

    sget-object p1, Lvj;->c:Ltb;

    invoke-virtual {p1, v2}, Ltb;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-nez p0, :cond_3

    if-lez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return p0
.end method

.method public f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;LEg;FFZ)V
    .locals 5

    const-string p0, "c"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rv"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "vh"

    invoke-static {p3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    iget-object p1, p3, LEg;->a:Landroid/view/View;

    if-eqz p6, :cond_3

    const p3, 0x7f080114

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p6

    if-nez p6, :cond_3

    sget-object p6, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LXm;->i(Landroid/view/View;)F

    move-result p6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, LXm;->i(Landroid/view/View;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-float/2addr v1, p0

    invoke-static {p1, v1}, LXm;->s(Landroid/view/View;F)V

    invoke-virtual {p1, p3, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpl-float p3, p2, p0

    if-lez p3, :cond_4

    move p2, p0

    :cond_4
    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public h(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lvj;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Lvj;->a:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    const/4 p0, 0x1

    return p0
.end method
