.class public abstract Lb1;
.super Landroidx/activity/a;
.source "SourceFile"

# interfaces
.implements Le1;


# instance fields
.field public final p:LL;

.field public final q:Landroidx/lifecycle/a;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ly1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/a;-><init>()V

    new-instance v0, Ly9;

    invoke-direct {v0, p0}, Ly9;-><init>(Lb1;)V

    new-instance v1, LL;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, LL;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lb1;->p:LL;

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, Lb1;->q:Landroidx/lifecycle/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb1;->t:Z

    iget-object v0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object v0, v0, LQ9;->c:Ljava/lang/Object;

    check-cast v0, Lh1;

    new-instance v1, LZ0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LZ0;-><init>(Lb1;I)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Lh1;->e(Ljava/lang/String;Lxh;)V

    new-instance v0, La1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La1;-><init>(Lb1;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/a;->f(LQe;)V

    iget-object v0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object v0, v0, LQ9;->c:Ljava/lang/Object;

    check-cast v0, Lh1;

    new-instance v1, LZ0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LZ0;-><init>(Lb1;I)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Lh1;->e(Ljava/lang/String;Lxh;)V

    new-instance v0, La1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La1;-><init>(Lb1;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/a;->f(LQe;)V

    return-void
.end method

.method public static l(LJ9;)Z
    .locals 5

    iget-object p0, p0, LJ9;->c:Lt2;

    invoke-virtual {p0}, Lt2;->k()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx9;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lx9;->s:Ly9;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Ly9;->v:Lb1;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lx9;->g()LJ9;

    move-result-object v2

    invoke-static {v2}, Lb1;->l(LJ9;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Lx9;->M:LP9;

    sget-object v3, LWb;->d:LWb;

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, LP9;->f()V

    iget-object v2, v2, LP9;->b:Landroidx/lifecycle/a;

    iget-object v2, v2, Landroidx/lifecycle/a;->c:LWb;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v0, v1, Lx9;->M:LP9;

    iget-object v0, v0, LP9;->b:Landroidx/lifecycle/a;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    move v0, v4

    :cond_4
    iget-object v2, v1, Lx9;->L:Landroidx/lifecycle/a;

    iget-object v2, v2, Landroidx/lifecycle/a;->c:LWb;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v1, Lx9;->L:Landroidx/lifecycle/a;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    move v0, v4

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lb1;->k()V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->w()V

    iget-object v0, p0, Ly1;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ly1;->m:Ls1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object v0

    check-cast v0, Ly1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ly1;->O:Z

    iget v2, v0, Ly1;->S:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Ll1;->b:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Ly1;->C(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Ll1;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Ll1;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, LF3;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Ll1;->f:Z

    if-nez v2, :cond_7

    sget-object v2, Ll1;->a:LE2;

    new-instance v3, Li1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Li1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, LE2;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    sget-object v2, Ll1;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Ll1;->c:LIc;

    if-nez v3, :cond_5

    sget-object v3, Ll1;->d:LIc;

    if-nez v3, :cond_3

    invoke-static {p1}, Lnb;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LIc;->a(Ljava/lang/String;)LIc;

    move-result-object v3

    sput-object v3, Ll1;->d:LIc;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v3, Ll1;->d:LIc;

    iget-object v3, v3, LIc;->a:LJc;

    iget-object v3, v3, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    monitor-exit v2

    goto :goto_4

    :cond_4
    sget-object v3, Ll1;->d:LIc;

    sput-object v3, Ll1;->c:LIc;

    goto :goto_2

    :cond_5
    sget-object v4, Ll1;->d:LIc;

    invoke-virtual {v3, v4}, LIc;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Ll1;->c:LIc;

    sput-object v3, Ll1;->d:LIc;

    iget-object v3, v3, LIc;->a:LJc;

    iget-object v3, v3, LJc;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lnb;->T(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_4
    invoke-static {p1}, Ly1;->o(Landroid/content/Context;)LIc;

    move-result-object v2

    sget-boolean v3, Ly1;->k0:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_8

    invoke-static {p1, v0, v2, v5, v4}, Ly1;->s(Landroid/content/Context;ILIc;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    :cond_8
    instance-of v3, p1, LR5;

    if-eqz v3, :cond_9

    invoke-static {p1, v0, v2, v5, v4}, Ly1;->s(Landroid/content/Context;ILIc;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_2
    move-object v4, p1

    check-cast v4, LR5;

    invoke-virtual {v4, v3}, LR5;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    :cond_9
    sget-boolean v3, Ly1;->j0:Z

    if-nez v3, :cond_a

    goto/16 :goto_6

    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_20

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_5

    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_c

    iput v7, v5, Landroid/content/res/Configuration;->fontScale:F

    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v7, :cond_d

    iput v7, v5, Landroid/content/res/Configuration;->mcc:I

    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v7, :cond_e

    iput v7, v5, Landroid/content/res/Configuration;->mnc:I

    :cond_e
    invoke-static {v3, v6, v5}, Lp1;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v7, :cond_f

    iput v7, v5, Landroid/content/res/Configuration;->touchscreen:I

    :cond_f
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v7, :cond_10

    iput v7, v5, Landroid/content/res/Configuration;->keyboard:I

    :cond_10
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v7, :cond_11

    iput v7, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_11
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v7, :cond_12

    iput v7, v5, Landroid/content/res/Configuration;->navigation:I

    :cond_12
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v7, :cond_13

    iput v7, v5, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_13
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v7, :cond_14

    iput v7, v5, Landroid/content/res/Configuration;->orientation:I

    :cond_14
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_15

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_15
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    if-eq v4, v7, :cond_16

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_17

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    if-eq v4, v7, :cond_18

    iget v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_18
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    if-eq v4, v7, :cond_19

    iget v4, v5, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_19
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    if-eq v4, v7, :cond_1a

    iget v4, v5, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    if-eq v4, v7, :cond_1b

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v4, v7, :cond_1c

    iget v4, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v7

    iput v4, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v7, :cond_1d

    iput v7, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v7, :cond_1e

    iput v7, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v7, :cond_1f

    iput v7, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_20

    iput v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    :cond_20
    :goto_5
    invoke-static {p1, v0, v2, v5, v1}, Ly1;->s(Landroid/content/Context;ILIc;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, LR5;

    const v2, 0x7f100231

    invoke-direct {v1, p1, v2}, LR5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, LR5;->a(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_21

    invoke-virtual {v1}, LR5;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Leh;->a(Landroid/content/res/Resources$Theme;)V

    :catch_2
    :cond_21
    move-object p1, v1

    :goto_6
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object v0

    check-cast v0, Ly1;

    invoke-virtual {v0}, Ly1;->A()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object v0

    check-cast v0, Ly1;

    invoke-virtual {v0}, Ly1;->A()V

    invoke-super {p0, p1}, Landroidx/activity/a;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb1;->r:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb1;->s:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb1;->t:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, LK1;

    invoke-interface {p0}, Lsn;->c()Lrn;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LK1;-><init>(Lbc;Lrn;)V

    invoke-virtual {v1, v0, p3}, LK1;->u(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0, p1, p2, p3, p4}, LJ9;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->w()V

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    iget-object v0, p0, Ly1;->p:Lbj;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly1;->A()V

    new-instance v0, Lbj;

    iget-object v1, p0, Ly1;->o:Leo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Leo;->V()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly1;->k:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lbj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ly1;->p:Lbj;

    :cond_1
    iget-object p0, p0, Ly1;->p:Lbj;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, LGm;->a:I

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->b()V

    return-void
.end method

.method public final j()Ll1;
    .locals 2

    iget-object v0, p0, Lb1;->u:Ly1;

    if-nez v0, :cond_0

    sget-object v0, Ll1;->a:LE2;

    new-instance v0, Ly1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Ly1;-><init>(Landroid/content/Context;Landroid/view/Window;Le1;Ljava/lang/Object;)V

    iput-object v0, p0, Lb1;->u:Ly1;

    :cond_0
    iget-object p0, p0, Lb1;->u:Ly1;

    return-object p0
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026b

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026e

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026d

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08026c

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final m(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0, p1}, Landroidx/activity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, v0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->h()V

    return-void
.end method

.method public final n()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lb1;->p:LL;

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    iget-object v0, v0, Ly9;->u:LJ9;

    invoke-virtual {v0}, LJ9;->k()V

    iget-object p0, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_DESTROY:LVb;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    return-void
.end method

.method public final o(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lb1;->p:LL;

    if-eqz p1, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->i()Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->n()Z

    move-result p0

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0, p1}, Lb1;->m(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    iget-boolean p1, p0, Ly1;->F:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Ly1;->z:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ly1;->A()V

    iget-object p1, p0, Ly1;->o:Leo;

    if-eqz p1, :cond_0

    iget-object v0, p1, Leo;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Leo;->Y(Z)V

    :cond_0
    invoke-static {}, LB1;->a()LB1;

    move-result-object p1

    iget-object v0, p0, Ly1;->k:Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, LB1;->a:LYg;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, LYg;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LQc;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Ly1;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Ly1;->R:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ly1;->m(ZZ)Z

    return-void

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/a;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_CREATE:LVb;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    const/4 p1, 0x0

    iput-boolean p1, p0, LJ9;->y:Z

    iput-boolean p1, p0, LJ9;->z:Z

    iget-object v0, p0, LJ9;->F:LL9;

    iput-boolean p1, v0, LL9;->h:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LJ9;->s(I)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Lb1;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->j()Z

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb1;->p:LL;

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    .line 2
    iget-object v0, v0, Ly9;->u:LJ9;

    iget-object v0, v0, LJ9;->f:LB9;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LB9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Lb1;->p:LL;

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    .line 6
    iget-object v0, v0, Ly9;->u:LJ9;

    iget-object v0, v0, LJ9;->f:LB9;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, LB9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lb1;->n()V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->f()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->l()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lb1;->o(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p1

    check-cast p1, Ly1;

    invoke-virtual {p1}, Ly1;->A()V

    iget-object p1, p1, Ly1;->o:Leo;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p1, Leo;->u:LE6;

    check-cast p1, LDk;

    iget p1, p1, LDk;->b:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    invoke-static {p0}, Lnb;->E(Lb1;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Lte;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lnb;->E(Lb1;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lnb;->E(Lb1;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, Lnb;->F(Lb1;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lnb;->F(Lb1;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p1, "TaskStackBuilder"

    const-string p2, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, LM5;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p0}, Ls0;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0, p1}, Lte;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0

    :cond_8
    return v2
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0, p1}, LJ9;->m(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0, p1}, Landroidx/activity/a;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb1;->p(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb1;->s:Z

    iget-object v0, p0, Lb1;->p:LL;

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    iget-object v0, v0, Ly9;->u:LJ9;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LJ9;->s(I)V

    iget-object p0, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_PAUSE:LVb;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0, p1}, LJ9;->q(Z)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->w()V

    return-void
.end method

.method public final onPostResume()V
    .locals 1

    invoke-virtual {p0}, Lb1;->q()V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->A()V

    iget-object p0, p0, Ly1;->o:Leo;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Leo;->J:Z

    :cond_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->r()Z

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb1;->s:Z

    iget-object p0, v0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0, v1}, LJ9;->x(Z)Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-virtual {p0}, Lb1;->r()V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ly1;->m(ZZ)Z

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Lb1;->p:LL;

    invoke-virtual {p0}, LL;->w()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-virtual {p0}, Lb1;->s()V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    invoke-virtual {p0}, Ly1;->A()V

    iget-object p0, p0, Ly1;->o:Leo;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Leo;->J:Z

    iget-object p0, p0, Leo;->I:Lxn;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lxn;->a()V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object v0

    check-cast v0, Ly1;

    invoke-virtual {v0}, Ly1;->A()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final p(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lb1;->p:LL;

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    iget-object v0, v0, Ly9;->u:LJ9;

    invoke-virtual {v0}, LJ9;->o()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v1, LVb;->ON_RESUME:LVb;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object p0, p0, Lb1;->p:LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ9;->y:Z

    iput-boolean v0, p0, LJ9;->z:Z

    iget-object v1, p0, LJ9;->F:LL9;

    iput-boolean v0, v1, LL9;->h:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LJ9;->s(I)V

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lb1;->p:LL;

    invoke-virtual {v0}, LL;->w()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb1;->t:Z

    iget-boolean v2, p0, Lb1;->r:Z

    const/4 v3, 0x1

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lb1;->r:Z

    iget-object v2, v0, Ly9;->u:LJ9;

    iput-boolean v1, v2, LJ9;->y:Z

    iput-boolean v1, v2, LJ9;->z:Z

    iget-object v4, v2, LJ9;->F:LL9;

    iput-boolean v1, v4, LL9;->h:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, LJ9;->s(I)V

    :cond_0
    iget-object v2, v0, Ly9;->u:LJ9;

    invoke-virtual {v2, v3}, LJ9;->x(Z)Z

    iget-object p0, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v2, LVb;->ON_START:LVb;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object p0, v0, Ly9;->u:LJ9;

    iput-boolean v1, p0, LJ9;->y:Z

    iput-boolean v1, p0, LJ9;->z:Z

    iget-object v0, p0, LJ9;->F:LL9;

    iput-boolean v1, v0, LL9;->h:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LJ9;->s(I)V

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb1;->t:Z

    :cond_0
    iget-object v1, p0, Lb1;->p:LL;

    iget-object v2, v1, LL;->b:Ljava/lang/Object;

    check-cast v2, Ly9;

    iget-object v2, v2, Ly9;->u:LJ9;

    invoke-static {v2}, Lb1;->l(LJ9;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, LL;->b:Ljava/lang/Object;

    check-cast v1, Ly9;

    iget-object v1, v1, Ly9;->u:LJ9;

    iput-boolean v0, v1, LJ9;->z:Z

    iget-object v2, v1, LJ9;->F:LL9;

    iput-boolean v0, v2, LL9;->h:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, LJ9;->s(I)V

    iget-object p0, p0, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v0, LVb;->ON_STOP:LVb;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb1;->k()V

    .line 2
    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1;->i(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lb1;->k()V

    .line 4
    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll1;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lb1;->k()V

    .line 6
    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ll1;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    check-cast p0, Ly1;

    iput p1, p0, Ly1;->T:I

    return-void
.end method
