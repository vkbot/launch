.class public final Lzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Ljava/util/Set;


# instance fields
.field public final a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final b:Landroid/view/WindowManager;

.field public final c:LYk;

.field public final d:LYk;

.field public final e:Lel;

.field public final f:Lel;

.field public final g:Lel;

.field public final h:Lel;

.field public final i:Lel;

.field public final j:LYk;

.field public final k:LYk;

.field public l:Landroid/view/View;

.field public m:Z

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public final p:Loj;

.field public final q:LP5;

.field public r:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LIo;->q:LOf;

    sget-object v0, LIo;->r:Ljava/util/Set;

    sput-object v0, Lzj;->s:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/view/WindowManager;LYk;LYk;Lel;Lel;Lel;Lel;Lel;LYk;LYk;)V
    .locals 1

    const-string v0, "windowManager"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lzj;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lzj;->c:LYk;

    iput-object p4, p0, Lzj;->d:LYk;

    iput-object p5, p0, Lzj;->e:Lel;

    iput-object p6, p0, Lzj;->f:Lel;

    iput-object p7, p0, Lzj;->g:Lel;

    iput-object p8, p0, Lzj;->h:Lel;

    iput-object p9, p0, Lzj;->i:Lel;

    iput-object p10, p0, Lzj;->j:LYk;

    iput-object p11, p0, Lzj;->k:LYk;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzj;->n:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzj;->o:Ljava/util/ArrayList;

    new-instance p1, Loj;

    invoke-direct {p1, p0}, Loj;-><init>(Lzj;)V

    iput-object p1, p0, Lzj;->p:Loj;

    new-instance p1, LXi;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LBb;-><init>(Lyb;)V

    sget-object p3, Lv7;->a:LT6;

    sget-object p3, Lcd;->a:LCa;

    const-string p4, "context"

    invoke-static {p3, p4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lt8;->a:Lt8;

    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, LV4;->d:LV4;

    invoke-virtual {p3, p1, p4}, Lg;->e(Ljava/lang/Object;Lha;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le6;

    :goto_0
    new-instance p3, LP5;

    sget-object p4, LT7;->f:LT7;

    invoke-interface {p1, p4}, Le6;->b(Ld6;)Lc6;

    move-result-object p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p4, LBb;

    invoke-direct {p4, p2}, LBb;-><init>(Lyb;)V

    invoke-interface {p1, p4}, Le6;->f(Le6;)Le6;

    move-result-object p1

    :goto_1
    invoke-direct {p3, p1}, LP5;-><init>(Le6;)V

    iput-object p3, p0, Lzj;->q:LP5;

    return-void
.end method

.method public static final a(Lzj;Lnj;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lnj;->c:Landroid/graphics/Rect;

    const v0, 0x402aaaab

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    invoke-static {v1, p1, v0}, Lvf;->e(FFF)F

    move-result v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f06033d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final b(Lzj;I)V
    .locals 4

    iget-object v0, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-static {v0, p1}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnj;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lzj;->p:Loj;

    iget-object v0, v0, Lfg;->a:Lgg;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lgg;->e(II)V

    iget-object p1, p0, Lzj;->l:Landroid/view/View;

    if-eqz p1, :cond_3

    const v0, 0x7f080240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lng;

    if-eqz v2, :cond_2

    const-string v3, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v2, v3}, Lng;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    invoke-virtual {p0, p1}, Lzj;->k(Landroid/view/View;)V

    :cond_3
    iget-object p1, v1, Lnj;->d:Ltj;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lzj;->h:Lel;

    invoke-virtual {v0, p1}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lzj;->g:Lel;

    iget-object v0, v1, Lnj;->a:Ljava/util/List;

    invoke-static {v0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance p1, Lyj;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyj;-><init>(Lzj;LS5;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lzj;->q:LP5;

    invoke-static {p0, v0, p1, v1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :goto_2
    return-void
.end method

.method public static c(J)Ljava/lang/String;
    .locals 3

    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/16 v1, 0x400

    int-to-double v1, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->g()LAj;

    move-result-object p1

    iget-object p1, p1, LAj;->f:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f %s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, LC6;->O(D)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->g()LAj;

    move-result-object p0

    iget-object p0, p0, LAj;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f(Ltj;)Luj;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ltj;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDo;

    iget-object v3, v3, LDo;->c:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDo;

    iget-object v4, v4, LDo;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDo;

    iget-object v2, v2, LDo;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDo;

    iget-boolean v3, v3, LDo;->d:Z

    if-nez v3, :cond_2

    move-object v0, v4

    :cond_3
    :goto_1
    new-instance v1, Luj;

    invoke-direct {v1, v2, v4, v0, p0}, Luj;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Rect;Ltj;)V

    return-object v1
.end method

.method public static final h(Lzj;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public static i(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x780

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x2d0

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, p1, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 5

    iget-boolean v0, p0, Lzj;->m:Z

    iget-object v1, p0, Lzj;->k:LYk;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj;->m:Z

    invoke-virtual {v1}, LYk;->d()Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lzj;->l:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lzj;->l:Landroid/view/View;

    iget-object v3, p0, Lzj;->q:LP5;

    iget-object v3, v3, LP5;->a:Le6;

    sget-object v4, LT7;->f:LT7;

    invoke-interface {v3, v4}, Le6;->b(Ld6;)Lc6;

    move-result-object v3

    check-cast v3, Lyb;

    if-eqz v3, :cond_2

    check-cast v3, LHb;

    new-instance v4, LGb;

    invoke-direct {v4, v3, v2}, LGb;-><init>(LHb;LS5;)V

    new-instance v3, LMh;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v3, v4}, LC6;->f(LS5;LS5;Lha;)LS5;

    move-result-object v4

    iput-object v4, v3, LMh;->d:LS5;

    :goto_0
    invoke-virtual {v3}, LMh;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, LMh;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyb;

    check-cast v4, LHb;

    invoke-virtual {v4, v2}, LHb;->m(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lzj;->b:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lzj;->o:Ljava/util/ArrayList;

    invoke-static {p0}, LL4;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LO;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v0}, LO;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, LYk;->d()Ljava/lang/Object;

    return-void
.end method

.method public final e(Luj;Landroid/graphics/Bitmap;)Lnj;
    .locals 12

    iget-object v0, p1, Luj;->d:Ltj;

    iget-object p0, p0, Lzj;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Luj;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    iget-object v4, v0, Ltj;->b:Ljava/util/List;

    invoke-static {v4}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDo;

    iget-object v6, v6, LDo;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDo;

    iget-object v6, v6, LDo;->c:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LDo;

    iget-object v7, v7, LDo;->c:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v0, Ltj;->c:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p2, v5}, Lzj;->i(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance p0, Lnj;

    new-instance v1, Lrj;

    invoke-direct {v1, p2, v3, v5}, Lrj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v1}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, v5, v0}, Lnj;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Ltj;)V

    goto :goto_4

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDo;

    sget-object v6, LBj;->a:Lfj;

    iget v6, v4, LDo;->b:I

    invoke-static {v6}, LBj;->b(I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v4, v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float v8, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget-object v4, v4, LDo;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, LC6;->P(F)I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v2, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v7

    iput v4, v8, Landroid/graphics/Rect;->top:I

    new-instance v4, Lrj;

    invoke-direct {v4, v6, v9, v8}, Lrj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p0, Lnj;

    invoke-direct {p0, p1, p2, v5, v0}, Lnj;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Ltj;)V

    :goto_4
    return-object p0

    :cond_6
    iget-object v0, p1, Luj;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    invoke-static {p2, v3}, Lzj;->i(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance p0, Lnj;

    invoke-static {v0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lrj;

    invoke-direct {v0, p2, v4, v3}, Lrj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3, v1}, Lnj;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Ltj;)V

    return-object p0

    :cond_7
    iget-object p1, p1, Luj;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, LBj;->b(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Lnj;

    invoke-static {v0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lrj;

    invoke-direct {v2, p1, p0, p0}, Lrj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v2}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, v0, p1, p0, v1}, Lnj;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Ltj;)V

    return-object p2

    :cond_9
    :goto_5
    new-instance p0, Lnj;

    invoke-static {v0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lv8;->a:Lv8;

    invoke-direct {p0, p1, p2, v1, v1}, Lnj;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Ltj;)V

    return-object p0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 14

    iget-object v0, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v4, p0, Lzj;->d:LYk;

    invoke-virtual {v4}, LYk;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltj;

    if-eqz v4, :cond_1

    iget-object v5, v4, Ltj;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    sget-object v6, Lv8;->a:Lv8;

    if-nez v5, :cond_2

    move-object v5, v6

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LDo;

    iget v8, v8, LDo;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v7}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    if-eqz v4, :cond_4

    iget-object v7, v4, Ltj;->b:Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object v7, v2

    :goto_3
    if-nez v7, :cond_5

    move-object v7, v6

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDo;

    iget-object v9, v9, LDo;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v8}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lzj;->c:LYk;

    invoke-virtual {v9}, LYk;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LEo;

    iget v11, v10, LEo;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Luj;

    iget-object v11, v11, Luj;->d:Ltj;

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_a
    :goto_6
    invoke-static {v4}, Lnb;->o(Ljava/lang/Object;)V

    invoke-static {v4}, Lzj;->f(Ltj;)Luj;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v11, v10, LEo;->a:Ljava/lang/String;

    invoke-static {p0, v1, v11}, Lzj;->h(Lzj;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, v10, LEo;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-lez v12, :cond_c

    goto :goto_7

    :cond_c
    move-object v13, v2

    :goto_7
    new-instance v12, Luj;

    iget-object v10, v10, LEo;->c:Landroid/graphics/Rect;

    invoke-direct {v12, v11, v13, v10, v2}, Luj;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Rect;Ltj;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_11

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luj;

    iget-object v9, v9, Luj;->d:Ltj;

    if-eqz v9, :cond_f

    goto :goto_9

    :cond_10
    :goto_8
    invoke-static {v4}, Lzj;->f(Ltj;)Luj;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_9
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v4}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    move-object v6, v0

    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x7d

    if-ne v6, v9, :cond_13

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_0
    move-exception p0

    goto/16 :goto_10

    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v5, :cond_15

    new-array v5, v3, [Ljava/lang/String;

    :cond_15
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "asList(...)"

    invoke-static {v5, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_16
    invoke-static {v4}, LL4;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luj;

    iget-object v9, v9, Luj;->a:Ljava/lang/String;

    invoke-static {v9, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_d

    :cond_1a
    :goto_e
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    sget-object v6, Lzj;->s:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-static {v5}, Lnb;->o(Ljava/lang/Object;)V

    invoke-static {p0, v1, v5}, Lzj;->h(Lzj;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Luj;

    invoke-static {v0}, Lnb;->o(Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2, v2, v2}, Luj;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Rect;Ltj;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runningAppProcesses failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "TaskManagerPopup"

    invoke-static {p0, v0, v1}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1c
    return-object v8
.end method

.method public final j()V
    .locals 8

    iget-object v0, p0, Lzj;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f080241

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p0, v2}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance p0, LHd;

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v5, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-direct {p0, v3, v4, v5, v6}, LHd;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :catch_0
    if-nez v1, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->g()LAj;

    move-result-object p0

    iget-wide v2, v1, LHd;->a:J

    iget-wide v4, v1, LHd;->b:J

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Lzj;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lzj;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Lzj;->c(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, LAj;->d:Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f08023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v3, 0x4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
