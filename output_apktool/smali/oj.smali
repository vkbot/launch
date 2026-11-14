.class public final Loj;
.super Lfg;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lzj;


# direct methods
.method public constructor <init>(Lzj;)V
    .locals 0

    iput-object p1, p0, Loj;->d:Lzj;

    invoke-direct {p0}, Lfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Loj;->d:Lzj;

    iget-object p0, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic c(LEg;I)V
    .locals 0

    check-cast p1, Lqj;

    invoke-virtual {p0, p1, p2}, Loj;->g(Lqj;I)V

    return-void
.end method

.method public final d(LEg;ILjava/util/List;)V
    .locals 2

    check-cast p1, Lqj;

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "memory"

    invoke-static {v0, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Loj;->d:Lzj;

    iget-object p0, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnj;

    invoke-virtual {p1, p0}, Lqj;->t(Lnj;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Loj;->g(Lqj;I)V

    :goto_2
    return-void
.end method

.method public final e(Landroid/view/ViewGroup;)LEg;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqj;

    iget-object p0, p0, Loj;->d:Lzj;

    iget-object v1, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "inflate(...)"

    invoke-static {p1, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lqj;-><init>(Lzj;Landroid/view/View;)V

    return-object v0
.end method

.method public final g(Lqj;I)V
    .locals 6

    iget-object p0, p0, Loj;->d:Lzj;

    iget-object p0, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnj;

    const-string p2, "card"

    invoke-static {p0, p2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lnj;->a:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p1, LEg;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lqj;->y:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p1, Lqj;->A:Lzj;

    invoke-static {v3, p0}, Lzj;->a(Lzj;Lnj;)I

    move-result v4

    iget-object v3, v3, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lqj;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lqj;->u(Lnj;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnj;->d:Ltj;

    if-eqz v0, :cond_1

    sget-object v4, LKi;->a:LKi;

    invoke-static {}, LKi;->g()LAj;

    move-result-object v4

    iget-object v4, v4, LAj;->h:Ljava/lang/String;

    iget-object v0, v0, Ltj;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%1$d"

    const-string v2, ""

    invoke-static {v4, v0, v2}, LSi;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p2}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p2

    goto :goto_2

    :catch_0
    invoke-static {p2}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object p2, p1, Lqj;->v:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lnj;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnj;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    new-instance v2, Lsj;

    invoke-direct {v2, v0, p2}, Lsj;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    goto :goto_3

    :cond_2
    move-object v2, v1

    :goto_3
    iget-object v0, p1, Lqj;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Lqj;->u(Lnj;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iget-object p2, p1, Lqj;->w:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lqj;->t(Lnj;)V

    return-void
.end method
