.class public abstract Lbm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc3;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc3;

    invoke-direct {v0}, LXl;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lc3;->w:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc3;->x:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc3;->z:Z

    iput v1, v0, Lc3;->A:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc3;->x:Z

    new-instance v1, LS8;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LS8;-><init>(I)V

    invoke-virtual {v0, v1}, Lc3;->F(LXl;)V

    new-instance v1, Lg4;

    invoke-direct {v1}, LXl;-><init>()V

    invoke-virtual {v0, v1}, Lc3;->F(LXl;)V

    new-instance v1, LS8;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LS8;-><init>(I)V

    invoke-virtual {v0, v1}, Lc3;->F(LXl;)V

    sput-object v0, Lbm;->a:Lc3;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbm;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbm;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;LXl;)V
    .locals 3

    sget-object v0, Lbm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LUm;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Lbm;->a:Lc3;

    :cond_0
    invoke-virtual {p1}, LXl;->i()LXl;

    move-result-object p1

    invoke-static {}, Lbm;->b()LW2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lki;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXl;

    invoke-virtual {v2, p0}, LXl;->t(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, LXl;->g(Landroid/view/ViewGroup;Z)V

    :cond_2
    const v0, 0x7f08025d

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_4

    new-instance v0, Lam;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lam;->a:LXl;

    iput-object p0, v0, Lam;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static b()LW2;
    .locals 3

    sget-object v0, Lbm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW2;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, LW2;

    invoke-direct {v1}, Lki;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method
