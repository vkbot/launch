.class public final Ly1;
.super Ll1;
.source "SourceFile"

# interfaces
.implements LJd;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final h0:Lki;

.field public static final i0:[I

.field public static final j0:Z

.field public static final k0:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:[Lx1;

.field public M:Lx1;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Landroid/content/res/Configuration;

.field public final S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Lt1;

.field public X:Lt1;

.field public Y:Z

.field public Z:I

.field public final a0:Lm1;

.field public b0:Z

.field public c0:Landroid/graphics/Rect;

.field public d0:Landroid/graphics/Rect;

.field public e0:Ls2;

.field public f0:Landroid/window/OnBackInvokedDispatcher;

.field public g0:Landroid/window/OnBackInvokedCallback;

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Ls1;

.field public final n:Ljava/lang/Object;

.field public o:Leo;

.field public p:Lbj;

.field public q:Ljava/lang/CharSequence;

.field public r:LD6;

.field public s:Ln1;

.field public t:Ln1;

.field public u:Lp0;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public w:Landroid/widget/PopupWindow;

.field public x:Lm1;

.field public y:Lwn;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lki;

    invoke-direct {v0}, Lki;-><init>()V

    sput-object v0, Ly1;->h0:Lki;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Ly1;->i0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Ly1;->j0:Z

    sput-boolean v1, Ly1;->k0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Le1;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Ly1;->y:Lwn;

    const/16 v0, -0x64

    iput v0, p0, Ly1;->S:I

    new-instance v1, Lm1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lm1;-><init>(Ly1;I)V

    iput-object v1, p0, Ly1;->a0:Lm1;

    iput-object p1, p0, Ly1;->k:Landroid/content/Context;

    iput-object p4, p0, Ly1;->j:Ljava/lang/Object;

    instance-of p4, p4, Landroid/app/Dialog;

    if-eqz p4, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p4, p1, Lb1;

    if-eqz p4, :cond_0

    check-cast p1, Lb1;

    goto :goto_1

    :cond_0
    instance-of p4, p1, Landroid/content/ContextWrapper;

    if-eqz p4, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb1;->j()Ll1;

    move-result-object p1

    check-cast p1, Ly1;

    iget p1, p1, Ly1;->S:I

    iput p1, p0, Ly1;->S:I

    :cond_2
    iget p1, p0, Ly1;->S:I

    if-ne p1, v0, :cond_3

    sget-object p1, Ly1;->h0:Lki;

    iget-object p4, p0, Ly1;->j:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lki;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Ly1;->S:I

    iget-object p3, p0, Ly1;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lki;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Ly1;->n(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, LB1;->d()V

    return-void
.end method

.method public static o(Landroid/content/Context;)LIc;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Ll1;->c:LIc;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lp1;->b(Landroid/content/res/Configuration;)LIc;

    move-result-object p0

    iget-object v0, v0, LIc;->a:LJc;

    iget-object v1, v0, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, LIc;->b:LIc;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p0, LIc;->a:LJc;

    iget-object v4, v4, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    iget-object v3, v0, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, LIc;->a:LJc;

    iget-object v4, v4, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-static {v0}, LHc;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, LIc;

    new-instance v2, LJc;

    invoke-direct {v2, v0}, LJc;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, LIc;-><init>(LJc;)V

    move-object v0, v1

    :goto_2
    iget-object v1, v0, LIc;->a:LJc;

    iget-object v1, v1, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v0

    :goto_3
    return-object p0
.end method

.method public static s(Landroid/content/Context;ILIc;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_4

    invoke-static {p1, p2}, Lp1;->d(Landroid/content/res/Configuration;LIc;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Ly1;->w()V

    iget-boolean v0, p0, Ly1;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ly1;->o:Leo;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Leo;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Ly1;->G:Z

    invoke-direct {v1, v0, v2}, Leo;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Ly1;->o:Leo;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Leo;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Leo;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Ly1;->o:Leo;

    :cond_2
    :goto_0
    iget-object v0, p0, Ly1;->o:Leo;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Ly1;->b0:Z

    invoke-virtual {v0, p0}, Leo;->X(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final B(I)V
    .locals 3

    iget v0, p0, Ly1;->Z:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ly1;->Z:I

    iget-boolean p1, p0, Ly1;->Y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ly1;->a0:Lm1;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ly1;->Y:Z

    :cond_0
    return-void
.end method

.method public final C(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Ly1;->X:Lt1;

    if-nez p2, :cond_0

    new-instance p2, Lt1;

    invoke-direct {p2, p0, p1}, Lt1;-><init>(Ly1;Landroid/content/Context;)V

    iput-object p2, p0, Ly1;->X:Lt1;

    :cond_0
    iget-object p0, p0, Ly1;->X:Lt1;

    invoke-virtual {p0}, Lt1;->f()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Ly1;->y(Landroid/content/Context;)Lv1;

    move-result-object p0

    invoke-virtual {p0}, Lv1;->f()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final D()Z
    .locals 5

    iget-boolean v0, p0, Ly1;->N:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ly1;->N:Z

    invoke-virtual {p0, v1}, Ly1;->z(I)Lx1;

    move-result-object v2

    iget-boolean v3, v2, Lx1;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Ly1;->r(Lx1;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Ly1;->u:Lp0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lp0;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Ly1;->A()V

    iget-object p0, p0, Ly1;->o:Leo;

    if-eqz p0, :cond_5

    iget-object p0, p0, Leo;->u:LE6;

    if-eqz p0, :cond_5

    move-object v0, p0

    check-cast v0, LDk;

    iget-object v0, v0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->L:Lyk;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lyk;->b:LPd;

    if-eqz v0, :cond_5

    check-cast p0, LDk;

    iget-object p0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->L:Lyk;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lyk;->b:LPd;

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, LPd;->collapseActionView()Z

    :cond_4
    return v4

    :cond_5
    return v1
.end method

.method public final E(Lx1;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lx1;->m:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Ly1;->Q:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Lx1;->a:I

    iget-object v3, v0, Ly1;->k:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lx1;->h:LLd;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Ly1;->r(Lx1;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p2}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v6, v1, Lx1;->e:Lw1;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Lx1;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Lx1;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Ly1;->A()V

    iget-object v6, v0, Ly1;->o:Leo;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Leo;->V()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f030004

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f030368

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f100225

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, LR5;

    invoke-direct {v6, v3, v7}, LR5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, LR5;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Lx1;->j:LR5;

    sget-object v3, LZf;->j:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v6, 0x56

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lx1;->b:I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lx1;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lw1;

    iget-object v6, v1, Lx1;->j:LR5;

    invoke-direct {v3, v0, v6}, Lw1;-><init>(Ly1;LR5;)V

    iput-object v3, v1, Lx1;->e:Lw1;

    const/16 v3, 0x51

    iput v3, v1, Lx1;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Lx1;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Lx1;->e:Lw1;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Lx1;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Lx1;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Lx1;->h:LLd;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Ly1;->t:Ln1;

    if-nez v3, :cond_f

    new-instance v3, Ln1;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v6}, Ln1;-><init>(Ly1;I)V

    iput-object v3, v0, Ly1;->t:Ln1;

    :cond_f
    iget-object v3, v0, Ly1;->t:Ln1;

    iget-object v6, v1, Lx1;->i:Ltc;

    if-nez v6, :cond_10

    new-instance v6, Ltc;

    iget-object v9, v1, Lx1;->j:LR5;

    invoke-direct {v6, v9}, Ltc;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v6, v1, Lx1;->i:Ltc;

    iput-object v3, v6, Ltc;->e:Lde;

    iget-object v3, v1, Lx1;->h:LLd;

    iget-object v9, v3, LLd;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, LLd;->b(Lee;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Lx1;->i:Ltc;

    iget-object v6, v1, Lx1;->e:Lw1;

    iget-object v9, v3, Ltc;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Ltc;->b:Landroid/view/LayoutInflater;

    const v10, 0x7f0b000d

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Ltc;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Ltc;->f:Lsc;

    if-nez v6, :cond_11

    new-instance v6, Lsc;

    invoke-direct {v6, v3}, Lsc;-><init>(Ltc;)V

    iput-object v6, v3, Ltc;->f:Lsc;

    :cond_11
    iget-object v6, v3, Ltc;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Ltc;->f:Lsc;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Ltc;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Ltc;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Lx1;->f:Landroid/view/View;

    if-eqz v3, :cond_1a

    :goto_5
    iget-object v3, v1, Lx1;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Lx1;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Lx1;->i:Ltc;

    iget-object v6, v3, Ltc;->f:Lsc;

    if-nez v6, :cond_15

    new-instance v6, Lsc;

    invoke-direct {v6, v3}, Lsc;-><init>(Ltc;)V

    iput-object v6, v3, Ltc;->f:Lsc;

    :cond_15
    iget-object v3, v3, Ltc;->f:Lsc;

    invoke-virtual {v3}, Lsc;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    iget-object v3, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Lx1;->b:I

    iget-object v9, v1, Lx1;->e:Lw1;

    invoke-virtual {v9, v6}, Lw1;->setBackgroundResource(I)V

    iget-object v6, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Lx1;->e:Lw1;

    iget-object v9, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lx1;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Lx1;->l:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v1, Lx1;->c:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v1, Lx1;->d:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, v1, Lx1;->e:Lw1;

    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Lx1;->m:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Ly1;->I()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v5, v1, Lx1;->n:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public final F(Lx1;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lx1;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lx1;->h:LLd;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, LLd;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final G(Lx1;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Ly1;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lx1;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ly1;->M:Lx1;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ly1;->r(Lx1;Z)V

    :cond_2
    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Lx1;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lx1;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Ly1;->r:LD6;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v6, LDk;

    iput-boolean v2, v6, LDk;->l:Z

    :cond_6
    iget-object v6, p1, Lx1;->g:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Lx1;->h:LLd;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Lx1;->o:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Ly1;->k:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-ne v3, v4, :cond_c

    :cond_8
    iget-object v4, p0, Ly1;->r:LD6;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f03000b

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f03000c

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, LR5;

    invoke-direct {v4, v6, v1}, LR5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, LR5;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, LLd;

    invoke-direct {v4, v6}, LLd;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, LLd;->e:LJd;

    iget-object v6, p1, Lx1;->h:LLd;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Lx1;->i:Ltc;

    invoke-virtual {v6, v8}, LLd;->r(Lee;)V

    :cond_e
    iput-object v4, p1, Lx1;->h:LLd;

    iget-object v6, p1, Lx1;->i:Ltc;

    if-eqz v6, :cond_f

    iget-object v8, v4, LLd;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, LLd;->b(Lee;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Lx1;->h:LLd;

    if-nez v4, :cond_10

    return v1

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Ly1;->r:LD6;

    if-eqz v4, :cond_12

    iget-object v6, p0, Ly1;->s:Ln1;

    if-nez v6, :cond_11

    new-instance v6, Ln1;

    const/4 v8, 0x2

    invoke-direct {v6, p0, v8}, Ln1;-><init>(Ly1;I)V

    iput-object v6, p0, Ly1;->s:Ln1;

    :cond_11
    iget-object v6, p1, Lx1;->h:LLd;

    iget-object v8, p0, Ly1;->s:Ln1;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(LLd;Lde;)V

    :cond_12
    iget-object v4, p1, Lx1;->h:LLd;

    invoke-virtual {v4}, LLd;->w()V

    iget-object v4, p1, Lx1;->h:LLd;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p2, p1, Lx1;->h:LLd;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Lx1;->i:Ltc;

    invoke-virtual {p2, v0}, LLd;->r(Lee;)V

    :cond_14
    iput-object v7, p1, Lx1;->h:LLd;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Ly1;->r:LD6;

    if-eqz p1, :cond_15

    iget-object p0, p0, Ly1;->s:Ln1;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(LLd;Lde;)V

    :cond_15
    return v1

    :cond_16
    iput-boolean v1, p1, Lx1;->o:Z

    :cond_17
    iget-object v3, p1, Lx1;->h:LLd;

    invoke-virtual {v3}, LLd;->w()V

    iget-object v3, p1, Lx1;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_18

    iget-object v4, p1, Lx1;->h:LLd;

    invoke-virtual {v4, v3}, LLd;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Lx1;->p:Landroid/os/Bundle;

    :cond_18
    iget-object v3, p1, Lx1;->g:Landroid/view/View;

    iget-object v4, p1, Lx1;->h:LLd;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Ly1;->r:LD6;

    if-eqz p2, :cond_19

    iget-object p0, p0, Ly1;->s:Ln1;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(LLd;Lde;)V

    :cond_19
    iget-object p0, p1, Lx1;->h:LLd;

    invoke-virtual {p0}, LLd;->v()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1b
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1c

    move p2, v2

    goto :goto_6

    :cond_1c
    move p2, v1

    :goto_6
    iget-object v0, p1, Lx1;->h:LLd;

    invoke-virtual {v0, p2}, LLd;->setQwertyMode(Z)V

    iget-object p2, p1, Lx1;->h:LLd;

    invoke-virtual {p2}, LLd;->v()V

    :cond_1d
    iput-boolean v2, p1, Lx1;->k:Z

    iput-boolean v1, p1, Lx1;->l:Z

    iput-object p1, p0, Ly1;->M:Lx1;

    return v2
.end method

.method public final H()V
    .locals 1

    iget-boolean p0, p0, Ly1;->z:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ly1;->z(I)Lx1;

    move-result-object v0

    iget-boolean v0, v0, Lx1;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ly1;->u:Lp0;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Ly1;->g0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Lr1;->b(Ljava/lang/Object;Ly1;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Ly1;->g0:Landroid/window/OnBackInvokedCallback;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Ly1;->g0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object p0, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {p0, v0}, Lr1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Ly1;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Ly1;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ly1;->o:Leo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly1;->A()V

    iget-object v0, p0, Ly1;->o:Leo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly1;->B(I)V

    :cond_0
    return-void
.end method

.method public final d(LLd;Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Ly1;->Q:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, LLd;->k()LLd;

    move-result-object p1

    iget-object p0, p0, Ly1;->L:[Lx1;

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lx1;->h:LLd;

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget p0, v4, Lx1;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1;->O:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ly1;->m(ZZ)Z

    invoke-virtual {p0}, Ly1;->x()V

    iget-object v1, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lnb;->G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Ly1;->o:Leo;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ly1;->b0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Leo;->X(Z)V

    :cond_1
    :goto_1
    sget-object v1, Ll1;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Ll1;->g(Ly1;)V

    sget-object v2, Ll1;->g:LY2;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LY2;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Ly1;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Ly1;->R:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Ly1;->P:Z

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Ll1;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ll1;->g(Ly1;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Ly1;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ly1;->a0:Lm1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1;->Q:Z

    iget v0, p0, Ly1;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ly1;->h0:Lki;

    iget-object v1, p0, Ly1;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ly1;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lki;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Ly1;->h0:Lki;

    iget-object v1, p0, Ly1;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lki;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Ly1;->W:Lt1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lv1;->c()V

    :cond_3
    iget-object p0, p0, Ly1;->X:Lt1;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lv1;->c()V

    :cond_4
    return-void
.end method

.method public final h(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Ly1;->J:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Ly1;->F:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Ly1;->F:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->G:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->F:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->H:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->E:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->D:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Ly1;->H()V

    iput-boolean v4, p0, Ly1;->J:Z

    return v4
.end method

.method public final i(I)V
    .locals 2

    invoke-virtual {p0}, Ly1;->w()V

    iget-object v0, p0, Ly1;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ly1;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ly1;->m:Ls1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ly1;->w()V

    iget-object v0, p0, Ly1;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ly1;->m:Ls1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Ly1;->w()V

    iget-object v0, p0, Ly1;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ly1;->m:Ls1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ly1;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Ly1;->r:LD6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LD6;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1;->o:Leo;

    if-eqz v0, :cond_1

    iget-object p0, v0, Leo;->u:LE6;

    check-cast p0, LDk;

    iget-boolean v0, p0, LDk;->g:Z

    if-nez v0, :cond_2

    iput-object p1, p0, LDk;->h:Ljava/lang/CharSequence;

    iget v0, p0, LDk;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, LDk;->g:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lhn;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ly1;->B:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m(ZZ)Z
    .locals 11

    iget-boolean v0, p0, Ly1;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Ly1;->S:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Ll1;->b:I

    :goto_0
    iget-object v2, p0, Ly1;->k:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Ly1;->C(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    invoke-static {v2}, Ly1;->o(Landroid/content/Context;)LIc;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez p2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lp1;->b(Landroid/content/res/Configuration;)LIc;

    move-result-object v4

    :cond_3
    invoke-static {v2, v3, v4, v6, v1}, Ly1;->s(Landroid/content/Context;ILIc;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object p2

    iget-boolean v3, p0, Ly1;->V:Z

    iget-object v5, p0, Ly1;->j:Ljava/lang/Object;

    const/4 v7, 0x1

    if-nez v3, :cond_5

    instance-of v3, v5, Landroid/app/Activity;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v9, 0x100c0000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, p0, Ly1;->U:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v8, "AppCompatDelegate"

    const-string v9, "Exception while getting ActivityInfo"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Ly1;->U:I

    :cond_5
    :goto_2
    iput-boolean v7, p0, Ly1;->V:Z

    iget v3, p0, Ly1;->U:I

    :goto_3
    iget-object v8, p0, Ly1;->R:Landroid/content/res/Configuration;

    if-nez v8, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    :cond_6
    iget v9, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    iget v10, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    invoke-static {v8}, Lp1;->b(Landroid/content/res/Configuration;)LIc;

    move-result-object v8

    if-nez v4, :cond_7

    move-object p2, v6

    goto :goto_4

    :cond_7
    invoke-static {p2}, Lp1;->b(Landroid/content/res/Configuration;)LIc;

    move-result-object p2

    :goto_4
    if-eq v9, v10, :cond_8

    const/16 v4, 0x200

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    if-eqz p2, :cond_9

    invoke-virtual {v8, p2}, LIc;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    or-int/lit16 v4, v4, 0x2004

    :cond_9
    not-int v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_b

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Ly1;->O:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Ly1;->j0:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Ly1;->P:Z

    if-eqz p1, :cond_b

    :cond_a
    instance-of p1, v5, Landroid/app/Activity;

    if-eqz p1, :cond_b

    move-object p1, v5

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    move p1, v7

    goto :goto_6

    :cond_b
    move p1, v1

    :goto_6
    if-nez p1, :cond_10

    if-eqz v4, :cond_10

    and-int p1, v4, v3

    if-ne p1, v4, :cond_c

    move v1, v7

    :cond_c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v8, v10

    iput v8, v3, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_d

    invoke-static {v3, p2}, Lp1;->d(Landroid/content/res/Configuration;LIc;)V

    :cond_d
    invoke-virtual {p1, v3, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Ly1;->T:I

    if-eqz p1, :cond_e

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v6, p0, Ly1;->T:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_e
    if-eqz v1, :cond_11

    instance-of p1, v5, Landroid/app/Activity;

    if-eqz p1, :cond_11

    move-object p1, v5

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Lbc;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lbc;

    invoke-interface {v1}, Lbc;->d()Landroidx/lifecycle/a;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/a;->c:LWb;

    sget-object v6, LWb;->c:LWb;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_11

    invoke-virtual {p1, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_f
    iget-boolean v1, p0, Ly1;->P:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Ly1;->Q:Z

    if-nez v1, :cond_11

    invoke-virtual {p1, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_10
    move v7, p1

    :cond_11
    :goto_7
    if-eqz v7, :cond_13

    instance-of p1, v5, Lb1;

    if-eqz p1, :cond_13

    and-int/lit16 p1, v4, 0x200

    if-eqz p1, :cond_12

    move-object p1, v5

    check-cast p1, Lb1;

    :cond_12
    and-int/lit8 p1, v4, 0x4

    if-eqz p1, :cond_13

    check-cast v5, Lb1;

    :cond_13
    if-eqz v7, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lp1;->b(Landroid/content/res/Configuration;)LIc;

    move-result-object p1

    invoke-static {p1}, Lp1;->c(LIc;)V

    :cond_14
    if-nez v0, :cond_15

    invoke-virtual {p0, v2}, Ly1;->y(Landroid/content/Context;)Lv1;

    move-result-object p1

    invoke-virtual {p1}, Lv1;->i()V

    goto :goto_8

    :cond_15
    iget-object p1, p0, Ly1;->W:Lt1;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lv1;->c()V

    :cond_16
    :goto_8
    const/4 p1, 0x3

    if-ne v0, p1, :cond_18

    iget-object p1, p0, Ly1;->X:Lt1;

    if-nez p1, :cond_17

    new-instance p1, Lt1;

    invoke-direct {p1, p0, v2}, Lt1;-><init>(Ly1;Landroid/content/Context;)V

    iput-object p1, p0, Ly1;->X:Lt1;

    :cond_17
    iget-object p0, p0, Ly1;->X:Lt1;

    invoke-virtual {p0}, Lv1;->i()V

    goto :goto_9

    :cond_18
    iget-object p0, p0, Ly1;->X:Lt1;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lv1;->c()V

    :cond_19
    :goto_9
    return v7
.end method

.method public final n(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Ls1;

    if-nez v2, :cond_5

    new-instance v1, Ls1;

    invoke-direct {v1, p0, v0}, Ls1;-><init>(Ly1;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ly1;->m:Ls1;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Ly1;->i0:[I

    iget-object v1, p0, Ly1;->k:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, LB1;->a()LB1;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, LB1;->a:LYg;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, LYg;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Ly1;->l:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Ly1;->g0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lr1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Ly1;->g0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lr1;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Ly1;->f0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Ly1;->I()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 p1, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    iget-object v4, p0, Ly1;->e0:Ls2;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 2
    sget-object v4, LZf;->j:[I

    iget-object v6, p0, Ly1;->k:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v7, 0x74

    .line 3
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ls2;

    invoke-direct {v4}, Ls2;-><init>()V

    iput-object v4, p0, Ly1;->e0:Ls2;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls2;

    iput-object v6, p0, Ly1;->e0:Ls2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to instantiate custom view inflater "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Falling back to default."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AppCompatDelegate"

    invoke-static {v7, v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    new-instance v4, Ls2;

    invoke-direct {v4}, Ls2;-><init>()V

    iput-object v4, p0, Ly1;->e0:Ls2;

    .line 10
    :cond_1
    :goto_0
    iget-object p0, p0, Ly1;->e0:Ls2;

    .line 11
    sget v4, LGm;->a:I

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v4, LZf;->y:[I

    invoke-virtual {p3, p4, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    const-string v7, "AppCompatViewInflater"

    const-string v8, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_4

    .line 17
    instance-of v4, p3, LR5;

    if-eqz v4, :cond_3

    move-object v4, p3

    check-cast v4, LR5;

    .line 18
    iget v4, v4, LR5;->a:I

    if-eq v4, v6, :cond_4

    .line 19
    :cond_3
    new-instance v4, LR5;

    invoke-direct {v4, p3, v6}, LR5;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v4, p3

    .line 20
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v1, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "ImageView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_8
    const-string v1, "SeekBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v6, "ImageButton"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_2

    :cond_e
    move v1, p1

    goto :goto_3

    :sswitch_b
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    move v1, v3

    goto :goto_3

    :sswitch_d
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    move v1, v2

    :cond_12
    :goto_3
    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    goto :goto_4

    .line 21
    :pswitch_0
    invoke-virtual {p0, v4, p4}, Ls2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Ld1;

    move-result-object v1

    goto :goto_4

    .line 22
    :pswitch_1
    new-instance v1, LD1;

    .line 23
    invoke-direct {v1, v4, p4}, LD1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 24
    :pswitch_2
    invoke-virtual {p0, v4, p4}, Ls2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lf1;

    move-result-object v1

    goto :goto_4

    .line 25
    :pswitch_3
    invoke-virtual {p0, v4, p4}, Ls2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lc1;

    move-result-object v1

    goto :goto_4

    .line 26
    :pswitch_4
    new-instance v1, LH1;

    .line 27
    invoke-direct {v1, v4, p4, v2}, LH1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 28
    :pswitch_5
    new-instance v1, Lq2;

    invoke-direct {v1, v4, p4}, Lq2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 29
    :pswitch_6
    invoke-virtual {p0, v4, p4}, Ls2;->d(Landroid/content/Context;Landroid/util/AttributeSet;)LL1;

    move-result-object v1

    goto :goto_4

    .line 30
    :pswitch_7
    new-instance v1, Lc2;

    invoke-direct {v1, v4, p4}, Lc2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_8
    new-instance v1, LO1;

    invoke-direct {v1, v4, p4}, LO1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 32
    :pswitch_9
    new-instance v1, LF1;

    const v6, 0x7f030230

    .line 33
    invoke-direct {v1, v4, p4, v6}, LF1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 34
    :pswitch_a
    invoke-virtual {p0, v4, p4}, Ls2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Ll2;

    move-result-object v1

    goto :goto_4

    .line 35
    :pswitch_b
    new-instance v1, LI1;

    invoke-direct {v1, v4, p4}, LI1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 36
    :pswitch_c
    new-instance v1, Lg1;

    invoke-direct {v1, v4, p4}, Lg1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 37
    :pswitch_d
    new-instance v1, LM1;

    invoke-direct {v1, v4, p4}, LM1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_17

    if-eq p3, v4, :cond_17

    .line 38
    iget-object p3, p0, Ls2;->a:[Ljava/lang/Object;

    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 39
    const-string p2, "class"

    invoke-interface {p4, v5, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 40
    :cond_13
    :try_start_1
    aput-object v4, p3, v2

    .line 41
    aput-object p4, p3, v3

    const/16 v1, 0x2e

    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_16

    move v0, v2

    .line 43
    :goto_5
    sget-object v1, Ls2;->d:[Ljava/lang/String;

    if-ge v0, p1, :cond_15

    .line 44
    aget-object v1, v1, v0

    invoke-virtual {p0, v4, p2, v1}, Ls2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_14

    .line 45
    aput-object v5, p3, v2

    .line 46
    aput-object v5, p3, v3

    move-object v5, v1

    goto :goto_7

    :cond_14
    add-int/2addr v0, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 47
    :cond_15
    aput-object v5, p3, v2

    .line 48
    aput-object v5, p3, v3

    goto :goto_7

    .line 49
    :cond_16
    :try_start_2
    invoke-virtual {p0, v4, p2, v5}, Ls2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    aput-object v5, p3, v2

    .line 51
    aput-object v5, p3, v3

    move-object v5, p0

    goto :goto_7

    .line 52
    :goto_6
    aput-object v5, p3, v2

    .line 53
    aput-object v5, p3, v3

    .line 54
    throw p0

    .line 55
    :catch_0
    aput-object v5, p3, v2

    .line 56
    aput-object v5, p3, v3

    :goto_7
    move-object v1, v5

    :cond_17
    if-eqz v1, :cond_1a

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 58
    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    .line 59
    sget-object p1, Lhn;->a:Ljava/util/WeakHashMap;

    .line 60
    invoke-static {v1}, LQm;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_8

    .line 61
    :cond_18
    sget-object p1, Ls2;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 63
    new-instance p2, Lr2;

    invoke-direct {p2, v1, p1}, Lr2;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_8
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, p2, p3}, Ly1;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(ILx1;LLd;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ly1;->L:[Lx1;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lx1;->h:LLd;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lx1;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Ly1;->Q:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Ly1;->m:Ls1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Ls1;->d:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Ls1;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Ls1;->d:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final q(LLd;)V
    .locals 2

    iget-boolean v0, p0, Ly1;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1;->K:Z

    iget-object v0, p0, Ly1;->r:LD6;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v0, LDk;

    iget-object v0, v0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll0;->e()Z

    iget-object v0, v0, Ll0;->t:Lh0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LXd;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, LXd;->i:LUd;

    invoke-interface {v0}, Lhi;->dismiss()V

    :cond_1
    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ly1;->Q:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Ly1;->K:Z

    return-void
.end method

.method public final r(Lx1;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lx1;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ly1;->r:LD6;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v0, LDk;

    iget-object v0, v0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lx1;->h:LLd;

    invoke-virtual {p0, p1}, Ly1;->q(LLd;)V

    return-void

    :cond_0
    iget-object v0, p0, Ly1;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lx1;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lx1;->e:Lw1;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lx1;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ly1;->p(ILx1;LLd;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lx1;->k:Z

    iput-boolean p2, p1, Lx1;->l:Z

    iput-boolean p2, p1, Lx1;->m:Z

    iput-object v1, p1, Lx1;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lx1;->n:Z

    iget-object p2, p0, Ly1;->M:Lx1;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Ly1;->M:Lx1;

    :cond_2
    iget p1, p1, Lx1;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ly1;->I()V

    :cond_3
    return-void
.end method

.method public final t(LLd;)V
    .locals 5

    iget-object p1, p0, Ly1;->r:LD6;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast p1, LDk;

    iget-object p1, p1, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Ly1;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ly1;->r:LD6;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast p1, LDk;

    iget-object p1, p1, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz p1, :cond_5

    iget-object v2, p1, Ll0;->u:Lj0;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ll0;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Ly1;->r:LD6;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v2, LDk;

    iget-object v2, v2, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ll0;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0x6c

    if-eqz v2, :cond_3

    iget-object v1, p0, Ly1;->r:LD6;

    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v1, LDk;

    iget-object v1, v1, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ll0;->e()Z

    move-result v1

    :cond_2
    iget-boolean v1, p0, Ly1;->Q:Z

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Ly1;->z(I)Lx1;

    move-result-object p0

    iget-object p0, p0, Lx1;->h:LLd;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_6

    iget-boolean v2, p0, Ly1;->Q:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Ly1;->Y:Z

    if-eqz v2, :cond_4

    iget v2, p0, Ly1;->Z:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ly1;->a0:Lm1;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lm1;->run()V

    :cond_4
    invoke-virtual {p0, v0}, Ly1;->z(I)Lx1;

    move-result-object v1

    iget-object v2, v1, Lx1;->h:LLd;

    if-eqz v2, :cond_6

    iget-boolean v4, v1, Lx1;->o:Z

    if-nez v4, :cond_6

    iget-object v4, v1, Lx1;->g:Landroid/view/View;

    invoke-interface {p1, v0, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lx1;->h:LLd;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Ly1;->r:LD6;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast p0, LDk;

    iget-object p0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_6

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ll0;->l()Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Ly1;->z(I)Lx1;

    move-result-object p1

    iput-boolean v1, p1, Lx1;->n:Z

    invoke-virtual {p0, p1, v0}, Ly1;->r(Lx1;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly1;->E(Lx1;Landroid/view/KeyEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final u(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v1, v0, LLb;

    if-nez v1, :cond_0

    instance-of v0, v0, LF0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ly1;->m:Ls1;

    iget-object v4, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v1, v0, Ls1;->c:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Ls1;->c:Z

    if-eqz v4, :cond_2

    return v1

    :catchall_0
    move-exception p0

    iput-boolean v2, v0, Ls1;->c:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_7

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Ly1;->z(I)Lx1;

    move-result-object v0

    iget-boolean v2, v0, Lx1;->m:Z

    if-nez v2, :cond_12

    invoke-virtual {p0, v0, p1}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ly1;->N:Z

    :cond_6
    :goto_1
    move v1, v2

    goto/16 :goto_7

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Ly1;->u:Lp0;

    if-eqz v0, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0, v2}, Ly1;->z(I)Lx1;

    move-result-object v0

    iget-object v3, p0, Ly1;->r:LD6;

    iget-object v4, p0, Ly1;->k:Landroid/content/Context;

    if-eqz v3, :cond_b

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v3, LDk;

    iget-object v3, v3, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_b

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz v3, :cond_b

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Ly1;->r:LD6;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast v3, LDk;

    iget-object v3, v3, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_a

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ll0;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object p0, p0, Ly1;->r:LD6;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast p0, LDk;

    iget-object p0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ll0;->e()Z

    move-result p0

    if-eqz p0, :cond_e

    :goto_2
    goto :goto_4

    :cond_a
    iget-boolean v3, p0, Ly1;->Q:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v0, p1}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Ly1;->r:LD6;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:LE6;

    check-cast p0, LDk;

    iget-object p0, p0, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ll0;->l()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_2

    :cond_b
    iget-boolean v3, v0, Lx1;->m:Z

    if-nez v3, :cond_f

    iget-boolean v5, v0, Lx1;->l:Z

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v3, v0, Lx1;->k:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Lx1;->o:Z

    if-eqz v3, :cond_d

    iput-boolean v2, v0, Lx1;->k:Z

    invoke-virtual {p0, v0, p1}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3

    :cond_d
    move v3, v1

    :goto_3
    if-eqz v3, :cond_e

    invoke-virtual {p0, v0, p1}, Ly1;->E(Lx1;Landroid/view/KeyEvent;)V

    :goto_4
    move p0, v1

    goto :goto_6

    :cond_e
    move p0, v2

    goto :goto_6

    :cond_f
    :goto_5
    invoke-virtual {p0, v0, v1}, Ly1;->r(Lx1;Z)V

    move p0, v3

    :goto_6
    if-eqz p0, :cond_12

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_7

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    invoke-virtual {p0}, Ly1;->D()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_12
    :goto_7
    return v1
.end method

.method public final v(I)V
    .locals 3

    invoke-virtual {p0, p1}, Ly1;->z(I)Lx1;

    move-result-object v0

    iget-object v1, v0, Lx1;->h:LLd;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lx1;->h:LLd;

    invoke-virtual {v2, v1}, LLd;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lx1;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lx1;->h:LLd;

    invoke-virtual {v1}, LLd;->w()V

    iget-object v1, v0, Lx1;->h:LLd;

    invoke-virtual {v1}, LLd;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lx1;->o:Z

    iput-boolean v1, v0, Lx1;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ly1;->r:LD6;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ly1;->z(I)Lx1;

    move-result-object v0

    iput-boolean p1, v0, Lx1;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ly1;->G(Lx1;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final w()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Ly1;->z:Z

    if-nez v2, :cond_1b

    sget-object v2, LZf;->j:[I

    iget-object v3, p0, Ly1;->k:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v6, 0x7e

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x6c

    if-eqz v6, :cond_0

    invoke-virtual {p0, v0}, Ly1;->h(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v7}, Ly1;->h(I)Z

    :cond_1
    :goto_0
    const/16 v5, 0x76

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x6d

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Ly1;->h(I)Z

    :cond_2
    const/16 v5, 0x77

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Ly1;->h(I)Z

    :cond_3
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Ly1;->I:Z

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Ly1;->x()V

    iget-object v4, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-boolean v5, p0, Ly1;->J:Z

    const/4 v8, 0x0

    if-nez v5, :cond_9

    iget-boolean v5, p0, Ly1;->I:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-boolean v1, p0, Ly1;->G:Z

    iput-boolean v1, p0, Ly1;->F:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v4, p0, Ly1;->F:Z

    if-eqz v4, :cond_8

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v9, 0x7f03000b

    invoke-virtual {v5, v9, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    new-instance v5, LR5;

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v3, v4}, LR5;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0800a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, LD6;

    iput-object v5, p0, Ly1;->r:LD6;

    iget-object v9, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v5, v9}, LD6;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v5, p0, Ly1;->G:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Ly1;->r:LD6;

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_6
    iget-boolean v5, p0, Ly1;->D:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Ly1;->r:LD6;

    const/4 v6, 0x2

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_7
    iget-boolean v5, p0, Ly1;->E:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Ly1;->r:LD6;

    const/4 v6, 0x5

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    goto :goto_2

    :cond_8
    move-object v4, v8

    goto :goto_2

    :cond_9
    iget-boolean v5, p0, Ly1;->H:Z

    if-eqz v5, :cond_a

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v5, 0x7f0b0015

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v4, :cond_19

    new-instance v5, Ln1;

    invoke-direct {v5, p0, v1}, Ln1;-><init>(Ly1;I)V

    sget-object v6, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, LXm;->u(Landroid/view/View;LIe;)V

    iget-object v5, p0, Ly1;->r:LD6;

    if-nez v5, :cond_c

    const v5, 0x7f080254

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ly1;->B:Landroid/widget/TextView;

    :cond_c
    sget-object v5, LDn;->a:Ljava/lang/reflect/Method;

    const-string v5, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v6, "ViewUtils"

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "makeOptionalFitsSystemWindows"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_5

    :cond_d
    :goto_3
    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v5, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v6, p0, Ly1;->l:Landroid/view/Window;

    const v9, 0x1020002

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_f

    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    instance-of v10, v6, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_f

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v6, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v6, Ln1;

    invoke-direct {v6, p0, v0}, Ln1;-><init>(Ly1;I)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(LG5;)V

    iput-object v4, p0, Ly1;->A:Landroid/view/ViewGroup;

    iget-object v4, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_10

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8

    :cond_10
    iget-object v4, p0, Ly1;->q:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Ly1;->r:LD6;

    if-eqz v5, :cond_11

    invoke-interface {v5, v4}, LD6;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v5, p0, Ly1;->o:Leo;

    if-eqz v5, :cond_12

    iget-object v5, v5, Leo;->u:LE6;

    check-cast v5, LDk;

    iget-boolean v6, v5, LDk;->g:Z

    if-nez v6, :cond_13

    iput-object v4, v5, LDk;->h:Ljava/lang/CharSequence;

    iget v6, v5, LDk;->b:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_13

    iget-object v6, v5, LDk;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v5, v5, LDk;->g:Z

    if-eqz v5, :cond_13

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Lhn;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v5, p0, Ly1;->B:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_9
    iget-object v4, p0, Ly1;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    iget-object v10, v4, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v10, v6, v8, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v5, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, LUm;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_14
    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x7d

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x7a

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Ly1;->z:Z

    invoke-virtual {p0, v1}, Ly1;->z(I)Lx1;

    move-result-object v0

    iget-boolean v1, p0, Ly1;->Q:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lx1;->h:LLd;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v7}, Ly1;->B(I)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ly1;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly1;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly1;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly1;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ly1;->J:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_a
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly1;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly1;->n(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y(Landroid/content/Context;)Lv1;
    .locals 4

    iget-object v0, p0, Ly1;->W:Lt1;

    if-nez v0, :cond_1

    new-instance v0, Lt1;

    sget-object v1, Lt2;->f:Lt2;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lt2;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lem;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lt2;->b:Ljava/lang/Object;

    iput-object p1, v1, Lt2;->c:Ljava/lang/Object;

    iput-object v2, v1, Lt2;->a:Ljava/lang/Object;

    sput-object v1, Lt2;->f:Lt2;

    :cond_0
    sget-object p1, Lt2;->f:Lt2;

    invoke-direct {v0, p0, p1}, Lt1;-><init>(Ly1;Lt2;)V

    iput-object v0, p0, Ly1;->W:Lt1;

    :cond_1
    iget-object p0, p0, Ly1;->W:Lt1;

    return-object p0
.end method

.method public final z(I)Lx1;
    .locals 4

    iget-object v0, p0, Ly1;->L:[Lx1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lx1;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Ly1;->L:[Lx1;

    move-object v0, v2

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Lx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx1;->a:I

    iput-boolean v1, p0, Lx1;->n:Z

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method
