.class public final LS4;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LS4;->b:I

    iput-object p2, p0, LS4;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LS9;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LS4;->b:I

    .line 2
    check-cast p1, LNb;

    iput-object p1, p0, LS4;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sget-object v2, Lsm;->a:Lsm;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, LS4;->c:Ljava/lang/Object;

    iget v0, v0, LS4;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljm;->a:Ljm;

    check-cast v5, Lcom/omoda/launcher/LauncherApp;

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v4, v3

    :catch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v2

    :pswitch_1
    check-cast v5, Lzj;

    iget-boolean v0, v5, Lzj;->m:Z

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iput-boolean v4, v5, Lzj;->m:Z

    const-string v6, "TaskManagerPopup"

    iget-object v0, v5, Lzj;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v7, v5, Lzj;->o:Ljava/util/ArrayList;

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5}, Lzj;->g()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luj;

    iget-object v12, v12, Luj;->c:Landroid/graphics/Rect;

    if-eqz v12, :cond_3

    invoke-static {}, LBj;->a()Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    :goto_1
    move-object v11, v1

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    if-eqz v11, :cond_5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    iget-object v14, v5, Lzj;->n:Ljava/util/ArrayList;

    :try_start_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Luj;

    invoke-virtual {v5, v15, v11}, Lzj;->e(Luj;Landroid/graphics/Bitmap;)Lnj;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    move v15, v4

    goto :goto_5

    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v15, v4

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lnj;

    iget-object v4, v4, Lnj;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    add-int/2addr v15, v3

    if-ltz v15, :cond_9

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v3, "Count overflow has happened."

    invoke-direct {v0, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previews: screen "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v12, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, snapshots "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v8, 0x7f0b007a

    invoke-virtual {v4, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v8, 0x7f08023e

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06032b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f06032a

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v4}, LC6;->a(Landroid/view/View;)V

    sget-object v0, LT7;->r:LWj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_d

    iget v8, v0, LWj;->b:I

    const v9, 0x7f080242

    :try_start_3
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    sget-object v10, LKi;->a:LKi;

    invoke-static {}, LKi;->g()LAj;

    move-result-object v10

    iget-object v10, v10, LAj;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v10, v0, LWj;->a:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f08023d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {}, LKi;->g()LAj;

    move-result-object v10

    iget-object v10, v10, LAj;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f08023f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {}, LKi;->g()LAj;

    move-result-object v10

    iget-object v10, v10, LAj;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f080241

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f08023c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v0, v0, LWj;->m:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f08023a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v8, 0x7f08023b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v0}, Lff;->F(Landroid/widget/ImageView;)V

    invoke-static {v8}, Lff;->F(Landroid/widget/ImageView;)V

    new-instance v9, Lkj;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lkj;-><init>(Lzj;I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lkj;

    invoke-direct {v0, v5, v3}, Lkj;-><init>(Lzj;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080240

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lng;)V

    iget-object v3, v5, Lzj;->p:Loj;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lfg;)V

    new-instance v3, Ltd;

    invoke-direct {v3, v5}, Ltd;-><init>(Lzj;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->i(Lkg;)V

    new-instance v3, Lmc;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lmc;-><init>(I)V

    invoke-virtual {v3, v0}, Lmc;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Lvb;

    new-instance v8, Lvj;

    invoke-direct {v8, v5}, Lvj;-><init>(Lzj;)V

    invoke-direct {v3, v8}, Lvb;-><init>(Lvj;)V

    invoke-virtual {v3, v0}, Lvb;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v3, Llj;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v5, v4}, Lzj;->k(Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7f6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x108

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x800033

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, v5, Lzj;->b:Landroid/view/WindowManager;

    invoke-interface {v3, v4, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v5, Lzj;->l:Landroid/view/View;

    iput-object v1, v5, Lzj;->r:Ljava/util/Map;

    invoke-virtual {v5}, Lzj;->j()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnj;

    iget-object v4, v4, Lnj;->a:Ljava/util/List;

    invoke-static {v0, v4}, LR4;->s0(Ljava/util/ArrayList;Ljava/util/Collection;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    iget-object v3, v5, Lzj;->q:LP5;

    new-instance v4, Lxj;

    invoke-direct {v4, v5, v0, v1}, Lxj;-><init>(Lzj;Ljava/util/ArrayList;LS5;)V

    const/4 v0, 0x3

    invoke-static {v3, v1, v4, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    goto :goto_9

    :cond_d
    const-string v0, "color"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    const-string v3, "Failed to show task manager"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, v5, Lzj;->l:Landroid/view/View;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v5, Lzj;->k:LYk;

    invoke-virtual {v0}, LYk;->d()Ljava/lang/Object;

    :goto_9
    return-object v2

    :pswitch_2
    check-cast v5, Landroidx/activity/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, LLg;->a:LMg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lv4;

    const-class v4, Luh;

    invoke-direct {v2, v4}, Lv4;-><init>(Ljava/lang/Class;)V

    new-instance v6, Lqn;

    invoke-interface {v2}, Lu4;->a()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v2, v7}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lqn;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v6, v2, [Lqn;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn;

    const-string v2, "initializers"

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/activity/a;->c()Lrn;

    move-result-object v2

    invoke-interface {v5}, LEa;->a()Lq6;

    move-result-object v5

    const-string v6, "store"

    invoke-static {v2, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "defaultCreationExtras"

    invoke-static {v5, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lrn;->a:Ljava/util/LinkedHashMap;

    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpn;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v7, v0}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    new-instance v7, Lre;

    invoke-direct {v7, v5}, Lre;-><init>(Lq6;)V

    sget-object v5, LT7;->B:LT7;

    iget-object v8, v7, Lq6;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4
    array-length v5, v0

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v5, :cond_11

    aget-object v9, v0, v8

    iget-object v9, v9, Lqn;->a:Ljava/lang/Class;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    sget-object v1, Lz4;->j:Lz4;

    invoke-virtual {v1, v7}, Lz4;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpn;
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_2

    :cond_10
    add-int/2addr v8, v3

    goto :goto_a

    :cond_11
    if-eqz v1, :cond_13

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpn;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lpn;->a()V

    :cond_12
    move-object v7, v1

    :goto_b
    check-cast v7, Luh;

    return-object v7

    :cond_13
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No initializer set for given class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    check-cast v5, Lcom/omoda/launcher/MainActivity;

    invoke-virtual {v5}, Lcom/omoda/launcher/MainActivity;->K()V

    return-object v2

    :pswitch_4
    check-cast v5, LNb;

    invoke-interface {v5}, LS9;->d()Ljava/lang/Object;

    return-object v2

    :pswitch_5
    check-cast v5, LJa;

    iget-object v0, v5, LJa;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentActivities(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v5, LJa;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    invoke-static {v0}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
