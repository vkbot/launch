.class public final Lcom/omoda/launcher/MainActivity;
.super Lb1;
.source "SourceFile"


# static fields
.field public static O:Lcom/omoda/launcher/MainActivity;

.field public static final P:Ljava/util/Set;


# instance fields
.field public A:F

.field public B:Z

.field public volatile C:Z

.field public volatile D:Z

.field public volatile E:Lcom/omoda/launcher/data/Preset;

.field public final F:Landroid/os/Handler;

.field public G:J

.field public H:I

.field public I:Z

.field public J:Landroid/widget/FrameLayout;

.field public final K:J

.field public final L:LJ2;

.field public M:I

.field public final N:Landroid/os/Handler;

.field public v:Lt2;

.field public w:Lcom/omoda/launcher/data/PresetRepository;

.field public x:LIo;

.field public y:Lcom/omoda/launcher/data/AppInfo;

.field public z:Lcom/omoda/launcher/data/AppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lue;->a:Ljava/util/Set;

    sput-object v0, Lcom/omoda/launcher/MainActivity;->P:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb1;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/omoda/launcher/MainActivity;->A:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/omoda/launcher/MainActivity;->K:J

    new-instance v0, LJ2;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/omoda/launcher/MainActivity;->L:LJ2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/omoda/launcher/MainActivity;->M:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/omoda/launcher/MainActivity;->N:Landroid/os/Handler;

    return-void
.end method

.method public static H(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 6

    sget-object v0, LSb;->a:LSb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LSb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->I()V

    iget-object p1, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lt2;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/omoda/launcher/data/PresetRepository;->getAllPresets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->K()V

    return-void

    :cond_3
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "autostart_mode"

    const-string v4, "presets"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sget-object v5, Lw8;->a:Lw8;

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p1, "navi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "ru.yandex.yandexnavi"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lcom/omoda/launcher/MainActivity;->E(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    invoke-static {v0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {p0, p1, v5}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto/16 :goto_4

    :sswitch_1
    const-string v2, "last"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    :cond_7
    if-eqz p1, :cond_f

    sget-object p1, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$Companion;->getAtStart()Lcom/omoda/launcher/data/LastScreen;

    move-result-object p1

    instance-of v0, p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    check-cast p1, Lcom/omoda/launcher/data/LastScreen$PresetShown;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZ2;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v1}, Lcom/omoda/launcher/MainActivity;->z(Z)V

    goto/16 :goto_4

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$PresetShown;->getPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto/16 :goto_4

    :cond_b
    instance-of v0, p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$AppFullscreen;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/omoda/launcher/MainActivity;->E(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v1}, Lcom/omoda/launcher/MainActivity;->z(Z)V

    goto :goto_4

    :cond_d
    sget-object v0, Lcom/omoda/launcher/data/LastScreen$Home;->INSTANCE:Lcom/omoda/launcher/data/LastScreen$Home;

    invoke-static {p1, v0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    :cond_e
    if-nez p1, :cond_13

    :goto_2
    invoke-virtual {p0, v1}, Lcom/omoda/launcher/MainActivity;->z(Z)V

    goto :goto_4

    :cond_f
    sget-object p1, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/LastScreen$Companion;->getLastPreset()Lcom/omoda/launcher/data/Preset;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {v0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/omoda/launcher/data/Preset;

    :cond_10
    invoke-virtual {p0, p1, v5}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto :goto_4

    :sswitch_2
    const-string p1, "apps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {p0, v2}, Lcom/omoda/launcher/MainActivity;->z(Z)V

    goto :goto_4

    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_3
    invoke-static {v0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {p0, p1, v5}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto :goto_4

    :cond_12
    invoke-static {v0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {p0, p1, v5}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    :cond_13
    :goto_4
    return-void

    :cond_14
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12f8868c -> :sswitch_3
        0x2dca72 -> :sswitch_2
        0x329296 -> :sswitch_1
        0x337ba6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final B(Landroid/graphics/drawable/Drawable;)LNa;
    .locals 4

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060331

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "getResources(...)"

    invoke-static {p0, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "drawable"

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LNa;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    invoke-direct {v2, p1, v0, v1}, LNa;-><init>(Landroid/graphics/drawable/Drawable;IF)V

    return-object v2
.end method

.method public final C()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v1, LT7;->r:LWj;

    const/4 v2, 0x0

    const-string v3, "color"

    if-eqz v1, :cond_1

    iget v1, v1, LWj;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget-object v4, LT7;->r:LWj;

    if-eqz v4, :cond_0

    iget v2, v4, LWj;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x8

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0

    :cond_0
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public final D(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityService recovery SUCCESS at attempt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/omoda/launcher/MainActivity;->I:Z

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->y()V

    iget-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->B:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/omoda/launcher/MainActivity;->x(Landroid/content/Intent;Z)V

    :cond_0
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->I()V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lt2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lt2;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string p0, "pkg"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v1, Lc8;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v2, v3}, Lc8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public final F(Landroid/widget/FrameLayout;)V
    .locals 11

    sget-object v0, LKi;->a:LKi;

    sget-object v0, LKi;->q:Lu;

    if-eqz v0, :cond_b

    const v1, 0x7f0800e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0800e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v2, 0xc

    iget v3, p0, Lcom/omoda/launcher/MainActivity;->H:I

    const-class v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-lt v3, v2, :cond_2

    sget-object v2, LZc;->d:LZc;

    goto :goto_0

    :cond_2
    invoke-static {p0}, LC6;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, LZc;->a:LZc;

    goto :goto_0

    :cond_3
    invoke-static {p0}, LC6;->y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, LZc;->b:LZc;

    goto :goto_0

    :cond_4
    sget-object v2, LZc;->c:LZc;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lu;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_6
    iget-object v2, v0, Lu;->d:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v2, v0, Lu;->c:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v2, v0, Lu;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, LC6;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p0}, LC6;->y(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/omoda/launcher/MainActivity;->G:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v4, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget p0, p0, Lcom/omoda/launcher/MainActivity;->H:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/omoda/launcher/MainActivity;->H(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    iget-object v6, v0, Lu;->k:Ljava/lang/String;

    iget-object v7, v0, Lu;->j:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v7

    goto :goto_2

    :cond_9
    move-object v1, v6

    :goto_2
    invoke-static {p0, v1}, Lcom/omoda/launcher/MainActivity;->H(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz v2, :cond_a

    move-object v6, v7

    :cond_a
    invoke-static {p0, v6}, Lcom/omoda/launcher/MainActivity;->H(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lu;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/omoda/launcher/MainActivity;->H(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_b
    const-string p0, "accessibilityError"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/omoda/launcher/data/Preset;

    iget v3, p0, Lcom/omoda/launcher/MainActivity;->M:I

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/omoda/launcher/MainActivity;->A:F

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/omoda/launcher/data/Preset;-><init>(ILjava/lang/String;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/omoda/launcher/data/PresetRepository;->savePreset(Lcom/omoda/launcher/data/Preset;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/omoda/launcher/MainActivity;->M:I

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    :cond_2
    sget-object v0, Lw8;->a:Lw8;

    invoke-virtual {p0, v2, v0}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    return-void

    :cond_3
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final I()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omoda/launcher/MainActivity;->E:Lcom/omoda/launcher/data/Preset;

    return-void
.end method

.method public final J(ZLQ7;)V
    .locals 3

    new-instance v0, Lbd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lbd;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Object;I)V

    new-instance v1, Lad;

    invoke-direct {v1, p1, p0, p2, v0}, Lad;-><init>(ZLcom/omoda/launcher/MainActivity;LQ7;Lbd;)V

    new-instance p0, LB4;

    invoke-direct {p0, v1}, LB4;-><init>(Lda;)V

    new-instance p1, LS4;

    invoke-direct {p1, v0}, LS4;-><init>(LS9;)V

    sget-object p2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v1, Lc8;

    const/4 v2, 0x2

    invoke-direct {v1, p2, p0, p1, v2}, Lc8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/omoda/launcher/MainActivity;->C:Z

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->I()V

    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b004a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800d0

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    const v3, 0x7f0800d1

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    const v3, 0x7f0800d2

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_6

    const v3, 0x7f080203

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_6

    const v3, 0x7f080204

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_6

    const v3, 0x7f080205

    invoke-static {v2, v3}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_6

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v10, v8, v9}, Lcom/omoda/launcher/MainActivity;->v(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p0, v7, v5, v6}, Lcom/omoda/launcher/MainActivity;->v(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    sget-object v3, LKi;->a:LKi;

    sget-object v3, LKi;->f:Lle;

    const-string v5, "modeSelector"

    if-eqz v3, :cond_5

    iget-object v3, v3, Lle;->a:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, LKi;->f:Lle;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lle;->b:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, LUc;

    invoke-direct {v3, p0, v0}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LUc;

    invoke-direct {v0, p0, v1}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const-string v1, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lt2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v3, "rootLayout"

    invoke-static {v0, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LC6;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lt2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lt2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()Lcom/omoda/launcher/data/Preset;
    .locals 4

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->E:Lcom/omoda/launcher/data/Preset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/omoda/launcher/MainActivity;->D:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/omoda/launcher/MainActivity;->C:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    const-string v3, "windowLauncher"

    if-eqz v2, :cond_9

    iget-object v2, v2, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    iget-object v2, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz v2, :cond_8

    iget-boolean v2, v2, LIo;->f:Z

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, LIo;->g:Z

    if-eqz p0, :cond_6

    return-object v1

    :cond_6
    return-object v0

    :cond_7
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_1
    return-object v1
.end method

.method public final M(I)V
    .locals 5

    iput p1, p0, Lcom/omoda/launcher/MainActivity;->H:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->I:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccessibilityService recovery attempt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LC6;->j(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x3a98

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f40

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xfa0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    :goto_0
    iget-object v2, p0, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    new-instance v3, LVc;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, LVc;-><init>(Lcom/omoda/launcher/MainActivity;II)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final N(LQ7;)V
    .locals 2

    iget-object v0, p1, LQ7;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    iget p0, p0, Lcom/omoda/launcher/MainActivity;->A:F

    mul-float/2addr p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    iget-object v0, p1, LQ7;->m:Landroid/widget/LinearLayout;

    sub-float v1, p0, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p1, LQ7;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final O(LQ7;)V
    .locals 2

    iget p0, p0, Lcom/omoda/launcher/MainActivity;->A:F

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    rsub-int/lit8 v0, p0, 0x64

    iget-object p1, p1, LQ7;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "    "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lb1;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080098

    invoke-static {p1, v0}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    const v0, 0x7f0800a5

    invoke-static {p1, v0}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    const v4, 0x7f080275

    invoke-static {p1, v4}, Lff;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    new-instance p1, Lt2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lt2;->a:Ljava/lang/Object;

    iput-object v3, p1, Lt2;->b:Ljava/lang/Object;

    iput-object v0, p1, Lt2;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    invoke-virtual {p0, v0}, Lb1;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/omoda/launcher/data/PresetRepository;

    invoke-direct {p1, p0}, Lcom/omoda/launcher/data/PresetRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    sget-object p1, LIo;->q:LOf;

    invoke-virtual {p1, p0}, LOf;->b(Landroid/content/ContextWrapper;)LIo;

    move-result-object p1

    iput-object p1, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result p1

    const-string v0, "MainActivity"

    if-eqz p1, :cond_0

    const-string p1, "AccessibilityService already running"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->y()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/omoda/launcher/MainActivity;->I:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Recovery already in progress (attempt="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/omoda/launcher/MainActivity;->H:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/omoda/launcher/MainActivity;->G:J

    iput v2, p0, Lcom/omoda/launcher/MainActivity;->H:I

    iget-object p1, p0, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->L:LJ2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Lcom/omoda/launcher/MainActivity;->M(I)V

    :goto_0
    return-void

    :cond_2
    move v0, v4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-super {p0}, Lb1;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lb1;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/omoda/launcher/MainActivity;->x(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lb1;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "getWindow(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->B:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/omoda/launcher/MainActivity;->x(Landroid/content/Intent;Z)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->D:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    const/4 v2, 0x0

    const-string v3, "windowLauncher"

    if-eqz v0, :cond_5

    iget-boolean v0, v0, LIo;->f:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz v0, :cond_4

    iget-object v0, v0, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, LIo;->g:Z

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LIo;->c()V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v1, LJk;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->C:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/omoda/launcher/MainActivity;->A(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, LIo;->r()LFo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_3

    if-eq v3, v5, :cond_0

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, LIo;->i:Z

    if-eqz v3, :cond_1

    iput-boolean v4, v0, LIo;->j:Z

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, LIo;->i:Z

    iget-object v3, v0, LIo;->b:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, LIo;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v4, v0, LIo;->g:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LIo;->i()V

    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "MainActivity"

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onUserLeaveHint \u2014 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", preset hidden, overlays hidden"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->I()V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    :cond_4
    invoke-virtual {p0, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_1

    :cond_5
    const-string p0, "onUserLeaveHint \u2014 another app over the preset, preset kept"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    goto :goto_1

    :cond_7
    const-string p0, "onUserLeaveHint \u2014 a preset app came forward, nothing to do"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void

    :cond_9
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/omoda/launcher/MainActivity;->C:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/omoda/launcher/MainActivity;->D:Z

    iput-object p1, p0, Lcom/omoda/launcher/MainActivity;->E:Lcom/omoda/launcher/data/Preset;

    sget-object v2, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {v2, p1}, Lcom/omoda/launcher/data/LastScreen$Companion;->preset(Lcom/omoda/launcher/data/Preset;)V

    iget-object v2, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const-string v3, "binding"

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget-object v2, v2, Lt2;->a:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lt2;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/omoda/launcher/data/Preset;->isSingle()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1}, Lcom/omoda/launcher/data/Preset;->isSingle()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    sget-object v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result v6

    sget-object v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v7, :cond_4

    iput-boolean v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    iput-boolean v0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V:Z

    iput-object v4, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Llm;->a(Z)V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    sget-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lt2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    invoke-virtual {v7, v2, v6, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0(ZFLjava/lang/String;)V

    iput-boolean v2, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z:Z

    iput v6, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    iput-object v5, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string v0, "TopOverlayA11y"

    const-string v1, "showWorkOverlays called but service not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2}, LIo;->b(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    return-void

    :cond_5
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v4
.end method

.method public final u(LQ7;)V
    .locals 7

    sget-object v0, LT7;->r:LWj;

    const/4 v1, 0x0

    const-string v2, "color"

    if-eqz v0, :cond_7

    iget v0, v0, LWj;->q:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v3, "valueOf(...)"

    invoke-static {v0, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LT7;->r:LWj;

    if-eqz v4, :cond_6

    iget v4, v4, LWj;->r:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v4, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, LQ7;->j:Landroid/widget/ImageView;

    iget-object v5, p1, LQ7;->s:Landroid/widget/ImageView;

    filled-new-array {v3, v5}, [Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->C()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, LQ7;->c:Landroid/widget/ImageView;

    iget-object v5, p1, LQ7;->d:Landroid/widget/ImageView;

    filled-new-array {v3, v5}, [Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->C()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_5

    iget-object v0, p1, LQ7;->e:Landroid/view/View;

    iget p0, p0, LWj;->o:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p1, LQ7;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p1, LQ7;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_4

    iget-object v0, p1, LQ7;->n:Landroid/widget/TextView;

    iget p0, p0, LWj;->a:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_3

    iget-object v0, p1, LQ7;->g:Landroid/widget/TextView;

    iget p0, p0, LWj;->f:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_2

    iget-object p1, p1, LQ7;->p:Landroid/widget/TextView;

    iget p0, p0, LWj;->f:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final v(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 5

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v2, LT7;->r:LWj;

    const/4 v3, 0x0

    const-string v4, "color"

    if-eqz v2, :cond_3

    iget v2, v2, LWj;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    sget-object v2, LT7;->r:LWj;

    if-eqz v2, :cond_2

    iget v2, v2, LWj;->o:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060346

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_1

    iget p0, p0, LWj;->q:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->f:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    invoke-virtual {p0}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, LT7;->s:Lbk;

    const/4 v3, 0x0

    const-string v4, "size"

    if-eqz p1, :cond_3

    iget p1, p1, Lbk;->e:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p1, LT7;->r:LWj;

    const-string v5, "color"

    if-eqz p1, :cond_2

    iget p1, p1, LWj;->b:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, LT7;->s:Lbk;

    if-eqz p0, :cond_1

    iget p0, p0, Lbk;->e:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p0, LT7;->r:LWj;

    if-eqz p0, :cond_0

    iget p0, p0, LWj;->a:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, v3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p0, 0x800005

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :cond_0
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v5}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3
.end method

.method public final x(Landroid/content/Intent;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "binding"

    const-string v3, "MainActivity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const-string v7, "boot_watch"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v5, :cond_1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "AccessibilityService up after boot recovery \u2014 autostart=nothing, back to the stock launcher"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/MainActivity;->I()V

    iget-object v1, v0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lt2;->a:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_9

    :cond_0
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-eqz v1, :cond_3

    const-string v7, "show_mode_selector"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v5, :cond_3

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/MainActivity;->K()V

    goto/16 :goto_9

    :cond_3
    sget-object v7, Lw8;->a:Lw8;

    const-string v8, "presetRepository"

    const/4 v9, -0x1

    if-eqz v1, :cond_6

    const-string v10, "activate_preset_index"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-ne v11, v5, :cond_6

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, v0, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Lcom/omoda/launcher/data/PresetRepository;->getPreset(I)Lcom/omoda/launcher/data/Preset;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Activating preset from bottom sheet: index="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v7}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Preset not found at index="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/omoda/launcher/MainActivity;->A(Z)V

    :goto_0
    invoke-virtual {v1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :cond_6
    if-eqz v1, :cond_a

    const-string v10, "reopen_live_preset"

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-ne v11, v5, :cond_a

    invoke-virtual {v1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/omoda/launcher/MainActivity;->x:LIo;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, LIo;->l()Laf;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Laf;->a:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/omoda/launcher/data/Preset;

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v0, v6, v7}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v0, v4}, Lcom/omoda/launcher/MainActivity;->A(Z)V

    goto/16 :goto_9

    :cond_9
    const-string v0, "windowLauncher"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :cond_a
    if-eqz v1, :cond_15

    const-string v7, "edit_preset_index"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v5, :cond_15

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v0, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v10, :cond_14

    invoke-virtual {v10, v9}, Lcom/omoda/launcher/data/PresetRepository;->getPreset(I)Lcom/omoda/launcher/data/Preset;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Editing preset: index="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    :cond_b
    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getId()I

    move-result v3

    iput v3, v0, Lcom/omoda/launcher/MainActivity;->M:I

    iput-boolean v5, v0, Lcom/omoda/launcher/MainActivity;->C:Z

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/MainActivity;->I()V

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->isSingle()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/omoda/launcher/MainActivity;->K()V

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result v3

    iput v3, v0, Lcom/omoda/launcher/MainActivity;->A:F

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, LQ7;->a(Landroid/view/LayoutInflater;)LQ7;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/omoda/launcher/MainActivity;->u(LQ7;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v9, v6

    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v14, v10

    goto :goto_3

    :catch_1
    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :goto_3
    const/16 v15, 0x8

    if-eqz v9, :cond_d

    new-instance v13, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x38

    const/16 v19, 0x0

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v13

    move-object v12, v14

    move-object v6, v13

    move-object v13, v9

    move-object v5, v14

    move v4, v15

    move-wide/from16 v14, v16

    move-object/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v10 .. v19}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILF6;)V

    iput-object v6, v0, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    iget-object v6, v3, LQ7;->j:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, v3, LQ7;->h:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v3, LQ7;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Lcom/omoda/launcher/MainActivity;->B(Landroid/graphics/drawable/Drawable;)LNa;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v3, LQ7;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v3, LQ7;->h:Landroid/widget/LinearLayout;

    new-instance v6, LXc;

    const/4 v9, 0x2

    invoke-direct {v6, v0, v3, v9}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_d
    move v4, v15

    :goto_4
    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const/4 v5, 0x0

    :goto_5
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v6

    :goto_6
    if-eqz v5, :cond_e

    new-instance v15, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x38

    const/16 v18, 0x0

    const-wide/16 v13, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v9, v15

    move-object v11, v6

    move-object v12, v5

    move-object v4, v15

    move-object v15, v8

    invoke-direct/range {v9 .. v18}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILF6;)V

    iput-object v4, v0, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    iget-object v4, v3, LQ7;->s:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, LQ7;->q:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, LQ7;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/omoda/launcher/MainActivity;->B(Landroid/graphics/drawable/Drawable;)LNa;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, LQ7;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, LQ7;->q:Landroid/widget/LinearLayout;

    new-instance v5, LXc;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v3, v6}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v4, v3, LQ7;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v4, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v3, LQ7;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v0, Lcom/omoda/launcher/MainActivity;->A:F

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v8, 0x1

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, v3, LQ7;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v3, LQ7;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    if-eqz v4, :cond_f

    iget-object v4, v3, LQ7;->c:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iget-object v4, v3, LQ7;->j:Landroid/widget/ImageView;

    new-instance v5, LXc;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v3, v6}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, LQ7;->s:Landroid/widget/ImageView;

    new-instance v5, LXc;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v3, v6}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, LQ7;->e:Landroid/view/View;

    new-instance v5, LO;

    const/16 v6, 0xc

    invoke-direct {v5, v6, v3}, LO;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v5, LWc;

    invoke-direct {v5, v3, v0}, LWc;-><init>(LQ7;Lcom/omoda/launcher/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v3, LQ7;->d:Landroid/widget/ImageView;

    new-instance v5, LUc;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v3, LQ7;->c:Landroid/widget/ImageView;

    new-instance v5, LUc;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v6}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Lcom/omoda/launcher/MainActivity;->O(LQ7;)V

    iget-object v4, v3, LQ7;->a:Landroid/widget/FrameLayout;

    new-instance v5, LYc;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v3, v6}, LYc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v4, :cond_12

    iget-object v4, v4, Lt2;->c:Ljava/lang/Object;

    check-cast v4, Landroid/widget/FrameLayout;

    const-string v5, "rootLayout"

    invoke-static {v4, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LC6;->a(Landroid/view/View;)V

    iget-object v4, v0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lt2;->a:Ljava/lang/Object;

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lt2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, v3, LQ7;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_11
    const/4 v0, 0x0

    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v2, v4

    invoke-virtual {v0, v2}, Lcom/omoda/launcher/MainActivity;->A(Z)V

    :goto_7
    invoke-virtual {v1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    move-object v0, v6

    invoke-static {v8}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-eqz p2, :cond_16

    iget-boolean v2, v0, Lcom/omoda/launcher/MainActivity;->C:Z

    if-nez v2, :cond_16

    const-string v0, "Ignoring empty onNewIntent \u2014 preset already active"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const-string v2, "boot_autostart"

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    move v4, v5

    goto :goto_8

    :cond_17
    move v4, v3

    :goto_8
    if-eqz v1, :cond_18

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0, v4}, Lcom/omoda/launcher/MainActivity;->A(Z)V

    :goto_9
    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->J:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lt2;->a:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/omoda/launcher/MainActivity;->J:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/MainActivity;->L:LJ2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p0, "MainActivity"

    const-string v0, "Error overlay hidden"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method

.method public final z(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/omoda/launcher/MainActivity;->I()V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lt2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lt2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-static {}, Lvf;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v0, LJk;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v0, LJk;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method
