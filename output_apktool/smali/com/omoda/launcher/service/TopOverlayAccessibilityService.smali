.class public final Lcom/omoda/launcher/service/TopOverlayAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# instance fields
.field public A:F

.field public final A0:I

.field public B:Ljava/lang/String;

.field public final B0:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public C0:Lzj;

.field public D:LNb;

.field public D0:Z

.field public E:Z

.field public final E0:I

.field public F:Z

.field public final F0:I

.field public G:Landroid/widget/LinearLayout;

.field public final G0:Ljava/util/Set;

.field public H:Landroid/view/WindowManager$LayoutParams;

.field public H0:Landroid/view/View;

.field public I:Lcom/omoda/launcher/data/PresetRepository;

.field public I0:Landroid/view/WindowManager$LayoutParams;

.field public J:LIo;

.field public final J0:Ljava/util/ArrayList;

.field public K:Llm;

.field public K0:Z

.field public L:I

.field public L0:Landroid/view/WindowManager$LayoutParams;

.field public M:LJk;

.field public M0:Lcom/omoda/launcher/ui/PresetGridLayout;

.field public N:Z

.field public N0:J

.field public O:F

.field public final O0:Lt3;

.field public P:F

.field public P0:LWk;

.field public Q:I

.field public final Q0:Ljava/util/HashMap;

.field public R:I

.field public R0:Landroid/view/View;

.field public S:Li7;

.field public S0:Landroid/view/WindowManager$LayoutParams;

.field public final T:J

.field public T0:Z

.field public final U:F

.field public U0:LXk;

.field public V:Z

.field public V0:LB4;

.field public W:Lr6;

.field public W0:LS4;

.field public X:Z

.field public final X0:Ljava/util/List;

.field public final Y:Lfj;

.field public Y0:Landroid/widget/LinearLayout;

.field public final Z:Lrl;

.field public Z0:Landroid/widget/FrameLayout;

.field public a:Landroid/view/WindowManager;

.field public final a0:Lrl;

.field public final a1:Lfj;

.field public final b:Lfj;

.field public b0:Landroid/widget/FrameLayout;

.field public b1:LXk;

.field public c:Landroid/view/View;

.field public final c0:I

.field public c1:Z

.field public final d:Ljava/util/LinkedHashMap;

.field public final d0:I

.field public final d1:Lfj;

.field public e:Ljava/util/List;

.field public final e0:I

.field public e1:Landroid/view/View;

.field public f:Z

.field public final f0:I

.field public f1:Landroid/view/WindowManager$LayoutParams;

.field public g:LCi;

.field public final g0:I

.field public g1:Z

.field public final h:Lfj;

.field public final h0:I

.field public final h1:Lfj;

.field public i:Landroid/view/View;

.field public final i0:I

.field public final i1:Lfj;

.field public j:Landroid/widget/TextView;

.field public final j0:I

.field public final j1:Lbl;

.field public final k:Landroid/os/Handler;

.field public final k0:I

.field public k1:Landroid/widget/FrameLayout;

.field public l:Landroid/widget/TextView;

.field public final l0:I

.field public l1:Landroid/widget/FrameLayout;

.field public m:Landroid/widget/FrameLayout;

.field public final m0:Ljava/lang/String;

.field public m1:Landroid/view/WindowManager;

.field public n:Z

.field public final n0:Ljava/lang/String;

.field public o:I

.field public final o0:Lbl;

.field public final p:LJk;

.field public p0:I

.field public final q:Lfj;

.field public final q0:LJk;

.field public r:Lpk;

.field public r0:Z

.field public volatile s:Z

.field public final s0:Lbl;

.field public final t:LJk;

.field public final t0:J

.field public final u:J

.field public final u0:I

.field public final v:Lfj;

.field public final v0:I

.field public final w:Landroid/os/Handler;

.field public final w0:Lbl;

.field public final x:LP5;

.field public x0:LIi;

.field public y:Z

.field public final y0:I

.field public z:Z

.field public final z0:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v0, 0x2

    const/16 v1, 0xc

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v4, LYk;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lfj;

    invoke-direct {v6, v4}, Lfj;-><init>(LS9;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b:Lfj;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    new-instance v4, LYk;

    const/16 v6, 0xb

    invoke-direct {v4, v6, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lfj;

    invoke-direct {v6, v4}, Lfj;-><init>(LS9;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h:Lfj;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    new-instance v4, LJk;

    invoke-direct {v4, v5, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p:LJk;

    new-instance v4, LYk;

    const/16 v6, 0x11

    invoke-direct {v4, v6, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lfj;

    invoke-direct {v6, v4}, Lfj;-><init>(LS9;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q:Lfj;

    new-instance v4, LJk;

    invoke-direct {v4, v3, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t:LJk;

    const-wide/32 v6, 0x1d4c0

    iput-wide v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u:J

    new-instance v4, LYk;

    const/4 v6, 0x5

    invoke-direct {v4, v6, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lfj;

    invoke-direct {v6, v4}, Lfj;-><init>(LS9;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v:Lfj;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v4, LXi;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, LBb;-><init>(Lyb;)V

    sget-object v7, Lv7;->a:LT6;

    sget-object v7, Lcd;->a:LCa;

    const-string v8, "context"

    invoke-static {v7, v8}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lt8;->a:Lt8;

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    sget-object v8, LV4;->d:LV4;

    invoke-virtual {v7, v4, v8}, Lg;->e(Ljava/lang/Object;Lha;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le6;

    :goto_0
    new-instance v7, LP5;

    sget-object v8, LT7;->f:LT7;

    invoke-interface {v4, v8}, Le6;->b(Ld6;)Lc6;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, LBb;

    invoke-direct {v8, v6}, LBb;-><init>(Lyb;)V

    invoke-interface {v4, v8}, Le6;->f(Le6;)Le6;

    move-result-object v4

    :goto_1
    invoke-direct {v7, v4}, LP5;-><init>(Le6;)V

    iput-object v7, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    const/4 v4, -0x1

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    const-wide/16 v6, 0x190

    iput-wide v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T:J

    const/high16 v4, 0x41f00000    # 30.0f

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U:F

    new-instance v4, LYk;

    invoke-direct {v4, v1, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lfj;

    invoke-direct {v6, v4}, Lfj;-><init>(LS9;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y:Lfj;

    new-instance v4, Lrl;

    invoke-direct {v4, v3, p0}, Lrl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z:Lrl;

    new-instance v4, Lrl;

    invoke-direct {v4, v5, p0}, Lrl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0:Lrl;

    const/16 v4, 0x78

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c0:I

    const/16 v4, 0x136

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d0:I

    const/16 v4, 0x190

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0:I

    const/16 v4, 0xeb

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f0:I

    const/16 v4, 0x19a

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g0:I

    const/16 v4, 0xb4

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i0:I

    const/16 v4, 0x57

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j0:I

    const/16 v4, 0x50

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0:I

    const/16 v6, 0x2b2

    iput v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l0:I

    const-string v6, "com.chery.launcher"

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0:Ljava/lang/String;

    const-string v6, "com.chery.appmenu.activity.AppMenuActivity"

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0:Ljava/lang/String;

    new-instance v6, Lbl;

    invoke-direct {v6, v3, p0}, Lbl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0:Lbl;

    new-instance v3, LJk;

    invoke-direct {v3, v0, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q0:LJk;

    new-instance v3, Lbl;

    invoke-direct {v3, v5, p0}, Lbl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0:Lbl;

    const-wide/32 v5, 0x2bf20

    iput-wide v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0:J

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0:I

    iput v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v0:I

    new-instance v1, Lbl;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, Lbl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0:Lbl;

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z0:I

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A0:I

    const-string v1, "floating_back"

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B0:Ljava/lang/String;

    const/16 v1, 0x2a

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0:I

    const/16 v1, 0x40

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0:I

    const-string v1, "ru.rutube.app"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v3, "singleton(...)"

    invoke-static {v1, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    new-instance v1, Lt3;

    invoke-direct {v1, v2}, Lt3;-><init>(I)V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O0:Lt3;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q0:Ljava/util/HashMap;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X0:Ljava/util/List;

    new-instance v1, LYk;

    const/4 v3, 0x6

    invoke-direct {v1, v3, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v3, Lfj;

    invoke-direct {v3, v1}, Lfj;-><init>(LS9;)V

    iput-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a1:Lfj;

    new-instance v1, LYk;

    invoke-direct {v1, v2, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v2, Lfj;

    invoke-direct {v2, v1}, Lfj;-><init>(LS9;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d1:Lfj;

    sget-object v1, LPh;->j:LPh;

    new-instance v2, Lfj;

    invoke-direct {v2, v1}, Lfj;-><init>(LS9;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h1:Lfj;

    sget-object v1, LPh;->k:LPh;

    new-instance v2, Lfj;

    invoke-direct {v2, v1}, Lfj;-><init>(LS9;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i1:Lfj;

    new-instance v1, Lbl;

    invoke-direct {v1, v0, p0}, Lbl;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j1:Lbl;

    return-void
.end method

.method public static B0(Lpm;)Ljava/lang/String;
    .locals 2

    sget-object v0, LKi;->k:Lqm;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lqm;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, v0, Lqm;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lqm;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lqm;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lqm;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_5
    const-string p0, "unifiedMode"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static F0(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0801e3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lnk;->f:Z

    if-eqz v1, :cond_3

    sget-object v1, Lnk;->b:Lkk;

    if-eqz v1, :cond_2

    iget v0, v1, Lkk;->d:I

    goto :goto_1

    :cond_2
    const-string p0, "base"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v0, v0, 0x3c

    if-lez v0, :cond_4

    const-string v1, "+"

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object v0

    iget-object v0, v0, LSh;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static O(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/omoda/launcher/data/RemoteApp;
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/omoda/launcher/data/RemoteApp;

    if-nez v1, :cond_7

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v0, v2

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/RemoteApp;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    move-object v0, v1

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    move-object v1, v2

    check-cast v1, Lcom/omoda/launcher/data/RemoteApp;

    :cond_7
    return-object v1
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, LKi;->h:LDf;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4041708b

    if-eq v1, v2, :cond_4

    const v2, 0x61fbb3b

    if-eq v1, v2, :cond_2

    const v2, 0x6879507    # 5.100033E-35f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "small"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, LDf;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v0, LDf;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "medium"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, v0, LDf;->b:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_6
    const-string p0, "presetSize"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static W(Landroid/widget/FrameLayout;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080054

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080053

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final a(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILT5;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fetchApps attempt "

    const-string v1, "TopOverlayA11y"

    instance-of v2, p2, Lpl;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lpl;

    iget v3, v2, Lpl;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lpl;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lpl;

    invoke-direct {v2, p0, p2}, Lpl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)V

    :goto_0
    iget-object p2, v2, Lpl;->h:Ljava/lang/Object;

    sget-object v3, Ll6;->a:Ll6;

    iget v4, v2, Lpl;->j:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget p0, v2, Lpl;->g:I

    iget p1, v2, Lpl;->f:I

    iget-object v4, v2, Lpl;->e:Ljava/lang/String;

    iget-object v6, v2, Lpl;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p2}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lgf;->v(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object p2

    invoke-virtual {p2}, LLm;->b()Ljava/lang/String;

    move-result-object p2

    if-gt v5, p1, :cond_7

    move-object v4, p2

    move p2, p1

    move-object p1, p0

    move p0, v5

    :goto_1
    const/16 v6, 0x2f

    :try_start_0
    invoke-static {v4}, LT0;->c(Ljava/lang/String;)Laf;

    move-result-object v7

    iget-object v7, v7, Laf;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v3, v7

    goto/16 :goto_5

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": empty list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-ge p0, p2, :cond_6

    iget-object v6, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X0:Ljava/util/List;

    add-int/lit8 v7, p0, -0x1

    if-ltz v7, :cond_4

    invoke-static {v6}, LM4;->o0(Ljava/util/List;)I

    move-result v8

    if-gt v7, v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x7d0

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    :goto_3
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-object p1, v2, Lpl;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object v4, v2, Lpl;->e:Ljava/lang/String;

    iput p2, v2, Lpl;->f:I

    iput p0, v2, Lpl;->g:I

    iput v5, v2, Lpl;->j:I

    invoke-static {v6, v7, v2}, Lfm;->j(JLT5;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v6, p1

    move p1, p2

    :goto_4
    move p2, p1

    move-object p1, v6

    :cond_6
    if-eq p0, p2, :cond_7

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_5
    return-object v3
.end method

.method public static final b(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lwl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lwl;

    iget v1, v0, Lwl;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lwl;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lwl;

    invoke-direct {v0, p0, p1}, Lwl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)V

    :goto_0
    iget-object p1, v0, Lwl;->e:Ljava/lang/Object;

    sget-object v1, Ll6;->a:Ll6;

    iget v2, v0, Lwl;->g:I

    sget-object v3, Lsm;->a:Lsm;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lwl;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-eqz p1, :cond_4

    :cond_3
    :goto_1
    move-object v1, v3

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060058

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget-object v2, Lv7;->b:LJ6;

    new-instance v5, Lxl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lxl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILS5;)V

    iput-object p0, v0, Lwl;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput v4, v0, Lwl;->g:I

    invoke-static {v2, v5, v0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    check-cast p1, Laf;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p1, Laf;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    iget-object p1, p1, Laf;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laf;

    iget-object v2, v1, Laf;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Laf;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXk;

    invoke-virtual {p0, v1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0(LXk;Ljava/util/List;)V

    goto :goto_4

    :goto_5
    return-object v1
.end method

.method public static final c0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LR2;F)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f10016d

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p1, p1, LR2;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LT7;->s:Lbk;

    if-eqz p0, :cond_1

    iget p0, p0, Lbk;->f:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->e:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p0, 0x10

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    const/16 p1, 0xc

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0

    :cond_0
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "size"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public static final d0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;Lcom/omoda/launcher/data/RemoteApp;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p8

    const/4 v12, 0x2

    invoke-static/range {p1 .. p6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->c:Ljava/lang/String;

    const-string v1, "0%..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    move-object/from16 v8, p7

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, LB4;

    const/4 v0, 0x3

    invoke-direct {v13, v0, v11}, LB4;-><init>(ILjava/lang/Object;)V

    new-instance v14, LJl;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move/from16 v6, p10

    move-object v7, p0

    move-object/from16 v8, p7

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, LJl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    new-instance v0, Lhl;

    move-object/from16 v1, p11

    invoke-direct {v0, v11, p0, v1, v12}, Lhl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v10, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object v2, Lv7;->b:LJ6;

    new-instance v3, Lol;

    const/4 v4, 0x0

    move-object/from16 p1, v3

    move-object/from16 p2, p0

    move-object/from16 p3, p12

    move-object/from16 p4, p0

    move-object/from16 p5, v13

    move-object/from16 p6, v0

    move-object/from16 p7, v14

    move-object/from16 p8, v4

    invoke-direct/range {p1 .. p8}, Lol;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LB4;Lhl;LJl;LS5;)V

    invoke-static {v1, v2, v3, v12}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void
.end method

.method public static final e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->b:I

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p0, 0x21

    invoke-virtual {v0, p1, v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    const-string p1, "append(...)"

    invoke-static {p0, p1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final f0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHl;

    iget-object v2, v0, LHl;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v0, LHl;->a:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {p4, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    invoke-static {p5, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static final g0(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 14

    move-object v4, p0

    move-object/from16 v11, p7

    iget-object v0, v4, LR2;->a:Ljava/lang/String;

    const-string v1, "\u2026"

    invoke-static {v11, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    move-object v3, p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, LR2;->b:Ljava/lang/String;

    invoke-static {v11, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, LR2;->c:Ljava/lang/String;

    invoke-static {v11, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    sget-object v12, Lv7;->b:LJ6;

    new-instance v13, LMl;

    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p8

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, LMl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Landroid/widget/TextView;LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    const/4 v0, 0x2

    iget-object v1, v11, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {v1, v12, v13, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void
.end method

.method public static final h0(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static final i0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 p0, 0x384

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LT7;->s:Lbk;

    if-eqz p0, :cond_1

    iget p0, p0, Lbk;->d:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p7, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object p0

    iget-object p0, p0, LX4;->b:Ljava/lang/String;

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p6, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_1
    const-string p0, "size"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final j0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->f:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0

    :cond_0
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, LKi;->i:Ld3;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "nothing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Ld3;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string v1, "navi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Ld3;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v1, "last"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v0, Ld3;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string v1, "apps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v0, Ld3;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const-string v1, "presets"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, v0, Ld3;->b:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_5
    const-string p0, "autostart"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12f8868c -> :sswitch_4
        0x2dca72 -> :sswitch_3
        0x329296 -> :sswitch_2
        0x337ba6 -> :sswitch_1
        0x7eeae7cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static k0(Landroid/widget/TextView;)F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 5

    sget-object v0, Ljm;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "nothing"

    invoke-static {v3, v4}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lvf;->j()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static final l0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "  \u00b7  mod "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, LKi;->j:Lo6;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5978fff

    if-eq v1, v2, :cond_3

    const v2, 0x641ff83

    if-eq v1, v2, :cond_1

    const v2, 0x50c5c25e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "with_bg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, v0, Lo6;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "no_bg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lo6;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "black"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lo6;->c:Ljava/lang/String;

    :cond_5
    :goto_0
    return-object p0

    :cond_6
    const-string p0, "coversMode"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final q0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static r()LEf;
    .locals 4

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, LT7;->w:Z

    if-eqz v1, :cond_3

    sget-object v1, LT7;->z:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "presetVariants"

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEf;

    if-nez v0, :cond_1

    sget-object v0, LT7;->z:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v1, "small"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnb;->o(Ljava/lang/Object;)V

    check-cast v0, LEf;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiConfig not initialized \u2014 call UiConfig.init(context) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xca9

    const v2, 0x7f0700c5

    if-eq v0, v1, :cond_f

    const/16 v1, 0xcae

    if-eq v0, v1, :cond_d

    const/16 v1, 0xccc

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd60

    if-eq v0, v1, :cond_9

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_7

    const/16 v1, 0xe04

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe7e

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf2e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const v2, 0x7f0700c7

    goto/16 :goto_0

    :cond_2
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x7f0700c6

    goto :goto_0

    :cond_4
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_5
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const v2, 0x7f0700c4

    goto :goto_0

    :cond_7
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const v2, 0x7f0700c3

    goto :goto_0

    :cond_9
    const-string v0, "kk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const v2, 0x7f0700c2

    goto :goto_0

    :cond_b
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const v2, 0x7f0700c1

    goto :goto_0

    :cond_d
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const v2, 0x7f0700c0

    goto :goto_0

    :cond_f
    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const v2, 0x7f0700bf

    :goto_0
    return v2
.end method

.method public static x()Ljava/lang/String;
    .locals 8

    sget-boolean v0, Lnk;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkk;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v0, v0, Lkk;->d:I

    int-to-long v3, v0

    const-wide/32 v5, 0xea60

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "base"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/16 v0, 0xc

    const/16 v2, 0xb

    const/4 v3, 0x2

    const-string v4, "%02d:%02d"

    if-eqz v1, :cond_2

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x7bc

    if-ge v5, v6, :cond_3

    const-string v0, "--:--"

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/ArrayList;
    .locals 15

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentActivities(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "packageName"

    invoke-static {v6, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v4, "loadIcon(...)"

    invoke-static {v8, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-wide v9, v3

    goto :goto_4

    :catch_0
    const-wide/16 v3, 0x0

    goto :goto_3

    :goto_4
    new-instance v3, Lcom/omoda/launcher/data/AppInfo;

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v14}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILF6;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public final A0()V
    .locals 13

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-nez v0, :cond_0

    new-instance v0, Lzj;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    new-instance v4, LYk;

    const/16 v1, 0xd

    invoke-direct {v4, v1, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v5, LYk;

    const/16 v1, 0xe

    invoke-direct {v5, v1, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v6, Lel;

    const/4 v1, 0x5

    invoke-direct {v6, v1, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v7, Lel;

    const/4 v1, 0x6

    invoke-direct {v7, v1, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v8, Lel;

    const/4 v1, 0x7

    invoke-direct {v8, v1, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v9, Lel;

    const/16 v1, 0x8

    invoke-direct {v9, v1, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v10, Lel;

    const/16 v1, 0x9

    invoke-direct {v10, v1, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v11, LYk;

    const/16 v1, 0xf

    invoke-direct {v11, v1, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v12, LYk;

    const/16 v1, 0x10

    invoke-direct {v12, v1, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lzj;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/view/WindowManager;LYk;LYk;Lel;Lel;Lel;Lel;Lel;LYk;LYk;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    :cond_0
    iget-object v1, v0, Lzj;->l:Landroid/view/View;

    if-nez v1, :cond_4

    iget-boolean v2, v0, Lzj;->m:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    iput-boolean v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lzj;->m:Z

    new-instance v1, LS4;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, LS4;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v3, Lmj;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1, v0}, Lmj;-><init>(ILS4;Lzj;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y(Z)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lzj;->d()V

    return-void
.end method

.method public final B()LLm;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LLm;

    return-object p0
.end method

.method public final C()V
    .locals 1

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object v0

    invoke-virtual {v0}, LJa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJa;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :goto_0
    return-void
.end method

.method public final C0()V
    .locals 4

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Llm;->a(Z)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, LIo;->p(I)V

    iget-object v1, v2, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v0}, LIo;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    return-void

    :cond_3
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z0:Landroid/widget/FrameLayout;

    :cond_1
    return-void
.end method

.method public final D0()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    iget-object v3, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v4, LWk;

    iget-object v5, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    const-string v6, "presetRepository"

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/omoda/launcher/data/PresetRepository;->getAllPresets()Ljava/util/List;

    move-result-object v5

    sget-object v7, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object v7

    sget v8, LT7;->k:I

    invoke-direct {v4, v5, v7, v8}, LWk;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iget-object v7, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P0:LWk;

    invoke-virtual {v4, v7}, LWk;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_15

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    move-result-object v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v9, v7, LEf;->g:I

    if-ge v9, v1, :cond_2

    move v10, v1

    goto :goto_0

    :cond_2
    move v10, v9

    :goto_0
    iput v10, v3, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    iget v10, v7, LEf;->f:I

    iput v10, v3, Lcom/omoda/launcher/ui/PresetGridLayout;->b:I

    iget v7, v7, LEf;->e:I

    iput v7, v3, Lcom/omoda/launcher/ui/PresetGridLayout;->c:I

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    mul-int/lit8 v9, v9, 0x5

    if-ltz v9, :cond_14

    sget-object v7, Lv8;->a:Lv8;

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    if-lt v9, v10, :cond_4

    invoke-static {v5}, LL4;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_4
    if-ne v9, v1, :cond_5

    invoke-static {v5}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v11, v8

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v1

    if-ne v11, v9, :cond_6

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v1, :cond_8

    move-object v7, v10

    goto :goto_1

    :cond_8
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_9
    :goto_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v8

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const v12, 0x7f080053

    const v13, 0x7f080054

    if-eqz v11, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v14, v10, 0x1

    if-ltz v10, :cond_d

    check-cast v11, Lcom/omoda/launcher/data/Preset;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v2, "getDrawable(...)"

    move-object/from16 v16, v5

    const v5, 0x1080093

    if-nez v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-virtual {v8, v5, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move/from16 v17, v14

    :goto_3
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11}, Lcom/omoda/launcher/data/Preset;->isSingle()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v11}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v11}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    move-result-object v2

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, LEf;->d:I

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800053

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v13, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    new-instance v2, LHk;

    invoke-direct {v2, v0, v15, v10}, LHk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v5, v16

    move/from16 v10, v17

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_d
    invoke-static {}, LM4;->q0()V

    const/4 v0, 0x0

    throw v0

    :cond_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v9, :cond_13

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/omoda/launcher/data/PresetRepository;->canAddPreset()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0700c9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v7, LT7;->r:LWj;

    const-string v8, "color"

    if-eqz v7, :cond_11

    iget v7, v7, LWj;->p:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sget-object v9, LT7;->r:LWj;

    if-eqz v9, :cond_10

    iget v9, v9, LWj;->o:I

    invoke-virtual {v6, v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v7, 0x8

    int-to-float v9, v7

    mul-float/2addr v9, v5

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v5, LT7;->r:LWj;

    if-eqz v5, :cond_f

    iget v5, v5, LWj;->q:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, LFk;

    const/16 v5, 0x13

    invoke-direct {v2, v5, v0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_10
    const/4 v1, 0x0

    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v1, 0x0

    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/4 v1, 0x0

    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_4
    iput-object v4, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P0:LWk;

    goto :goto_5

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested element count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is less than zero."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_17

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    const v5, 0x7f080106

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iget v5, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    if-ne v2, v5, :cond_16

    invoke-static {v4}, Lnb;->o(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0(Landroid/widget/FrameLayout;IZ)V

    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    invoke-static {v4}, Lnb;->o(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W(Landroid/widget/FrameLayout;)V

    goto :goto_7

    :goto_8
    add-int/2addr v2, v4

    goto :goto_6

    :cond_17
    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v2, :cond_1a

    invoke-virtual {v3}, Lcom/omoda/launcher/ui/PresetGridLayout;->getPanelWidth()I

    move-result v4

    if-ne v2, v4, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v3}, Lcom/omoda/launcher/ui/PresetGridLayout;->getPanelWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1a
    :goto_9
    return-void

    :cond_1b
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final E()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    sget-object v1, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lt2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    return-void
.end method

.method public final E0()V
    .locals 4

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0801e0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autostart_mode"

    const-string v3, "presets"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v3

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "apps"

    :cond_4
    invoke-static {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final F()V
    .locals 4

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S0:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, LXk;->a:Lz2;

    invoke-virtual {v1, v2}, Lz2;->c(Z)V

    :cond_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    invoke-interface {v1, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V0:LB4;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V0:LB4;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W0:LS4;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S0:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    :cond_4
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0()V

    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0:Lbl;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    return-void
.end method

.method public final G0(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h1:Lfj;

    invoke-virtual {v1}, Lfj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i1:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final H(I)V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LUk;

    iget-object v0, p1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object p0

    iget-object v0, p1, LUk;->a:LVk;

    iget-object p1, p1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final H0()V
    .locals 7

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0801f8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object v1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "unified_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lpm;->d:Lpm;

    const-string v1, "off"

    :cond_2
    invoke-static {}, Lpm;->values()[Lpm;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-object v6, v5, Lpm;->a:Ljava/lang/String;

    invoke-static {v6, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    sget-object v0, Lpm;->d:Lpm;

    :cond_5
    invoke-static {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B0(Lpm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public final I0()V
    .locals 9

    invoke-static {}, Lvf;->j()Z

    move-result v0

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y()Lmf;

    move-result-object p0

    if-eqz v0, :cond_0

    sget-object v0, LO8;->a:Ljava/util/Set;

    invoke-static {}, LO8;->k()Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lx8;->a:Lx8;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhf;

    invoke-virtual {p0, v3}, Lmf;->b(Lhf;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lmf;->a:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhf;

    invoke-virtual {p0, v4}, Lmf;->b(Lhf;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    :cond_3
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LRh;

    iget-boolean v6, v3, LRh;->f:Z

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    iput-boolean v5, v3, LRh;->f:Z

    iput-object v4, v3, LRh;->e:Landroid/os/IBinder;

    :try_start_0
    iget-object v4, v3, LRh;->a:Landroid/content/Context;

    iget-object v3, v3, LRh;->g:LQh;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRh;

    iget-object v3, v2, LRh;->b:Landroid/content/Intent;

    iget-boolean v6, v2, LRh;->f:Z

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    :try_start_1
    iget-object v6, v2, LRh;->a:Landroid/content/Context;

    iget-object v7, v2, LRh;->g:LQh;

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bind "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ServiceLink"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    :goto_7
    iput-boolean v3, v2, LRh;->f:Z

    if-nez v3, :cond_8

    iput-object v4, v2, LRh;->e:Landroid/os/IBinder;

    :try_start_2
    iget-object v3, v2, LRh;->a:Landroid/content/Context;

    iget-object v2, v2, LRh;->g:LQh;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :cond_a
    iput-object v0, p0, Lmf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmf;->b:Ljava/util/Set;

    invoke-static {v1}, LL4;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lmf;->b:Ljava/util/Set;

    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzj;->d()V

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public final K()V
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    return-void
.end method

.method public final L()V
    .locals 4

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f1:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g1:Z

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0()V

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j1:Lbl;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M()V
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O0:Lt3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M:LJk;

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S:Li7;

    const/4 v0, -0x1

    iput v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N:Z

    iput v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    iput v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x118

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final N()Landroid/view/View;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0b0036

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    iget v3, v0, LEf;->a:I

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080106

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, LEf;->c:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, LEf;->b:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v0, LEf;->d:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0801ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public final P(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    const/4 v12, 0x0

    iput-object v12, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D:LNb;

    iput-object v15, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    sget-object v0, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {v0, v15}, Lcom/omoda/launcher/data/LastScreen$Companion;->app(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llm;->a(Z)V

    iget-object v0, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v17, v12

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget v0, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0:I

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x38

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xc

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v10, v2

    const v2, 0x7f0700f3

    invoke-static {v14, v1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)Landroid/widget/FrameLayout;

    move-result-object v2

    const v3, 0x7f0700f6

    invoke-static {v14, v1, v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)Landroid/widget/FrameLayout;

    move-result-object v3

    const v4, 0x7f0700d9

    invoke-static {v14, v1, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v9, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v9, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v2, v10, 0x2

    add-int/2addr v2, v1

    iget-object v1, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B0:Ljava/lang/String;

    invoke-virtual {v14, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "x"

    iget v4, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z0:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "y"

    iget v5, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A0:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7f0

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x108

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v3, LHg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, LIg;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, LIg;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v16, LJg;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    new-instance v17, LJg;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    new-instance v4, LHg;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v7, LIg;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v2, LKk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    move/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v17, v12

    move v12, v0

    move/from16 v13, v19

    :try_start_1
    invoke-direct/range {v1 .. v13}, LKk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LHg;LHg;LIg;LIg;LIg;LJg;Landroid/view/WindowManager$LayoutParams;LJg;Landroid/widget/LinearLayout;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    move-object/from16 v2, v18

    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v2, v18

    :goto_0
    iput-object v0, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G:Landroid/widget/LinearLayout;

    iput-object v2, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v12

    :goto_1
    const-string v1, "TopOverlayA11y"

    const-string v2, "Failed to show floating back button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v1, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v1, :cond_a

    const-string v0, "packageName"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v0, 0x780

    const/16 v4, 0x2d0

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, LIo;->i()V

    iput-object v2, v1, LIo;->d:Ljava/lang/String;

    iget-object v0, v1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, LIo;->k:Lbo;

    iget-object v0, v0, Lbo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v4, LGo;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, LGo;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v4}, LR4;->t0(Ljava/util/ArrayList;Lda;)V

    iget-object v0, v1, LIo;->l:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v12, v17

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v2}, LIo;->e(Ljava/lang/String;)LG1;

    move-result-object v12

    :goto_3
    const-string v4, "WindowLauncher"

    if-eqz v12, :cond_3

    iget-object v0, v12, LG1;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v1, v12, v3}, LIo;->t(LG1;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v5, p2

    if-eqz v5, :cond_9

    :try_start_3
    invoke-virtual {v1, v2, v5}, LIo;->d(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v5, p2

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "moveTaskToFront("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v12, LG1;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 relaunching"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    move-object/from16 v5, p2

    :goto_5
    invoke-virtual {v1, v2}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, LIo;->p(I)V

    :cond_4
    iget-object v6, v1, LIo;->a:Landroid/content/Context;

    if-eqz v5, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_8

    const/high16 v7, 0x10000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v8, v0

    const-string v0, "fullscreen start of "

    const-string v9, " failed: "

    invoke-static {v0, v2, v9}, Lpi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v0, v4}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_7

    :cond_6
    move-object/from16 v12, v17

    :goto_7
    if-nez v12, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v12, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_8
    iget-object v0, v1, LIo;->c:Landroid/os/Handler;

    new-instance v4, LHo;

    invoke-direct {v4, v1, v2, v3}, LHo;-><init>(LIo;Ljava/lang/String;Landroid/graphics/Rect;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_8
    const-string v0, "No launch intent for "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-string v0, "windowLauncher"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v17

    :cond_b
    move-object/from16 v17, v12

    const-string v0, "uiVisibilityClient"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v17
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 4

    const-string v0, "package:"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_DELETE failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopOverlayA11y"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final R(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "getApplicationIcon(...)"

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    move-result-object v2

    iget v2, v2, LEf;->b:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v4, "getResources(...)"

    invoke-static {p0, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LNa;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_0
    invoke-direct {v4, v1, v2, v3}, LNa;-><init>(Landroid/graphics/drawable/Drawable;IF)V

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :goto_1
    return-object v4
.end method

.method public final S(III)V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LUk;

    iget-object v0, p1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p2, 0x18

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object p0

    iget-object p2, p1, LUk;->a:LVk;

    iget-object p1, p1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, p2, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final T()V
    .locals 3

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llm;->a(Z)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LIo;->i()V

    return-void

    :cond_1
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0
.end method

.method public final V(LXk;Z)V
    .locals 2

    iget-object v0, p1, LXk;->a:Lz2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2;->b(Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0(LXk;Ljava/util/List;)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g:LCi;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LHb;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g:LCi;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, LHb;->m(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    new-instance p1, Lvl;

    invoke-direct {p1, p0, p2, v1}, Lvl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V

    iget-object p2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    const/4 v0, 0x3

    invoke-static {p2, v1, p1, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    move-result-object p1

    iput-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g:LCi;

    return-void
.end method

.method public final X()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->b:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0

    :cond_0
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Y(Z)V
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_3
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    :goto_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_0
    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final Z(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "steering_key_function"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TopOverlayA11y"

    const-string v0, "steering_key_function write failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final a0()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z0:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    sget-object v4, LSb;->a:LSb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LSb;->d:Ljava/lang/String;

    sget-object v5, LSb;->c:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-wide v7, 0x53aaffbe1faf7680L    # 1.1263574783963387E95

    invoke-static {v7, v8}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    rsub-int/lit8 v5, v5, 0xd

    if-gez v5, :cond_2

    move v5, v6

    :cond_2
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v8, LT7;->r:LWj;

    const/4 v9, 0x0

    const-string v10, "color"

    if-eqz v8, :cond_11

    iget v8, v8, LWj;->n:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x40

    const/16 v12, 0x30

    invoke-virtual {v8, v11, v12, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    sget-object v13, LT7;->r:LWj;

    if-eqz v13, :cond_10

    iget v13, v13, LWj;->k:I

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v14, LKi;->a:LKi;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v14

    iget-object v14, v14, Lq0;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v14, LT7;->s:Lbk;

    if-eqz v14, :cond_f

    iget v14, v14, Lbk;->c:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v14, LT7;->r:LWj;

    if-eqz v14, :cond_e

    iget v10, v14, LWj;->c:I

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/4 v12, -0x2

    invoke-direct {v14, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x20

    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v13, "<this>"

    invoke-static {v4, v13}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v3}, Lgf;->b(II)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    div-int/lit8 v14, v13, 0x4

    rem-int/lit8 v17, v13, 0x4

    if-nez v17, :cond_3

    move/from16 v17, v6

    goto :goto_1

    :cond_3
    move/from16 v17, v2

    :goto_1
    add-int v14, v14, v17

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v6

    :goto_2
    if-ltz v14, :cond_6

    if-ge v14, v13, :cond_6

    add-int/lit8 v6, v14, 0x4

    if-ltz v6, :cond_5

    if-le v6, v13, :cond_4

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v13

    :goto_4
    invoke-virtual {v4, v14, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v14, "it"

    invoke-static {v3, v14}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v6

    const/4 v3, 0x4

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v18, "-"

    const/16 v19, 0x0

    const/16 v22, 0x3e

    move-object/from16 v17, v11

    invoke-static/range {v17 .. v22}, LL4;->y0(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lda;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v6, LKi;->a:LKi;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v6

    iget-object v6, v6, Lq0;->b:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v3

    iget v3, v3, Lbk;->b:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v3

    iget v3, v3, LWj;->a:I

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v4

    iget-object v4, v4, Lq0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->f:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x8

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->e:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->b:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    const-string v4, "XXXXXX"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/16 v4, 0x1001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->l:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v4, 0x18

    const/16 v11, 0x10

    invoke-virtual {v3, v4, v11, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v13, 0x7

    invoke-direct {v4, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    filled-new-array {v4}, [Landroid/text/InputFilter$LengthFilter;

    move-result-object v4

    check-cast v4, [Landroid/text/InputFilter;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v14, v13, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0700e9

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v14, 0xc

    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, LU0;

    const/4 v9, 0x3

    invoke-direct {v2, v0, v9, v3}, LU0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x38

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v4

    iget-object v4, v4, Lq0;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->f:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->j:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v9

    iget-object v9, v9, Lq0;->f:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, LD3;->a:Z

    sget-object v9, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v9

    const-string v11, "ru"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "https://omoda5.com"

    goto :goto_5

    :cond_7
    sget-boolean v9, LD3;->a:Z

    if-eqz v9, :cond_8

    const-string v9, "https://cherryl.ru"

    goto :goto_5

    :cond_8
    const-string v9, "https://omoda-c5-launcher.ru"

    :goto_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v6

    iget v6, v6, Lbk;->f:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v6

    iget v6, v6, LWj;->h:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/16 v6, 0x40

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    const/4 v9, 0x6

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-static {}, LT7;->d()LVj;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v11, v11, LVj;->c:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-virtual {v13, v11, v1, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v13

    iget-object v13, v13, Lq0;->l:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v13

    iget v13, v13, Lbk;->e:I

    int-to-float v13, v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v13

    iget v13, v13, LVj;->f:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v14

    iget-object v14, v14, Lq0;->n:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v14

    iget v14, v14, Lbk;->e:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v14

    iget v14, v14, LVj;->f:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x0

    invoke-virtual {v14, v1, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Lpj;

    const/4 v14, 0x1

    invoke-direct {v12, v13, v0, v2, v14}, Lpj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v10, v14, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v12, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v14, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v12, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v12

    iget v12, v12, Lbk;->e:I

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-lez v5, :cond_b

    const/4 v12, 0x1

    if-ne v5, v12, :cond_9

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v12

    iget-object v12, v12, Lq0;->i:Ljava/lang/String;

    goto :goto_6

    :cond_9
    const/4 v12, 0x2

    if-gt v12, v5, :cond_a

    const/4 v12, 0x5

    if-ge v5, v12, :cond_a

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v12

    iget-object v12, v12, Lq0;->j:Ljava/lang/String;

    goto :goto_6

    :cond_a
    invoke-static {}, LKi;->a()Lq0;

    move-result-object v12

    iget-object v12, v12, Lq0;->k:Ljava/lang/String;

    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v14

    iget-object v14, v14, Lq0;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v14

    iget-object v14, v14, Lq0;->h:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x29

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v12

    iget v12, v12, LVj;->f:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x3f0ccccd    # 0.55f

    invoke-virtual {v10, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    :cond_b
    invoke-static {}, LKi;->a()Lq0;

    move-result-object v12

    iget-object v12, v12, Lq0;->m:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v12

    iget v12, v12, LVj;->f:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v13

    const v14, 0xffffff

    iget v13, v13, LWj;->j:I

    and-int/2addr v13, v14

    const/high16 v14, -0x80000000

    or-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v13, v6

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x30

    int-to-float v15, v15

    mul-float/2addr v15, v4

    float-to-int v15, v15

    move-object/from16 v16, v11

    const/16 v11, 0x22

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    invoke-direct {v14, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xc

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v4, v11

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v13, LKi;->c:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_c

    move-object v1, v13

    :cond_c
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v1

    iget v1, v1, Lbk;->e:I

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v1

    iget v1, v1, LVj;->f:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, LFk;

    invoke-direct {v1, v0, v12}, LFk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x11

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v11, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v11, -0x2

    invoke-direct {v6, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x320

    invoke-direct {v1, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7f0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x100

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x20

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v4, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v4, :cond_d

    invoke-interface {v4, v7, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iput-object v7, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z0:Landroid/widget/FrameLayout;

    new-instance v1, LGk;

    invoke-direct {v1, v5, v0}, LGk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lpj;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v0, v4}, Lpj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_e
    invoke-static {v10}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_f
    move-object v0, v9

    const-string v1, "size"

    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v0, v9

    invoke-static {v10}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v0, v9

    invoke-static {v10}, Lnb;->j0(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0(Lcom/omoda/launcher/data/AppInfo;Z)V
    .locals 50

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v15, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v3, LT7;->q:LYj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "dialog"

    if-eqz v3, :cond_1f

    :try_start_1
    invoke-virtual {v3, v0}, LYj;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v3, 0x28

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    const/16 v5, 0x1c

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    const/16 v6, 0x18

    int-to-float v6, v6

    mul-float v9, v6, v15

    float-to-int v6, v9

    invoke-virtual {v14, v3, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v5, LT7;->r:LWj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v16, "color"

    if-eqz v5, :cond_1e

    :try_start_2
    iget v5, v5, LWj;->f:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x14

    int-to-float v11, v11

    mul-float/2addr v11, v15

    float-to-int v11, v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p1 .. p1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lfm;->r(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;)Leb;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    :try_start_4
    const-string v2, "?"

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    :cond_1
    sget-object v8, Lv8;->a:Lv8;

    :goto_2
    if-eqz v5, :cond_2

    iget v10, v5, Leb;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    invoke-static {v8, v10, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/omoda/launcher/data/RemoteApp;

    move-result-object v10

    new-instance v12, LX0;

    invoke-direct {v12, v1, v10}, LX0;-><init>(ILjava/lang/Object;)V

    invoke-static {v8, v12}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v13, :cond_3

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    goto :goto_4

    :cond_3
    const/16 v24, 0x0

    :goto_4
    check-cast v24, Lcom/omoda/launcher/data/RemoteApp;

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_4

    iget-object v5, v5, Leb;->c:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    invoke-static {v2, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v24, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u2192  "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lcom/omoda/launcher/data/RemoteApp;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/omoda/launcher/data/RemoteApp;->getModVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v1

    iget v1, v1, Lbk;->d:I

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v1

    iget v1, v1, LWj;->b:I

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xdc

    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-int v6, v2

    const/16 v2, 0x40

    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-int v2, v2

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object v3

    iget-object v3, v3, LX4;->d:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v3

    iget v3, v3, Lbk;->e:I

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v3

    iget v3, v3, LVj;->f:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, LT7;->d()LVj;

    move-result-object v13

    invoke-virtual {v13, v0}, LVj;->b(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v27, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v7

    iget v7, v7, LWj;->j:I

    const v13, 0xffffff

    and-int/2addr v7, v13

    const/high16 v13, -0x80000000

    or-int/2addr v7, v13

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v7, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    int-to-float v7, v7

    mul-float v13, v7, v15

    float-to-int v7, v13

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    if-nez p2, :cond_6

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v29, v5

    invoke-static {}, LKi;->c()LX4;

    move-result-object v5

    iget-object v5, v5, LX4;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v5

    iget v5, v5, Lbk;->e:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v5

    iget v5, v5, LVj;->f:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v30, v9

    invoke-static {}, LT7;->d()LVj;

    move-result-object v9

    invoke-virtual {v9, v0}, LVj;->b(Landroid/content/Context;)I

    move-result v9

    move/from16 v31, v13

    const/4 v13, 0x0

    invoke-virtual {v5, v9, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v24, :cond_7

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->c()LX4;

    move-result-object v5

    iget-object v5, v5, LX4;->a:Ljava/lang/String;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v5

    iget v5, v5, Lbk;->e:I

    int-to-float v5, v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v5

    invoke-virtual {v5}, LVj;->a()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, LT7;->d()LVj;

    move-result-object v7

    invoke-virtual {v7, v0}, LVj;->c(Landroid/content/Context;)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_8

    invoke-static {}, LKi;->c()LX4;

    move-result-object v5

    invoke-virtual {v5}, LX4;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v32, v3

    const/16 v3, 0x10

    const/16 v33, 0x0

    move-object/from16 v34, v13

    const/4 v13, 0x1

    if-le v5, v13, :cond_16

    int-to-float v5, v3

    mul-float/2addr v5, v15

    float-to-int v5, v5

    add-int/2addr v5, v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v36, v12

    const/4 v12, 0x3

    if-le v13, v12, :cond_9

    const/16 v12, 0xe

    int-to-float v12, v12

    mul-float/2addr v12, v15

    float-to-int v12, v12

    new-instance v13, Landroid/widget/ScrollView;

    invoke-direct {v13, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v37, v1

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v1, 0x2000000

    invoke-virtual {v13, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    const/4 v1, 0x6

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setScrollBarSize(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    const/16 v17, 0x2

    div-int/lit8 v1, v5, 0x2

    invoke-virtual {v13, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, 0x1

    add-int/lit8 v38, v5, 0x1

    move/from16 v39, v12

    const/16 v18, 0x3

    mul-int/lit8 v12, v38, 0x3

    move/from16 v38, v11

    const/4 v11, -0x1

    invoke-direct {v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v39

    goto :goto_6

    :cond_9
    move-object/from16 v37, v1

    move/from16 v38, v11

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v13, v33

    const/4 v12, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    const/16 v26, 0x1

    add-int/lit8 v40, v12, 0x1

    if-ltz v12, :cond_12

    move-object/from16 v41, v11

    move-object/from16 v11, v39

    check-cast v11, Lcom/omoda/launcher/data/RemoteApp;

    move-object/from16 v39, v7

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object/from16 v42, v14

    const v14, 0x7f0b0031

    move/from16 v43, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v14, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f0800b9

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v15

    invoke-virtual {v11}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/omoda/launcher/data/RemoteApp;->getVersion()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v45, v4

    invoke-virtual {v11}, Lcom/omoda/launcher/data/RemoteApp;->getModVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, LT7;->r:LWj;

    if-eqz v4, :cond_11

    iget v4, v4, LWj;->f:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const v1, 0x7f0800b7

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v4, LT7;->q:LYj;

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v4, LYj;->b:Ljava/lang/String;

    move/from16 v46, v13

    const-string v13, "drawable"

    invoke-virtual {v14, v4, v13, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v10, :cond_a

    invoke-virtual {v11}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v4

    invoke-virtual {v10}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v13

    if-ne v4, v13, :cond_a

    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    const/4 v4, 0x4

    :goto_8
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0800b8

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v8}, LM4;->o0(Ljava/util/List;)I

    move-result v4

    if-ne v12, v4, :cond_b

    const/16 v4, 0x8

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, LT7;->r:LWj;

    if-eqz v4, :cond_f

    iget v4, v4, LWj;->m:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object v4

    iget-object v4, v4, LX4;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, LT7;->s:Lbk;

    if-eqz v4, :cond_e

    iget v4, v4, Lbk;->e:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, LT7;->p:LVj;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v12, "button"

    if-eqz v4, :cond_d

    :try_start_5
    iget v4, v4, LVj;->f:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v14, 0x11

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v13, LT7;->p:LVj;

    if-eqz v13, :cond_c

    invoke-virtual {v13, v0}, LVj;->b(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0800ba

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, LHl;

    invoke-direct {v4, v7, v1, v11}, LHl;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v39

    move/from16 v12, v40

    move-object/from16 v11, v41

    move-object/from16 v14, v42

    move/from16 v1, v43

    move/from16 v15, v44

    move-object/from16 v4, v45

    move/from16 v13, v46

    goto/16 :goto_7

    :cond_c
    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    const-string v0, "size"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_f
    invoke-static/range {v16 .. v16}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_10
    invoke-static/range {v45 .. v45}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_11
    invoke-static/range {v16 .. v16}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    invoke-static {}, LM4;->q0()V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move/from16 v43, v1

    move-object/from16 v39, v7

    move-object/from16 v42, v14

    move/from16 v44, v15

    const/16 v14, 0x11

    const/16 v1, 0x48

    int-to-float v1, v1

    mul-float v1, v1, v44

    add-float/2addr v1, v13

    int-to-float v2, v6

    add-float/2addr v1, v2

    move/from16 v2, v43

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v3, LT7;->r:LWj;

    if-eqz v3, :cond_15

    iget v3, v3, LWj;->m:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v44

    float-to-int v5, v5

    if-ge v5, v4, :cond_14

    const/4 v4, -0x1

    const/4 v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v4, -0x1

    :goto_a
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v4, v38

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v15, v42

    invoke-virtual {v15, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v7, v39

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v1

    goto :goto_b

    :cond_15
    invoke-static/range {v16 .. v16}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_16
    move-object/from16 v37, v1

    move v4, v11

    move-object/from16 v36, v12

    move/from16 v44, v15

    move-object v15, v14

    const/16 v14, 0x11

    move/from16 v10, v33

    :goto_b
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, v37

    invoke-virtual {v15, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, LKi;->a:LKi;

    invoke-static {}, LKi;->b()LR2;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)Landroid/widget/TextView;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)Landroid/widget/TextView;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)Landroid/widget/TextView;

    move-result-object v8

    move/from16 v5, v44

    invoke-static {v0, v13, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LR2;F)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v13, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LR2;F)Landroid/widget/TextView;

    move-result-object v2

    if-nez p2, :cond_17

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x10

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    move/from16 v25, v6

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v28, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v35, v10

    move-object/from16 v37, v13

    const/4 v10, -0x2

    const/4 v13, 0x0

    invoke-direct {v6, v13, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x2

    mul-int/lit8 v13, v14, 0x2

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x3

    mul-int/lit8 v13, v14, 0x3

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v9, LT7;->r:LWj;

    if-eqz v9, :cond_1d

    iget v9, v9, LWj;->m:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x1

    int-to-float v13, v10

    mul-float/2addr v13, v5

    float-to-int v13, v13

    if-ge v13, v10, :cond_18

    const/4 v10, -0x1

    const/4 v13, 0x1

    goto :goto_c

    :cond_18
    const/4 v10, -0x1

    :goto_c
    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    move-object v14, v2

    move-object v2, v12

    move-object v10, v3

    move-object/from16 v13, v32

    move-object v3, v11

    move-object v4, v8

    move/from16 v16, v5

    move-object/from16 v9, v29

    move-object v5, v10

    move/from16 v13, v25

    move-object v6, v14

    move-object/from16 v20, v7

    move-object/from16 v19, v27

    move-object/from16 v7, p1

    move-object/from16 v21, v8

    move-object/from16 v25, v14

    const/16 v14, 0x11

    move-object/from16 v8, p0

    move/from16 v27, v30

    move-object/from16 v9, p0

    invoke-static/range {v1 .. v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g0(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const-string v1, "999.9 MB"

    const/16 v2, 0x20

    if-eqz p2, :cond_19

    invoke-static {v10}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0(Landroid/widget/TextView;)F

    move-result v3

    int-to-float v4, v2

    mul-float v4, v4, v16

    add-float v33, v4, v3

    :cond_19
    invoke-static/range {v19 .. v19}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0(Landroid/widget/TextView;)F

    move-result v3

    add-float v3, v3, v27

    invoke-static/range {v36 .. v36}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0(Landroid/widget/TextView;)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p2, 0x1

    if-eqz v24, :cond_1a

    const/4 v4, 0x1

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    :goto_d
    add-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float v5, v13

    add-float v5, v5, v31

    mul-float/2addr v5, v4

    sub-float v5, v5, v31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v37 .. v37}, LR2;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v37 .. v37}, LR2;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    add-float v2, v2, v33

    const/16 v4, 0x30

    int-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v37 .. v37}, LR2;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v4, v1

    add-float v4, v4, v33

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v5, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v35, v1, v2

    invoke-static {v3, v1}, Lfm;->u(F[F)F

    move-result v1

    const/16 v2, 0x50

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/16 v2, 0x230

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    const/16 v3, 0x5dc

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lvf;->f(III)I

    move-result v1

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7f0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v15, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    new-instance v1, LIk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v15, v2}, LIk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V

    move-object/from16 v13, v34

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, LLk;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object v6, v13

    move-object/from16 v7, v32

    move-object v8, v10

    move-object/from16 v9, v25

    move-object/from16 p2, v10

    move-object/from16 v10, v36

    move-object/from16 v17, v11

    move-object/from16 v11, v19

    move-object/from16 v22, v12

    move-object/from16 v18, v36

    move-object v12, v15

    invoke-direct/range {v1 .. v12}, LLk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    move-object/from16 v12, v29

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, LMk;

    const/16 v23, 0x0

    move-object v1, v14

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    move-object/from16 v4, v28

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v32

    move-object/from16 v8, p2

    move-object/from16 v9, v25

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    move-object/from16 v26, v13

    move-object/from16 v47, v32

    move-object/from16 v27, v37

    move/from16 v13, v16

    move-object v0, v14

    move-object/from16 v49, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v49

    move-object/from16 v14, v25

    move-object/from16 v29, v15

    move/from16 v15, v23

    invoke-direct/range {v1 .. v15}, LMk;-><init>(Ljava/lang/Object;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;I)V

    move-object/from16 v15, v47

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LHl;

    invoke-virtual {v2}, LHl;->a()Landroid/widget/TextView;

    move-result-object v14

    new-instance v13, LMk;

    const/16 v23, 0x1

    move-object v1, v13

    move-object/from16 v3, p0

    move-object/from16 v4, v28

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    move-object v7, v15

    move-object/from16 v8, p2

    move-object/from16 v9, v29

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v48, v13

    move/from16 v13, v16

    move-object/from16 v30, v0

    move-object v0, v14

    move-object/from16 v14, v25

    move-object/from16 v31, v15

    move/from16 v15, v23

    invoke-direct/range {v1 .. v15}, LMk;-><init>(Ljava/lang/Object;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;I)V

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v30

    move-object/from16 v15, v31

    goto :goto_e

    :cond_1c
    move-object/from16 v31, v15

    new-instance v0, LQk;

    move-object v1, v0

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    move-object/from16 v4, v22

    move-object/from16 v5, v17

    move-object/from16 v6, v21

    move-object/from16 v7, v29

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v1 .. v10}, LQk;-><init>(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LRk;

    move-object v1, v0

    move-object/from16 v2, v27

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    move-object/from16 v5, v24

    move-object/from16 v6, v20

    move-object/from16 v7, v31

    move-object/from16 v8, v19

    move/from16 v9, v16

    move-object/from16 v10, p0

    move-object/from16 v11, v18

    move-object/from16 v12, v25

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v13}, LRk;-><init>(LR2;Lcom/omoda/launcher/data/AppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    :cond_1d
    invoke-static/range {v16 .. v16}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1e
    invoke-static/range {v16 .. v16}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    move-object/from16 v45, v4

    invoke-static/range {v45 .. v45}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_f
    const-string v1, "TopOverlayA11y"

    const-string v2, "showAppDialog failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/omoda/launcher/data/PresetRepository;->getPreset(I)Lcom/omoda/launcher/data/Preset;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/omoda/launcher/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "activate_preset_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(I)V
    .locals 1

    sget-object v0, Lnk;->a:Landroid/content/Context;

    sget-object v0, Lnk;->b:Lkk;

    if-eqz v0, :cond_1

    iget v0, v0, Lkk;->d:I

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, v0

    invoke-static {p1}, Lnk;->f(I)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "base"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, LD3;->b:Z

    const/4 v3, 0x0

    const-string v4, "UiConfig not initialized \u2014 call UiConfig.init(context) first"

    const-string v5, "navPanelDefault"

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const-string v7, "navPanelBackHidden"

    const v8, 0x7f080078

    const v9, 0x7f080075

    const v10, 0x7f080079

    const v11, 0x7f080076

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v11, 0x7f080077

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v2, v10, v9, v11, v8}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-boolean v2, LT7;->w:Z

    if-eqz v2, :cond_8

    if-eqz p2, :cond_4

    sget-object v2, LT7;->y:Lse;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_4
    sget-object v2, LT7;->x:Lse;

    if-eqz v2, :cond_7

    :goto_2
    iget v2, v2, Lse;->a:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l0:I

    iget v5, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0:I

    sub-int/2addr v4, v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i0:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v13, 0x1

    if-ltz v13, :cond_5

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    iget v10, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k0:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    int-to-float v11, v13

    int-to-float v12, v2

    add-float/2addr v12, v4

    mul-float/2addr v12, v11

    add-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v6}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int v5, v10, v5

    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v5, v10, v2

    move v13, v9

    goto :goto_3

    :cond_5
    invoke-static {}, LM4;->q0()V

    throw v3

    :cond_6
    return-void

    :cond_7
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v11, 0x7f080175

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v14, 0x7f080177

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f080176

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_a

    move v10, v12

    goto :goto_4

    :cond_a
    move v10, v13

    :goto_4
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    move v12, v13

    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v2, LT7;->w:Z

    if-eqz v2, :cond_12

    if-eqz p2, :cond_d

    sget-object v2, LT7;->y:Lse;

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_d
    sget-object v2, LT7;->x:Lse;

    if-eqz v2, :cond_11

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v2, Lse;->a:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    filled-new-array {v8, v9, v1}, [Landroid/view/View;

    move-result-object v1

    move v4, v13

    :goto_7
    const/4 v5, 0x3

    if-ge v4, v5, :cond_e

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    iget v1, v2, Lse;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    filled-new-array {v14, v15}, [Landroid/view/View;

    move-result-object v1

    move v2, v13

    :goto_8
    const/4 v3, 0x2

    if-ge v2, v3, :cond_10

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v6}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_f

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_9

    :cond_f
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    return-void

    :cond_11
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    filled-new-array {v0, v1}, [LXk;

    move-result-object v0

    invoke-static {v0}, LZ2;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXk;

    iget-object v1, v1, LXk;->a:Lz2;

    iget-object v1, v1, Lz2;->a:Landroid/view/View;

    invoke-static {v1}, LC6;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-static {p0}, LC6;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lvf;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0:Z

    const v0, 0x7f080075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0700f8

    goto :goto_0

    :cond_0
    const v1, 0x7f0700f2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "back_hidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 4

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object v0

    const v1, 0x7f0801f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080127

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080128

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080121

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080122

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080123

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080119

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08011a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080125

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0(Landroid/view/View;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    invoke-static {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0(Landroid/view/View;)V

    const v1, 0x7f08011f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080120

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, LSh;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "?"

    :goto_0
    const v1, 0x7f08012a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LSh;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f08007a

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p1, v0, LSh;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 11

    const/16 v0, 0x9

    sget-object v1, LT7;->r:LWj;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    sget-object v3, LT7;->s:Lbk;

    if-eqz v3, :cond_e

    const v4, 0x7f0801f5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, v1, LWj;->c:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget v5, v3, Lbk;->a:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f0801ea

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, v1, LWj;->m:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v4, 0x7f0801e6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_0

    aget v7, v4, v6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget v8, v1, LWj;->f:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget v8, v3, Lbk;->c:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v0, [I

    fill-array-data v4, :array_1

    move v6, v5

    :goto_1
    iget v7, v3, Lbk;->f:I

    if-ge v6, v0, :cond_1

    aget v8, v4, v6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, v1, LWj;->d:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f0801f1

    const v4, 0x7f0801e9

    const v6, 0x7f0801f8

    const v8, 0x7f0801e0

    const v9, 0x7f0801ee

    filled-new-array {v6, v0, v4, v8, v9}, [I

    move-result-object v0

    move v4, v5

    :goto_2
    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    aget v6, v0, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v8, v1, LWj;->e:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const v0, 0x7f08007a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v4, "button"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v6, LT7;->p:LVj;

    if-eqz v6, :cond_4

    iget v6, v6, LVj;->f:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget v6, v3, Lbk;->e:I

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, LT7;->p:LVj;

    if-eqz v7, :cond_3

    invoke-virtual {v7, p0}, LVj;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v6, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_5
    const v0, 0x7f0801f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0801e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0801e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lff;->F(Landroid/widget/ImageView;)V

    goto :goto_4

    :cond_6
    const v0, 0x7f0801eb

    const v1, 0x7f0801f2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    :goto_5
    const/4 v1, 0x2

    const-string v3, "drawable"

    if-ge v5, v1, :cond_a

    aget v1, v0, v5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, LT7;->o:Ldk;

    const-string v8, "toggle"

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v7, v7, Ldk;->a:Ljava/lang/String;

    invoke-virtual {v9, v7, v3, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, LT7;->o:Ldk;

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Ldk;->b:Ljava/lang/String;

    invoke-virtual {v8, v7, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_7
    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    sget-object v0, LT7;->p:LVj;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, LVj;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const v0, 0x7f0801f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0801ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0801e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0801de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_c
    return-void

    :cond_d
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-string p0, "size"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_f
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 4
        0x7f080127
        0x7f080121
        0x7f08011b
        0x7f08011d
        0x7f080123
        0x7f080119
        0x7f080125
        0x7f08011f
        0x7f080129
    .end array-data

    :array_1
    .array-data 4
        0x7f080128
        0x7f080122
        0x7f08011c
        0x7f08011e
        0x7f080124
        0x7f08011a
        0x7f080126
        0x7f080120
        0x7f08012a
    .end array-data
.end method

.method public final j()V
    .locals 4

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, LT7;->t:Lck;

    const/4 v1, 0x0

    const-string v2, "statusBar"

    if-eqz v0, :cond_2

    iget v0, v0, Lck;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v3, LT7;->t:Lck;

    if-eqz v3, :cond_1

    iget v1, v3, Lck;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, LXk;->c:LNb;

    invoke-interface {v1}, LS9;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z0()V

    :goto_0
    return-void
.end method

.method public final m0()V
    .locals 5

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0b001d

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7f6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S0:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q(Landroid/view/View;Z)LXk;

    move-result-object v0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create app list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TopOverlayA11y"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S0:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    if-nez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f()V

    invoke-virtual {p0, v3, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    iget-object p0, v3, LXk;->a:Lz2;

    iget-object p0, p0, Lz2;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    return-void
.end method

.method public final n()V
    .locals 6

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    const/4 v1, 0x0

    const-string v2, "windowLauncher"

    if-eqz v0, :cond_a

    iget-boolean v0, v0, LIo;->g:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, LIo;->r()LFo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    sget-object v4, Lw8;->a:Lw8;

    const/4 v5, 0x0

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_3

    iput-boolean v5, v0, LIo;->g:Z

    iget-boolean v1, v0, LIo;->j:Z

    if-eqz v1, :cond_2

    iput-boolean v5, v0, LIo;->j:Z

    iget-object v1, v0, LIo;->h:Lcom/omoda/launcher/data/Preset;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1, v4}, LIo;->b(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    :cond_2
    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z:Z

    iget v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0(ZFLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_7

    iput-boolean v5, v0, LIo;->g:Z

    iget-boolean v3, v0, LIo;->j:Z

    if-eqz v3, :cond_5

    iput-boolean v5, v0, LIo;->j:Z

    iget-object v3, v0, LIo;->h:Lcom/omoda/launcher/data/Preset;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3, v4}, LIo;->b(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LIo;->c()V

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z:Z

    iget v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0(ZFLjava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T()V

    :goto_0
    return-void

    :cond_9
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_1
    return-void
.end method

.method public final n0()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "clock_offset"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hours"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "TopOverlayA11y"

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v6, Lnk;->a:Landroid/content/Context;

    sget-boolean v6, Lnk;->f:Z

    if-eqz v6, :cond_3

    sget-object v6, Lnk;->b:Lkk;

    if-eqz v6, :cond_2

    invoke-static {}, Lkk;->e()I

    move-result v6

    goto :goto_0

    :cond_2
    const-string p0, "base"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/16 v6, 0xb4

    :goto_0
    mul-int/lit8 v7, v3, 0x3c

    add-int/2addr v7, v6

    invoke-static {v7}, Lnk;->f(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "migrated legacy clock offset: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "h + zone "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x6d

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    :try_start_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, LT7;->r:LWj;

    if-eqz v2, :cond_6

    iget v2, v2, LWj;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v2, LT7;->s:Lbk;

    if-eqz v2, :cond_5

    iget v2, v2, Lbk;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "sans-serif"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v2, LFk;

    invoke-direct {v2, v0, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7e8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x3000708

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x19

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v2, 0x14

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0:Lbl;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    const-string p0, "size"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "Failed to show clock"

    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public final o0(ZFLjava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p()V

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, LSk;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TopOverlayA11y"

    const-string v3, "Failed to create caption bar cover"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0:Ljava/util/Set;

    invoke-static {v0, p3}, LL4;->u0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0:I

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0:I

    :goto_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x65e

    const/16 v3, 0xbe

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    invoke-interface {v4, v5, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    invoke-virtual {p0, v1, v3, p3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 v0, 0x1

    const/16 v1, 0x704

    invoke-virtual {p0, v0, v1, p3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 v0, 0x2

    const/16 v4, 0x2b8

    invoke-virtual {p0, v0, v3, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    int-to-float p1, v2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/lit16 p2, p1, 0xa2

    invoke-virtual {p0, v0, p2, p3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    add-int/lit16 p1, p1, 0xc2

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1, p3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S(III)V

    goto :goto_4

    :cond_5
    :goto_3
    const/16 p1, 0x8

    if-ge v0, p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LJa;->e:Lfj;

    invoke-virtual {v3}, Lfj;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, v2, LJa;->b:LIo;

    invoke-virtual {v3}, LIo;->j()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, LJa;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v4}, LJa;->b(Z)V

    :cond_6
    sget-object v2, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/LastScreen$Companion;->home()V

    :cond_7
    :goto_0
    const-string v2, "inputmethod"

    invoke-static {v0, v2}, LSi;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "keyboard"

    invoke-static {v0, v2}, LSi;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_d

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const-string v5, "getRunningTasks(...)"

    invoke-static {v2, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v2, v3

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_a

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    move-object v5, v3

    :goto_2
    iget-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-static {v5, v6}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz v2, :cond_b

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    move-object v2, v3

    :goto_3
    iget-object v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-static {v2, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t()V

    :cond_d
    :goto_4
    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    if-nez v2, :cond_e

    return-void

    :cond_e
    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    const-string v5, "windowLauncher"

    if-eqz v2, :cond_18

    iget-boolean v2, v2, LIo;->g:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n()V

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    if-ne p1, v1, :cond_17

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p1, :cond_16

    iget-object p1, p1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z:Z

    iget v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0(ZFLjava/lang/String;)V

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p1, :cond_15

    iget-object p1, p1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, LIo;->r()LFo;

    move-result-object p1

    sget-object v0, LFo;->e:LFo;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p1, :cond_12

    iput-boolean v4, p1, LIo;->g:Z

    iget-boolean p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    goto :goto_5

    :cond_12
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_13
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T()V

    goto :goto_5

    :cond_15
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_16
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_17
    :goto_5
    return-void

    :cond_18
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_19
    :goto_6
    iget-boolean p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E:Z

    if-nez p1, :cond_1e

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K()V

    iput-boolean v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E:Z

    :cond_1a
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUk;

    iget-object v1, v1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x3

    if-gtz v1, :cond_1b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUk;

    iget-object v1, v1, LUk;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v1, :cond_1d

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    invoke-virtual {p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1c

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H(I)V

    :cond_1c
    iput-boolean v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F:Z

    :cond_1d
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0:Lbl;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    :goto_7
    return-void
.end method

.method public final onDestroy()V
    .locals 13

    sget-object v0, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0:Lrl;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z:Lrl;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W:Lr6;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W:Lr6;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y:Lfj;

    invoke-virtual {v1}, Lfj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqk;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lqk;->f:Z

    iget-object v3, v1, Lqk;->c:Lpk;

    const-string v4, "connectivity"

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v5, v1, Lqk;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v5, v6}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    iput-object v0, v1, Lqk;->c:Lpk;

    iput-boolean v2, v1, Lqk;->g:Z

    iget-object v3, v1, Lqk;->b:Landroid/os/Handler;

    iget-object v1, v1, Lqk;->h:LJ2;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v1, Lnk;->f:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sput-boolean v2, Lnk;->f:Z

    sget-object v1, Lnk;->c:LH4;

    if-eqz v1, :cond_5

    iget-boolean v3, v1, LH4;->e:Z

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v3, v1, LH4;->a:Landroid/content/Context;

    iget-object v5, v1, LH4;->f:Lu1;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iput-boolean v2, v1, LH4;->e:Z

    :cond_5
    :goto_0
    sput-object v0, Lnk;->c:LH4;

    sget-object v1, Lnk;->d:Landroid/os/Handler;

    sget-object v3, Lnk;->g:Le8;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LUk;

    :try_start_4
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v5, v5, LUk;->a:LVk;

    invoke-interface {v6, v5}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K0:Z

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_7
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0:Landroid/view/View;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_8
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P0:LWk;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0:Lbl;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_9
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0:LIi;

    if-eqz v1, :cond_a

    iget-object v3, v1, LIi;->c:Landroid/os/Handler;

    iget-object v5, v1, LIi;->f:LJ2;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, LIi;->a()V

    :cond_a
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r:Lpk;

    if-eqz v1, :cond_c

    :try_start_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_b

    check-cast v3, Landroid/net/ConnectivityManager;

    goto :goto_3

    :cond_b
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :cond_c
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    iget-object v3, v1, LP5;->a:Le6;

    sget-object v4, LT7;->f:LT7;

    invoke-interface {v3, v4}, Le6;->b(Ld6;)Lc6;

    move-result-object v3

    check-cast v3, Lyb;

    if-eqz v3, :cond_13

    check-cast v3, LHb;

    invoke-virtual {v3, v0}, LHb;->m(Ljava/util/concurrent/CancellationException;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v1, :cond_12

    iget-boolean v3, v1, Llm;->f:Z

    iget-object v4, v1, Llm;->g:Lkm;

    const/4 v5, 0x3

    const-string v6, "com.chery.window.IWindowUiVisibility"

    const-string v7, "obtain(...)"

    const-string v8, "UiVisibility"

    if-eqz v3, :cond_e

    const-string v3, "unregisterUiTarget failed: "

    iget-object v9, v1, Llm;->b:Landroid/os/IBinder;

    if-nez v9, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {v10, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x7

    invoke-interface {v9, v12, v10, v11, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    iput-boolean v2, v1, Llm;->f:Z

    const-string v9, "unregisterUiTarget OK"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_9
    move-exception v9

    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_e
    :goto_6
    iget-boolean v3, v1, Llm;->e:Z

    if-eqz v3, :cond_10

    const-string v3, "unregisterUiListener failed: "

    iget-object v9, v1, Llm;->b:Landroid/os/IBinder;

    if-nez v9, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {v10, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x5

    invoke-interface {v9, v4, v10, v11, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    iput-boolean v2, v1, Llm;->e:Z

    const-string v4, "unregisterUiListener OK"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_7
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_a
    move-exception v4

    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :goto_8
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_10
    :goto_9
    iget-boolean v3, v1, Llm;->c:Z

    if-eqz v3, :cond_11

    :try_start_d
    iget-object v3, v1, Llm;->a:Landroid/content/Context;

    iget-object v4, v1, Llm;->h:LQh;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :catch_b
    iput-boolean v2, v1, Llm;->c:Z

    iput-object v0, v1, Llm;->b:Landroid/os/IBinder;

    :cond_11
    sput-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_12
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onServiceConnected()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    sput-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    new-instance v2, Lcom/omoda/launcher/data/PresetRepository;

    invoke-direct {v2, p0}, Lcom/omoda/launcher/data/PresetRepository;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    sget-object v2, LIo;->q:LOf;

    invoke-virtual {v2, p0}, LOf;->b(Landroid/content/ContextWrapper;)LIo;

    move-result-object v2

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    sget-object v2, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    new-instance v2, Llm;

    invoke-direct {v2, p0}, Llm;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    new-instance v3, LL;

    const/16 v4, 0x1c

    invoke-direct {v3, v4, p0}, LL;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Llm;->d:LL;

    const-string v3, "UiVisibility"

    const-string v4, "bindService -> "

    iget-boolean v5, v2, Llm;->c:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.systemui"

    const-string v8, "com.android.systemui.SystemUIService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "com.android.systemui.action.uivisibility"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v6, v2, Llm;->a:Landroid/content/Context;

    iget-object v2, v2, Llm;->h:LQh;

    invoke-virtual {v6, v5, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bind failed (expected on emulator): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v3}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    const/16 v3, 0x20

    iput v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-virtual {p0, v2}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v5, Lr6;

    invoke-direct {v5, p0, v2}, Lr6;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W:Lr6;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "com.citos.setting.theme.mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getUriFor(...)"

    invoke-static {v5, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W:Lr6;

    invoke-static {v6}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {v2, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0:Lrl;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.saic.keyevent.hardkey.report"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z:Lrl;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "package"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "sport_key_enabled"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z(I)V

    :cond_1
    sget-object v2, Lnk;->a:Landroid/content/Context;

    sget-boolean v2, Lnk;->f:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    sput-boolean v1, Lnk;->f:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "getApplicationContext(...)"

    invoke-static {v2, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lnk;->a:Landroid/content/Context;

    new-instance v6, Lkk;

    invoke-direct {v6, v2}, Lkk;-><init>(Landroid/content/Context;)V

    sput-object v6, Lnk;->b:Lkk;

    new-instance v2, LH4;

    sget-object v6, Lnk;->a:Landroid/content/Context;

    if-eqz v6, :cond_18

    invoke-direct {v2, v6}, LH4;-><init>(Landroid/content/Context;)V

    iget-boolean v7, v2, LH4;->e:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, LH4;->f:Lu1;

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, v2, LH4;->e:Z

    :goto_1
    sput-object v2, Lnk;->c:LH4;

    sget-object v2, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lt3;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lt3;-><init>(I)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v2, Lnk;->d:Landroid/os/Handler;

    sget-object v6, Lnk;->g:Le8;

    const-wide/32 v7, 0xdbba0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "started, state="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnk;->c()Lmk;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " offset="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lnk;->b:Lkk;

    const-string v7, "base"

    if-eqz v6, :cond_17

    iget v6, v6, Lkk;->d:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "m manual="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lnk;->b:Lkk;

    if-eqz v6, :cond_16

    iget-boolean v6, v6, Lkk;->e:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TimeKeeper"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y:Lfj;

    invoke-virtual {v2}, Lfj;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqk;

    iget-object v6, v2, Lqk;->c:Lpk;

    const/4 v7, 0x4

    const/16 v8, 0xc

    const-string v9, "connectivity"

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    iput-boolean v1, v2, Lqk;->f:Z

    iget-object v6, v2, Lqk;->a:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v10, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v6, v10}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/net/ConnectivityManager;

    new-instance v10, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v10}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v10, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v10

    new-instance v11, Lpk;

    invoke-direct {v11, v0, v2}, Lpk;-><init>(ILjava/lang/Object;)V

    iput-object v11, v2, Lqk;->c:Lpk;

    :try_start_1
    invoke-virtual {v6, v10, v11}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    const-string v10, "TimeSyncWatchdog"

    const-string v11, "registerNetworkCallback failed"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, v2, Lqk;->c:Lpk;

    :goto_3
    iget-object v6, v2, Lqk;->b:Landroid/os/Handler;

    iget-object v10, v2, Lqk;->h:LJ2;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v2, Lqk;->b:Landroid/os/Handler;

    iget-object v10, v2, Lqk;->h:LJ2;

    sget-object v11, Lqk;->i:[J

    iget v2, v2, Lqk;->d:I

    if-le v2, v7, :cond_5

    move v2, v7

    :cond_5
    aget-wide v11, v11, v2

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0()V

    :cond_6
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v0()V

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    const-string v6, "TopOverlayA11y"

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    :try_start_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v10, 0x7f0b0077

    invoke-virtual {v2, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    iget v10, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0:I

    add-int/2addr v10, v7

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v11, 0x7e8

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x118

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v11, -0x3

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const v11, 0x800033

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10, v2, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    iput-object v7, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    const v7, 0x7f0801ae

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/omoda/launcher/ui/PresetGridLayout;

    iput-object v7, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    new-instance v7, LSk;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    const-string v7, "Failed to create sidebar"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p()V

    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    if-nez v2, :cond_d

    sget-object v2, LSb;->a:LSb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_8

    const-wide v10, 0x53aaff7e1faf7680L    # 1.126316737676812E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_6

    :cond_8
    move v2, v0

    :goto_6
    if-eqz v2, :cond_9

    sget-object v7, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    if-eqz v7, :cond_9

    const-wide v10, 0x53aaff6b1faf7680L    # 1.1263046427757025E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    sget-object v7, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_a

    const-wide v10, 0x53aaffc81faf7680L    # 1.1263638441337647E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_7

    :cond_a
    move v7, v0

    :goto_7
    if-nez v7, :cond_d

    if-nez v2, :cond_c

    sget-object v2, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_b

    const-wide v10, 0x53aaffaf1faf7680L    # 1.1263479297901996E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_8

    :cond_b
    move v2, v0

    :goto_8
    add-int/2addr v2, v1

    sget-object v7, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    if-eqz v7, :cond_c

    const-wide v10, 0x53aaffa01faf7680L    # 1.1263383811840605E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0()V

    :cond_d
    sget-object v2, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    iget-boolean v7, v2, Lcom/omoda/launcher/MainActivity;->B:Z

    if-nez v7, :cond_f

    iput-boolean v1, v2, Lcom/omoda/launcher/MainActivity;->B:Z

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Lcom/omoda/launcher/MainActivity;->x(Landroid/content/Intent;Z)V

    :cond_f
    :goto_9
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object v0

    iget-object v2, v0, LJa;->d:Landroid/content/SharedPreferences;

    const-string v7, "opening_at"

    invoke-interface {v2, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v3, v10, v3

    const-wide/32 v12, 0xea60

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    cmp-long v2, v2, v12

    if-gez v2, :cond_11

    iput-boolean v1, v0, LJa;->f:Z

    const-string v2, "HomeKeeper"

    const-string v3, "Unified home did not come up after its last start \u2014 the stock home for now"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_a
    invoke-virtual {v0}, LJa;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, LJa;->b:LIo;

    invoke-virtual {v2}, LIo;->j()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v1}, LJa;->b(Z)V

    :cond_12
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_13

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    :cond_13
    if-nez v5, :cond_14

    goto :goto_b

    :cond_14
    new-instance v0, Lpk;

    invoke-direct {v0, v1, p0}, Lpk;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r:Lpk;

    :try_start_3
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startAntiFraudHeartbeat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b
    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    if-nez v0, :cond_15

    new-instance v0, LIi;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    invoke-direct {v0, p0, v1}, LIi;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iget-object v1, v0, LIi;->c:Landroid/os/Handler;

    iget-object v2, v0, LIi;->f:LJ2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0:LIi;

    :cond_15
    return-void

    :cond_16
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v5

    :cond_17
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v5

    :cond_18
    const-string p0, "app"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v5
.end method

.method public final p()V
    .locals 9

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v7, LTk;->a:LTk;

    sget-object v5, LTk;->b:LTk;

    sget-object v8, LTk;->c:LTk;

    sget-object v6, LTk;->d:LTk;

    move-object v1, v7

    move-object v2, v5

    move-object v3, v8

    move-object v4, v6

    filled-new-array/range {v1 .. v8}, [LTk;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    new-instance v5, LVk;

    invoke-direct {v5, p0, v3}, LVk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LTk;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x118

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v5, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J0:Ljava/util/ArrayList;

    new-instance v6, LUk;

    invoke-direct {v6, v5, v3}, LUk;-><init>(LVk;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "TopOverlayA11y"

    const-string v5, "Failed to create corner overlay"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K0:Z

    return-void
.end method

.method public final p0(Landroid/widget/FrameLayout;IZ)V
    .locals 8

    invoke-static {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W(Landroid/widget/FrameLayout;)V

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r()LEf;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v0, LEf;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, v0, LEf;->i:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget v0, v0, LEf;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p3, :cond_0

    const v1, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700e7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v7, -0x22d182ce

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800033

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    neg-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p3, :cond_4

    new-instance v5, LGk;

    const/4 v7, 0x0

    invoke-direct {v5, p0, p2, v7}, LGk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0700e5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v6, -0x2233cccd

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800035

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p3, :cond_5

    new-instance p3, LGk;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, LGk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)V

    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final q(Landroid/view/View;Z)LXk;
    .locals 22

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06032a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    if-nez p2, :cond_0

    iget-object v0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V0:LB4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v6, LKg;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    xor-int/lit8 v17, v0, 0x1

    new-instance v11, Ldl;

    invoke-direct {v11, v7, v0}, Ldl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Z)V

    new-instance v12, LYk;

    const/4 v1, 0x2

    invoke-direct {v12, v1, v7}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v13, Lcl;

    const/4 v1, 0x1

    invoke-direct {v13, v7, v6, v1}, Lcl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LKg;I)V

    new-instance v14, LYk;

    const/4 v1, 0x3

    invoke-direct {v14, v1, v7}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v15, Lel;

    const/4 v1, 0x0

    invoke-direct {v15, v1, v7}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v1, Lel;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v7}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    new-instance v2, Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-direct {v2, v7}, Lcom/omoda/launcher/data/PrefsAppOrderStore;-><init>(Landroid/content/Context;)V

    new-instance v3, LIa;

    if-eqz p2, :cond_1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, LIa;-><init>(Lcom/omoda/launcher/data/PrefsAppOrderStore;I)V

    :goto_1
    move-object/from16 v18, v3

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, LIa;-><init>(Lcom/omoda/launcher/data/PrefsAppOrderStore;I)V

    goto :goto_1

    :goto_2
    const/16 v21, 0x0

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, LYk;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v7}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    move-object/from16 v19, v0

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v19, v21

    :goto_4
    xor-int/lit8 v20, p2, 0x1

    new-instance v5, Lz2;

    move-object v8, v5

    move-object/from16 v9, p1

    move/from16 v10, v17

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v20}, Lz2;-><init>(Landroid/view/View;ZLdl;LYk;Lcl;LYk;Lel;Lel;ZLIa;LYk;Z)V

    if-eqz p2, :cond_4

    new-instance v8, LXk;

    new-instance v9, LPe;

    const/4 v1, 0x0

    const-string v10, "homePrograms()Ljava/util/List;"

    const-class v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v4, "homePrograms"

    const/4 v11, 0x2

    move-object v0, v9

    move-object/from16 v2, p0

    move-object v12, v5

    move-object v5, v10

    move-object v10, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, LPe;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, LYk;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v7}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-direct {v8, v12, v9, v0}, LXk;-><init>(Lz2;LS9;LS9;)V

    goto :goto_5

    :cond_4
    move-object v12, v5

    move-object v10, v6

    new-instance v8, LXk;

    new-instance v9, LPe;

    const/4 v1, 0x0

    const-string v5, "getUserInstalledApps()Ljava/util/List;"

    const-class v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v4, "getUserInstalledApps"

    const/4 v6, 0x3

    move-object v0, v9

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, LPe;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcl;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v10, v1}, Lcl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LKg;I)V

    invoke-direct {v8, v12, v9, v0}, LXk;-><init>(Lz2;LS9;LS9;)V

    :goto_5
    iput-object v8, v10, LKg;->a:Ljava/lang/Object;

    invoke-virtual {v12}, Lz2;->a()V

    iget-object v0, v10, LKg;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, LXk;

    return-object v0

    :cond_5
    const-string v0, "list"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v21
.end method

.method public final r0(Z)V
    .locals 12

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v1, LT7;->r:LWj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "color"

    if-eqz v1, :cond_d

    :try_start_1
    iget v1, v1, LWj;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v4, LFk;

    const/16 v5, 0x14

    invoke-direct {v4, v5, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b002e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sget-object v5, LT7;->q:LYj;

    if-eqz v5, :cond_c

    invoke-virtual {v5, p0}, LYj;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0800b6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v5, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object v5

    iget-object v5, v5, LSh;->p:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, LT7;->r:LWj;

    if-eqz v5, :cond_b

    iget v5, v5, LWj;->f:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0800b2

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    sget-object v5, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, LKi;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0b002f

    invoke-virtual {v9, v10, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0800b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x7f0800b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget-object v11, LKi;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v8

    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v11, LT7;->r:LWj;

    if-eqz v11, :cond_4

    iget v11, v11, LWj;->f:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, LT7;->r:LWj;

    if-eqz v10, :cond_2

    iget v10, v10, LWj;->l:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    new-instance v10, LU0;

    const/4 v11, 0x5

    invoke-direct {v10, p0, v11, v8}, LU0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_6

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    :cond_6
    if-nez v2, :cond_7

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_7
    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    if-eqz p1, :cond_8

    const/16 v2, 0x7f0

    goto :goto_3

    :cond_8
    const/16 v2, 0x7f6

    :goto_3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_a

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m1:Landroid/view/WindowManager;

    goto :goto_6

    :cond_b
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string p0, "dialog"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to show language dropdown: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopOverlayA11y"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k1:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k1:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final s0()V
    .locals 14

    iget v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f0:I

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-boolean v1, LD3;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i0:I

    if-eqz v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d0:I

    :goto_0
    if-eqz v1, :cond_2

    rsub-int v4, v2, 0x2d0

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0:I

    :goto_1
    const/16 v5, 0x2d0

    if-eqz v1, :cond_3

    rsub-int v2, v2, 0x2d0

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g0:I

    :goto_2
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, 0x0

    const-string v9, "nav"

    if-eqz v1, :cond_4

    const v10, 0x7f07014f

    :try_start_2
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_4
    sget-object v10, LT7;->l:Lak;

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v10, v10, Lak;->a:Ljava/lang/String;

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v5, v3

    neg-float v5, v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v7, 0x7e8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const v10, 0x3000718

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v10, -0x3

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const v0, 0x800033

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11, v6, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0:Landroid/widget/FrameLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz v1, :cond_5

    const v6, 0x7f0b006c

    goto :goto_4

    :cond_5
    const v6, 0x7f0b006b

    :goto_4
    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const v7, 0x3000708

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v7, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c0:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j0:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v0, v7

    goto :goto_5

    :cond_6
    sget-object v0, LT7;->l:Lak;

    if-eqz v0, :cond_b

    iget v0, v0, Lak;->b:I

    :goto_5
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const v0, 0x7f080077

    const v1, 0x7f080078

    const v3, 0x7f080076

    const v4, 0x7f080075

    const v7, 0x7f080079

    filled-new-array {v7, v4, v3, v1, v0}, [I

    move-result-object v9

    :goto_6
    const/4 v10, 0x5

    if-ge v2, v10, :cond_9

    aget v10, v9, v2

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-nez v10, :cond_7

    goto :goto_7

    :cond_7
    sget-object v11, LT7;->r:LWj;

    if-eqz v11, :cond_8

    iget v11, v11, LWj;->a:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_9
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LFk;

    const/4 v8, 0x1

    invoke-direct {v2, v8, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LFk;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LFk;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LFk;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, LFk;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {p0, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    goto :goto_9

    :cond_b
    invoke-static {v9}, Lnb;->j0(Ljava/lang/String;)V

    throw v8

    :cond_c
    invoke-static {v9}, Lnb;->j0(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_8
    const-string v0, "TopOverlayA11y"

    const-string v1, "Failed to show nav panel"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llm;->a(Z)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v1, :cond_1

    iget-object v2, v1, LIo;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, v1, LIo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D:LNb;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D:LNb;

    invoke-interface {v1}, LS9;->d()Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0
.end method

.method public final t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s()V

    sget-object v1, LT7;->q:LYj;

    const/4 v2, 0x0

    const-string v3, "dialog"

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, LYj;->b:Ljava/lang/String;

    const-string v6, "drawable"

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v5, LT7;->r:LWj;

    const-string v6, "color"

    if-eqz v5, :cond_c

    iget v5, v5, LWj;->n:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance v7, LFk;

    const/16 v8, 0x8

    invoke-direct {v7, v8, v0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0b0030

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    sget-object v8, LT7;->q:LYj;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v0}, LYj;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0800bd

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v10, LT7;->r:LWj;

    if-eqz v10, :cond_a

    iget v10, v10, LWj;->f:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0800bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v9

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const v13, 0x7f0800b9

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_4

    check-cast v12, Laf;

    iget-object v15, v12, Laf;->a:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v12, v12, Laf;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0b0031

    invoke-virtual {v3, v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v12, LT7;->r:LWj;

    if-eqz v12, :cond_3

    iget v12, v12, LWj;->f:I

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f0800b7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v12, p3

    invoke-static {v15, v12}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v9

    goto :goto_1

    :cond_0
    const/4 v13, 0x4

    :goto_1
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f0800b8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static/range {p2 .. p2}, LM4;->o0(Ljava/util/List;)I

    move-result v13

    if-ne v11, v13, :cond_1

    const/16 v11, 0x8

    goto :goto_2

    :cond_1
    move v11, v9

    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v11, LT7;->r:LWj;

    if-eqz v11, :cond_2

    iget v11, v11, LWj;->m:I

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Lpj;

    move-object/from16 v11, p4

    invoke-direct {v5, v0, v11, v15}, Lpj;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lda;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v11, v14

    const v3, 0x7f0800bd

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {}, LM4;->q0()V

    throw v2

    :cond_5
    move v1, v5

    invoke-virtual {v7, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v3, 0x7f0800bd

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x50

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/16 v6, 0x8a

    int-to-float v6, v6

    mul-float/2addr v6, v1

    const/16 v10, 0x20

    int-to-float v10, v10

    mul-float/2addr v10, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v5

    add-float/2addr v3, v10

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v11, v9

    :goto_3
    if-ge v11, v5, :cond_7

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v12, v10

    cmpl-float v14, v12, v3

    if-lez v14, :cond_6

    move v3, v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    const/16 v5, 0x168

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/16 v6, 0x384

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v1, v6

    float-to-int v3, v3

    invoke-static {v3, v5, v1}, Lvf;->f(III)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_8

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    :cond_8
    if-nez v2, :cond_9

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_9
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7f6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v4, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k1:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to show selection dialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TopOverlayA11y"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    :cond_a
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v6}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public final u0(LXk;Ljava/util/List;)V
    .locals 13

    iget-object v0, p1, LXk;->a:Lz2;

    iget-object v1, p1, LXk;->b:Lra;

    invoke-interface {v1}, LS9;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object v2, Lv8;->a:Lv8;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    iget-object v0, v0, Lz2;->h:LY0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "installed"

    invoke-static {v1, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LY0;->g:LIa;

    invoke-virtual {v3, v1}, LIa;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LY0;->i:Ljava/util/List;

    iput-object v2, v0, LY0;->j:Ljava/util/List;

    invoke-virtual {v0}, LY0;->i()V

    iget-object p1, p1, LXk;->a:Lz2;

    iget-object v1, p1, Lz2;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ltz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iget-object v4, v0, LY0;->h:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "container"

    iget-object p1, p1, Lz2;->j:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget-object v8, LT7;->n:LZj;

    const-string v9, "indicator"

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, LZj;->a:Ljava/lang/String;

    const-string v12, "drawable"

    invoke-virtual {v10, v8, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    sget-object v10, LT7;->n:LZj;

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v10, LZj;->b:Ljava/lang/String;

    invoke-virtual {v3, v10, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v9, v2

    :goto_4
    if-ge v9, v4, :cond_6

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    div-int/lit8 v12, v7, 0x2

    invoke-virtual {v11, v12, v2, v12, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v11, v4, -0x1

    invoke-static {v1, v2, v11}, Lvf;->f(III)I

    move-result v11

    if-ne v9, v11, :cond_5

    move v11, v3

    goto :goto_5

    :cond_5
    move v11, v8

    :goto_5
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p2

    invoke-virtual {v0, p2, v1}, LY0;->k(ILandroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_9
    return-void

    :cond_a
    invoke-static {v9}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v9}, Lnb;->j0(Ljava/lang/String;)V

    throw v3
.end method

.method public final v()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public final v0()V
    .locals 6

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0:I

    iget v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v0:I

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, LFk;

    const/4 v4, 0x7

    invoke-direct {v1, v4, p0}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7e8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x108

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x64

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x5a

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v4, 0x800015

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j()V

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0:Lbl;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TopOverlayA11y"

    const-string v1, "Failed to show temp"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final w()LJa;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a1:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJa;

    return-object p0
.end method

.method public final w0()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    filled-new-array {v0, p0}, [LXk;

    move-result-object p0

    invoke-static {p0}, LZ2;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LXk;

    iget-object v2, v2, LXk;->c:LNb;

    invoke-interface {v2}, LS9;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final x0(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lv8;->a:Lv8;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/RemoteApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/omoda/launcher/data/RemoteApp;->getAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, LG0;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, LG0;-><init>(I)V

    invoke-static {v0, p0}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lmf;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d1:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf;

    return-object p0
.end method

.method public final y0()V
    .locals 2

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lzj;->l:Landroid/view/View;

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lzj;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y(Z)V

    return-void
.end method

.method public final z()LJi;
    .locals 0

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJi;

    return-object p0
.end method

.method public final z0()V
    .locals 1

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    goto :goto_0

    :cond_0
    sget-object v0, LSb;->a:LSb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LSb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0()V

    return-void
.end method
