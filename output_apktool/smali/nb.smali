.class public abstract Lnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe;


# static fields
.field public static final a:LL;

.field public static final b:[I

.field public static final c:[Ljava/lang/Object;

.field public static final d:Lp3;

.field public static final e:LL;

.field public static final f:LL;

.field public static final g:LL;

.field public static final h:[Z

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[I

.field public static final q:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1b

    const/4 v2, 0x4

    new-instance v3, LL;

    const-string v4, "NO_DECISION"

    invoke-direct {v3, v1, v4}, LL;-><init>(ILjava/lang/Object;)V

    sput-object v3, Lnb;->a:LL;

    new-array v3, v0, [I

    sput-object v3, Lnb;->b:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnb;->c:[Ljava/lang/Object;

    new-instance v0, Lp3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnb;->d:Lp3;

    new-instance v0, LL;

    const-string v3, "REMOVED_TASK"

    invoke-direct {v0, v1, v3}, LL;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lnb;->e:LL;

    new-instance v0, LL;

    const-string v3, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v3}, LL;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lnb;->f:LL;

    new-instance v0, LL;

    const-string v3, "CONDITION_FALSE"

    invoke-direct {v0, v1, v3}, LL;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lnb;->g:LL;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lnb;->h:[Z

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnb;->i:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnb;->j:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lnb;->k:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lnb;->l:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Lnb;->m:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lnb;->n:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_6

    sput-object v0, Lnb;->o:[B

    const v0, 0x7f030113

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lnb;->p:[I

    const v0, 0x7f03011a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lnb;->q:[I

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static A(Landroid/content/Context;Lt2;I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p1, Lt2;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lfm;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lt2;->g(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lfm;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, LC6;->n(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lb1;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lte;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lnb;->G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, v2}, Lnb;->G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static F(Lb1;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0, p1}, Lnb;->G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lnb;->G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static G(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x100c0280

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "android.support.PARENT_ACTIVITY"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static final H(Le6;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lh6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI0;

    :try_start_0
    invoke-virtual {v1, p0, p1}, LI0;->g(Le6;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p1, v1, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lfm;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ll7;

    invoke-direct {v0, p0}, Ll7;-><init>(Le6;)V

    invoke-static {p1, v0}, Lfm;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static I(ILu5;LD5;Z)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v1, LD5;->m:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    instance-of v3, v1, LE5;

    if-nez v3, :cond_1

    invoke-virtual/range {p2 .. p2}, LD5;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p2 .. p2}, Lnb;->l(LD5;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lp3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v3}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, LD5;->i(I)Lp5;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, LD5;->i(I)Lp5;

    move-result-object v4

    invoke-virtual {v3}, Lp5;->d()I

    move-result v5

    invoke-virtual {v4}, Lp5;->d()I

    move-result v6

    iget-object v7, v3, Lp5;->a:Ljava/util/HashSet;

    const/4 v9, 0x0

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lp5;->c:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp5;

    iget-object v13, v7, Lp5;->d:LD5;

    add-int/lit8 v14, p0, 0x1

    invoke-static {v13}, Lnb;->l(LD5;)Z

    move-result v15

    invoke-virtual {v13}, LD5;->z()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    new-instance v8, Lp3;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v13, v0, v8}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_2
    iget-object v8, v13, LD5;->I:Lp5;

    iget-object v10, v13, LD5;->K:Lp5;

    if-ne v7, v8, :cond_3

    iget-object v11, v10, Lp5;->f:Lp5;

    if-eqz v11, :cond_3

    iget-boolean v11, v11, Lp5;->c:Z

    if-nez v11, :cond_4

    :cond_3
    if-ne v7, v10, :cond_5

    iget-object v11, v8, Lp5;->f:Lp5;

    if-eqz v11, :cond_5

    iget-boolean v11, v11, Lp5;->c:Z

    if-eqz v11, :cond_5

    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    move v11, v9

    :goto_1
    iget-object v12, v13, LD5;->p0:[I

    aget v12, v12, v9

    const/4 v9, 0x3

    if-ne v12, v9, :cond_8

    if-eqz v15, :cond_6

    goto :goto_2

    :cond_6
    if-ne v12, v9, :cond_9

    iget v7, v13, LD5;->v:I

    if-ltz v7, :cond_9

    iget v7, v13, LD5;->u:I

    if-ltz v7, :cond_9

    iget v7, v13, LD5;->g0:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    iget v7, v13, LD5;->r:I

    if-nez v7, :cond_9

    iget v7, v13, LD5;->W:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    :cond_7
    invoke-virtual {v13}, LD5;->x()Z

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v7, v13, LD5;->F:Z

    if-nez v7, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {v13}, LD5;->x()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v14, v1, v0, v13, v2}, Lnb;->g0(ILD5;Lu5;LD5;Z)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v13}, LD5;->z()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    if-ne v7, v8, :cond_b

    iget-object v9, v10, Lp5;->f:Lp5;

    if-nez v9, :cond_b

    invoke-virtual {v8}, Lp5;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v13}, LD5;->q()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v13, v7, v8}, LD5;->J(II)V

    invoke-static {v14, v0, v13, v2}, Lnb;->I(ILu5;LD5;Z)V

    goto :goto_3

    :cond_b
    if-ne v7, v10, :cond_c

    iget-object v7, v8, Lp5;->f:Lp5;

    if-nez v7, :cond_c

    invoke-virtual {v10}, Lp5;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v13}, LD5;->q()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v13, v8, v7}, LD5;->J(II)V

    invoke-static {v14, v0, v13, v2}, Lnb;->I(ILu5;LD5;Z)V

    goto :goto_3

    :cond_c
    if-eqz v11, :cond_9

    invoke-virtual {v13}, LD5;->x()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v14, v0, v13, v2}, Lnb;->f0(ILu5;LD5;Z)V

    goto :goto_3

    :cond_d
    instance-of v3, v1, LAa;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iget-object v3, v4, Lp5;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    iget-boolean v4, v4, Lp5;->c:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp5;

    iget-object v5, v4, Lp5;->d:LD5;

    const/4 v7, 0x1

    add-int/lit8 v8, p0, 0x1

    invoke-static {v5}, Lnb;->l(LD5;)Z

    move-result v7

    invoke-virtual {v5}, LD5;->z()Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v7, :cond_10

    new-instance v9, Lp3;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v9}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_10
    iget-object v9, v5, LD5;->I:Lp5;

    iget-object v10, v5, LD5;->K:Lp5;

    if-ne v4, v9, :cond_11

    iget-object v11, v10, Lp5;->f:Lp5;

    if-eqz v11, :cond_11

    iget-boolean v11, v11, Lp5;->c:Z

    if-nez v11, :cond_12

    :cond_11
    if-ne v4, v10, :cond_13

    iget-object v11, v9, Lp5;->f:Lp5;

    if-eqz v11, :cond_13

    iget-boolean v11, v11, Lp5;->c:Z

    if-eqz v11, :cond_13

    :cond_12
    const/4 v11, 0x1

    goto :goto_5

    :cond_13
    const/4 v11, 0x0

    :goto_5
    iget-object v12, v5, LD5;->p0:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v14, 0x3

    if-ne v12, v14, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    const/16 v7, 0x8

    const/4 v12, 0x0

    goto :goto_8

    :cond_15
    if-ne v12, v14, :cond_18

    iget v4, v5, LD5;->v:I

    if-ltz v4, :cond_18

    iget v4, v5, LD5;->u:I

    if-ltz v4, :cond_18

    iget v4, v5, LD5;->g0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_17

    iget v4, v5, LD5;->r:I

    if-nez v4, :cond_16

    iget v4, v5, LD5;->W:F

    const/4 v12, 0x0

    cmpl-float v4, v4, v12

    if-nez v4, :cond_f

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v12, 0x0

    goto :goto_4

    :cond_17
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v5}, LD5;->x()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, LD5;->F:Z

    if-nez v4, :cond_f

    if-eqz v11, :cond_f

    invoke-virtual {v5}, LD5;->x()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v8, v1, v0, v5, v2}, Lnb;->g0(ILD5;Lu5;LD5;Z)V

    goto/16 :goto_4

    :cond_18
    const/16 v7, 0x8

    goto :goto_6

    :goto_8
    invoke-virtual {v5}, LD5;->z()Z

    move-result v15

    if-eqz v15, :cond_19

    goto/16 :goto_4

    :cond_19
    if-ne v4, v9, :cond_1a

    iget-object v15, v10, Lp5;->f:Lp5;

    if-nez v15, :cond_1a

    invoke-virtual {v9}, Lp5;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, LD5;->q()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v5, v4, v9}, LD5;->J(II)V

    invoke-static {v8, v0, v5, v2}, Lnb;->I(ILu5;LD5;Z)V

    goto/16 :goto_4

    :cond_1a
    if-ne v4, v10, :cond_1b

    iget-object v4, v9, Lp5;->f:Lp5;

    if-nez v4, :cond_1b

    invoke-virtual {v10}, Lp5;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, LD5;->q()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v5, v9, v4}, LD5;->J(II)V

    invoke-static {v8, v0, v5, v2}, Lnb;->I(ILu5;LD5;Z)V

    goto/16 :goto_4

    :cond_1b
    if-eqz v11, :cond_f

    invoke-virtual {v5}, LD5;->x()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v8, v0, v5, v2}, Lnb;->f0(ILu5;LD5;Z)V

    goto/16 :goto_4

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, v1, LD5;->m:Z

    return-void
.end method

.method public static J(Lyb;ZLCb;I)Ly7;
    .locals 7

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    check-cast p0, LHb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    instance-of v0, p2, LAb;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, LAb;

    goto :goto_0

    :cond_2
    move-object v0, p3

    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Lqb;

    invoke-direct {v0, p2}, Lqb;-><init>(LCb;)V

    goto :goto_1

    :cond_3
    move-object v0, p2

    :cond_4
    :goto_1
    iput-object p0, v0, LCb;->d:LHb;

    :cond_5
    :goto_2
    invoke-virtual {p0}, LHb;->y()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lr8;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Lr8;

    iget-boolean v4, v3, Lr8;->a:Z

    if-eqz v4, :cond_8

    sget-object v4, LHb;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v4, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    goto :goto_2

    :cond_8
    new-instance v2, LCe;

    invoke-direct {v2}, LLc;-><init>()V

    iget-boolean v4, v3, Lr8;->a:Z

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_3

    :cond_9
    new-instance v4, LPa;

    invoke-direct {v4, v2}, LPa;-><init>(LCe;)V

    :cond_a
    :goto_3
    sget-object v2, LHb;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_2

    :cond_c
    instance-of v3, v2, LQa;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, LQa;

    invoke-interface {v3}, LQa;->b()LCe;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LCb;

    invoke-virtual {p0, v2}, LHb;->I(LCb;)V

    goto :goto_2

    :cond_d
    sget-object v4, LDe;->a:LDe;

    if-eqz p1, :cond_12

    instance-of v5, v2, LEb;

    if-eqz v5, :cond_12

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, LEb;

    invoke-virtual {v5}, LEb;->d()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    instance-of v6, p2, Lm4;

    if-eqz v6, :cond_11

    move-object v6, v2

    check-cast v6, LEb;

    invoke-virtual {v6}, LEb;->f()Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_e
    :goto_4
    move-object v4, v2

    check-cast v4, LQa;

    invoke-virtual {p0, v4, v3, v0}, LHb;->j(LQa;LCe;LCb;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_f

    monitor-exit v2

    goto/16 :goto_2

    :cond_f
    if-nez v5, :cond_10

    monitor-exit v2

    goto :goto_8

    :cond_10
    move-object v4, v0

    :cond_11
    monitor-exit v2

    goto :goto_6

    :goto_5
    monitor-exit v2

    throw p0

    :cond_12
    move-object v5, p3

    :goto_6
    if-eqz v5, :cond_14

    if-eqz v1, :cond_13

    invoke-interface {p2, v5}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object v0, v4

    goto :goto_8

    :cond_14
    check-cast v2, LQa;

    invoke-virtual {p0, v2, v3, v0}, LHb;->j(LQa;LCe;LCb;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_8

    :cond_15
    if-eqz v1, :cond_18

    instance-of p0, v2, La5;

    if-eqz p0, :cond_16

    check-cast v2, La5;

    goto :goto_7

    :cond_16
    move-object v2, p3

    :goto_7
    if-eqz v2, :cond_17

    iget-object p3, v2, La5;->a:Ljava/lang/Throwable;

    :cond_17
    invoke-interface {p2, p3}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object v0, LDe;->a:LDe;

    :goto_8
    return-object v0
.end method

.method public static K(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_9

    const/16 v0, 0x21

    if-eq p0, v0, :cond_6

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, v0, :cond_1

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_4

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_5

    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p0, v0, :cond_7

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_8

    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_a

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_b

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static M(Lk6;Lg6;Lha;I)LCi;
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    sget-object p1, Lt8;->a:Lt8;

    :cond_0
    invoke-interface {p0}, Lk6;->h()Le6;

    move-result-object p0

    invoke-static {p0, p1, v0}, LC6;->i(Le6;Le6;Z)Le6;

    move-result-object p0

    sget-object p1, Lv7;->a:LT6;

    if-eq p0, p1, :cond_1

    sget-object p3, LT7;->b:LT7;

    invoke-interface {p0, p3}, Le6;->b(Ld6;)Lc6;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-interface {p0, p1}, Le6;->f(Le6;)Le6;

    move-result-object p0

    :cond_1
    new-instance p1, LCi;

    invoke-direct {p1, p0, v0}, Lf;-><init>(Le6;Z)V

    invoke-static {v0}, Lpi;->p(I)I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_5

    const/4 p3, 0x2

    if-eq p0, p3, :cond_3

    const/4 p3, 0x3

    if-ne p0, p3, :cond_2

    :try_start_0
    iget-object p0, p1, Lf;->c:Le6;

    const/4 p3, 0x0

    invoke-static {p0, p3}, Lfm;->P(Le6;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Lfm;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p1, p1}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, p3}, Lfm;->K(Le6;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Ll6;->a:Ll6;

    if-eq p2, p0, :cond_5

    invoke-virtual {p1, p2}, Lf;->c(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p0, p3}, Lfm;->K(Le6;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {p0}, Lgf;->e(Ljava/lang/Throwable;)Ljh;

    move-result-object p0

    invoke-virtual {p1, p0}, Lf;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p1, p1, p2}, LC6;->f(LS5;LS5;Lha;)LS5;

    move-result-object p0

    invoke-static {p0}, LC6;->u(LS5;)LS5;

    move-result-object p0

    sget-object p2, Lsm;->a:Lsm;

    invoke-interface {p0, p2}, LS5;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2, p1, p1}, LC6;->S(Lha;Lf;Lf;)V

    :cond_5
    :goto_1
    return-object p1
.end method

.method public static N(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static varargs Q(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 0

    invoke-static {p0, p1, p3, p4}, Lnb;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {p0 .. p5}, Lnb;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "locales"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, "Storing App Locales : Failed to persist app-locales: "

    const-string v3, "Storing App Locales : app-locales: "

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v6, "UTF-8"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "application_locales"

    invoke-interface {v4, v5, v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " persisted successfully."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    throw p1

    :catch_3
    const-string p0, "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static U(Ljava/io/InputStream;I)[B
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const-string p0, "Not enough bytes to read: "

    invoke-static {p0, p1}, Lpi;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public static V(Ljava/io/FileInputStream;II)[B
    .locals 8

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    new-array v1, p2, [B

    const/16 v2, 0x800

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-nez v6, :cond_1

    if-ge v4, p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v7, p2, v5

    :try_start_1
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v5, v7

    add-int/2addr v4, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v4, p1, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :cond_2
    :try_start_3
    const-string p0, "Inflater did not finish"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    throw p0
.end method

.method public static W(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locales"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "application_locales"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    :try_start_3
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_2

    :catch_1
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_4
    return-object v2

    :goto_5
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    throw p0

    :catch_3
    const-string p0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static X(Ljava/io/InputStream;I)J
    .locals 6

    invoke-static {p0, p1}, Lnb;->U(Ljava/io/InputStream;I)[B

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static Y(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p2, p0}, LB7;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, LF1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static a0(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LQm;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    invoke-static {p0, v2}, LRm;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static b0(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static c0(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p0, p1}, LB7;->g(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static d0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0, p1}, LB7;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static e(LE5;Lnc;Ljava/util/ArrayList;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, LE5;->z0:I

    iget-object v2, v0, LE5;->C0:[LZ3;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, LE5;->A0:I

    iget-object v2, v0, LE5;->B0:[LZ3;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_70

    aget-object v1, v15, v9

    iget-boolean v2, v1, LZ3;->q:Z

    iget-object v8, v1, LZ3;->a:LD5;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/16 v17, 0x0

    if-nez v2, :cond_19

    iget v2, v1, LZ3;->l:I

    mul-int/lit8 v6, v2, 0x2

    move-object v13, v8

    move-object/from16 v20, v13

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_14

    iget v5, v1, LZ3;->i:I

    add-int/2addr v5, v4

    iput v5, v1, LZ3;->i:I

    iget-object v5, v13, LD5;->m0:[LD5;

    aput-object v17, v5, v2

    iget-object v5, v13, LD5;->l0:[LD5;

    aput-object v17, v5, v2

    iget v5, v13, LD5;->g0:I

    iget-object v4, v13, LD5;->Q:[Lp5;

    if-eq v5, v7, :cond_f

    invoke-virtual {v13, v2}, LD5;->j(I)I

    aget-object v5, v4, v6

    invoke-virtual {v5}, Lp5;->e()I

    add-int/lit8 v5, v6, 0x1

    aget-object v23, v4, v5

    invoke-virtual/range {v23 .. v23}, Lp5;->e()I

    aget-object v23, v4, v6

    invoke-virtual/range {v23 .. v23}, Lp5;->e()I

    aget-object v5, v4, v5

    invoke-virtual {v5}, Lp5;->e()I

    iget-object v5, v1, LZ3;->b:LD5;

    if-nez v5, :cond_1

    iput-object v13, v1, LZ3;->b:LD5;

    :cond_1
    iput-object v13, v1, LZ3;->d:LD5;

    iget-object v5, v13, LD5;->p0:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_f

    iget-object v7, v13, LD5;->t:[I

    aget v7, v7, v2

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_3

    if-ne v7, v12, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v25, v9

    goto :goto_5

    :cond_3
    :goto_3
    iget v12, v1, LZ3;->j:I

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, LZ3;->j:I

    iget-object v12, v13, LD5;->k0:[F

    aget v12, v12, v2

    const/16 v21, 0x0

    cmpl-float v24, v12, v21

    if-lez v24, :cond_4

    iget v3, v1, LZ3;->k:F

    add-float/2addr v3, v12

    iput v3, v1, LZ3;->k:F

    :cond_4
    iget v3, v13, LD5;->g0:I

    move/from16 v25, v9

    const/16 v9, 0x8

    if-eq v3, v9, :cond_8

    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    if-eqz v7, :cond_5

    if-ne v7, v3, :cond_8

    :cond_5
    const/4 v3, 0x0

    cmpg-float v5, v12, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, v1, LZ3;->n:Z

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v1, LZ3;->o:Z

    :goto_4
    iget-object v3, v1, LZ3;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, LZ3;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v3, v1, LZ3;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, v1, LZ3;->f:LD5;

    if-nez v3, :cond_9

    iput-object v13, v1, LZ3;->f:LD5;

    :cond_9
    iget-object v3, v1, LZ3;->g:LD5;

    if-eqz v3, :cond_a

    iget-object v3, v3, LD5;->l0:[LD5;

    aput-object v13, v3, v2

    :cond_a
    iput-object v13, v1, LZ3;->g:LD5;

    :goto_5
    if-nez v2, :cond_c

    iget v3, v13, LD5;->r:I

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget v3, v13, LD5;->u:I

    if-nez v3, :cond_e

    iget v3, v13, LD5;->v:I

    goto :goto_6

    :cond_c
    iget v3, v13, LD5;->s:I

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    iget v3, v13, LD5;->x:I

    if-nez v3, :cond_e

    iget v3, v13, LD5;->y:I

    :cond_e
    :goto_6
    move-object/from16 v3, v20

    goto :goto_7

    :cond_f
    move/from16 v25, v9

    goto :goto_6

    :goto_7
    if-eq v3, v13, :cond_10

    iget-object v3, v3, LD5;->m0:[LD5;

    aput-object v13, v3, v2

    :cond_10
    add-int/lit8 v3, v6, 0x1

    aget-object v3, v4, v3

    iget-object v3, v3, Lp5;->f:Lp5;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lp5;->d:LD5;

    iget-object v4, v3, LD5;->Q:[Lp5;

    aget-object v4, v4, v6

    iget-object v4, v4, Lp5;->f:Lp5;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lp5;->d:LD5;

    if-eq v4, v13, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    move-object v3, v13

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v20, v13

    move/from16 v9, v25

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x2

    move-object v13, v3

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_14
    move/from16 v25, v9

    iget-object v3, v1, LZ3;->b:LD5;

    if-eqz v3, :cond_15

    iget-object v3, v3, LD5;->Q:[Lp5;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lp5;->e()I

    :cond_15
    iget-object v3, v1, LZ3;->d:LD5;

    if-eqz v3, :cond_16

    add-int/lit8 v6, v6, 0x1

    iget-object v3, v3, LD5;->Q:[Lp5;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lp5;->e()I

    :cond_16
    iput-object v13, v1, LZ3;->c:LD5;

    if-nez v2, :cond_17

    iget-boolean v2, v1, LZ3;->m:Z

    if-eqz v2, :cond_17

    iput-object v13, v1, LZ3;->e:LD5;

    goto :goto_9

    :cond_17
    iput-object v8, v1, LZ3;->e:LD5;

    :goto_9
    iget-boolean v2, v1, LZ3;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, LZ3;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v1, LZ3;->p:Z

    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    move/from16 v25, v9

    move v2, v4

    :goto_b
    iput-boolean v2, v1, LZ3;->q:Z

    if-eqz v11, :cond_1b

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v23, v25

    const/16 v19, 0x0

    goto/16 :goto_4b

    :cond_1b
    :goto_c
    iget-object v12, v1, LZ3;->c:LD5;

    iget-object v13, v1, LZ3;->b:LD5;

    iget-object v9, v1, LZ3;->d:LD5;

    iget-object v2, v1, LZ3;->e:LD5;

    iget v3, v1, LZ3;->k:F

    iget-object v4, v0, LD5;->p0:[I

    aget v4, v4, p3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    if-nez p3, :cond_20

    iget v5, v2, LD5;->i0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v22, 0x1

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    if-ne v5, v6, :cond_1e

    move/from16 v18, v6

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    :goto_f
    if-ne v5, v7, :cond_1f

    move v5, v6

    goto :goto_10

    :cond_1f
    const/4 v5, 0x0

    :goto_10
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v22

    :goto_11
    const/4 v6, 0x0

    goto :goto_15

    :cond_20
    const/4 v6, 0x1

    iget v5, v2, LD5;->j0:I

    if-nez v5, :cond_21

    move/from16 v18, v6

    goto :goto_12

    :cond_21
    const/16 v18, 0x0

    :goto_12
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, 0x0

    :goto_14
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v18

    move/from16 v18, v6

    goto :goto_11

    :goto_15
    iget-object v3, v0, LD5;->Q:[Lp5;

    if-nez v6, :cond_31

    iget-object v11, v7, LD5;->Q:[Lp5;

    aget-object v11, v11, v16

    if-eqz v5, :cond_24

    const/16 v27, 0x1

    goto :goto_16

    :cond_24
    const/16 v27, 0x4

    :goto_16
    invoke-virtual {v11}, Lp5;->e()I

    move-result v28

    move/from16 v29, v6

    iget-object v6, v7, LD5;->p0:[I

    move/from16 v30, v14

    aget v14, v6, p3

    move-object/from16 v31, v15

    const/4 v15, 0x3

    if-ne v14, v15, :cond_25

    iget-object v14, v7, LD5;->t:[I

    aget v14, v14, p3

    if-nez v14, :cond_25

    const/4 v14, 0x1

    goto :goto_17

    :cond_25
    const/4 v14, 0x0

    :goto_17
    iget-object v15, v11, Lp5;->f:Lp5;

    if-eqz v15, :cond_26

    if-eq v7, v8, :cond_26

    invoke-virtual {v15}, Lp5;->e()I

    move-result v15

    add-int v28, v15, v28

    :cond_26
    move/from16 v15, v28

    if-eqz v5, :cond_27

    if-eq v7, v8, :cond_27

    if-eq v7, v13, :cond_27

    move-object/from16 v28, v2

    const/16 v27, 0x8

    goto :goto_18

    :cond_27
    move-object/from16 v28, v2

    :goto_18
    iget-object v2, v11, Lp5;->f:Lp5;

    if-eqz v2, :cond_2b

    if-ne v7, v13, :cond_28

    move-object/from16 v32, v8

    iget-object v8, v11, Lp5;->i:Lqi;

    iget-object v2, v2, Lp5;->i:Lqi;

    move-object/from16 v33, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v8, v2, v15, v1}, Lnc;->f(Lqi;Lqi;II)V

    goto :goto_19

    :cond_28
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    iget-object v1, v11, Lp5;->i:Lqi;

    iget-object v2, v2, Lp5;->i:Lqi;

    const/16 v8, 0x8

    invoke-virtual {v10, v1, v2, v15, v8}, Lnc;->f(Lqi;Lqi;II)V

    :goto_19
    if-eqz v14, :cond_29

    if-nez v5, :cond_29

    const/16 v27, 0x5

    :cond_29
    if-ne v7, v13, :cond_2a

    if-eqz v5, :cond_2a

    iget-object v1, v7, LD5;->S:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2a

    const/4 v1, 0x5

    goto :goto_1a

    :cond_2a
    move/from16 v1, v27

    :goto_1a
    iget-object v2, v11, Lp5;->i:Lqi;

    iget-object v8, v11, Lp5;->f:Lp5;

    iget-object v8, v8, Lp5;->i:Lqi;

    invoke-virtual {v10, v2, v8, v15, v1}, Lnc;->e(Lqi;Lqi;II)V

    goto :goto_1b

    :cond_2b
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    :goto_1b
    iget-object v1, v7, LD5;->Q:[Lp5;

    if-eqz v4, :cond_2d

    iget v2, v7, LD5;->g0:I

    const/16 v8, 0x8

    if-eq v2, v8, :cond_2c

    aget v2, v6, p3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2c

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, Lp5;->i:Lqi;

    aget-object v6, v1, v16

    iget-object v6, v6, Lp5;->i:Lqi;

    const/4 v8, 0x0

    const/4 v11, 0x5

    invoke-virtual {v10, v2, v6, v8, v11}, Lnc;->f(Lqi;Lqi;II)V

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x0

    :goto_1c
    aget-object v2, v1, v16

    iget-object v2, v2, Lp5;->i:Lqi;

    aget-object v3, v3, v16

    iget-object v3, v3, Lp5;->i:Lqi;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v8, v6}, Lnc;->f(Lqi;Lqi;II)V

    :cond_2d
    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lp5;->f:Lp5;

    if-eqz v1, :cond_2e

    iget-object v1, v1, Lp5;->d:LD5;

    iget-object v2, v1, LD5;->Q:[Lp5;

    aget-object v2, v2, v16

    iget-object v2, v2, Lp5;->f:Lp5;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lp5;->d:LD5;

    if-eq v2, v7, :cond_2f

    :cond_2e
    move-object/from16 v1, v17

    :cond_2f
    if-eqz v1, :cond_30

    move-object v7, v1

    move/from16 v6, v29

    goto :goto_1d

    :cond_30
    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v11, p2

    move-object/from16 v2, v28

    move/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v33

    goto/16 :goto_15

    :cond_31
    move-object/from16 v33, v1

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move/from16 v30, v14

    move-object/from16 v31, v15

    if-eqz v9, :cond_34

    iget-object v1, v12, LD5;->Q:[Lp5;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lp5;->f:Lp5;

    if-eqz v1, :cond_34

    iget-object v1, v9, LD5;->Q:[Lp5;

    aget-object v1, v1, v2

    iget-object v6, v9, LD5;->p0:[I

    aget v6, v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_32

    iget-object v6, v9, LD5;->t:[I

    aget v6, v6, p3

    if-nez v6, :cond_32

    if-nez v5, :cond_32

    iget-object v6, v1, Lp5;->f:Lp5;

    iget-object v7, v6, Lp5;->d:LD5;

    if-ne v7, v0, :cond_32

    iget-object v7, v1, Lp5;->i:Lqi;

    iget-object v6, v6, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    invoke-virtual {v10, v7, v6, v8, v11}, Lnc;->e(Lqi;Lqi;II)V

    goto :goto_1e

    :cond_32
    const/4 v11, 0x5

    if-eqz v5, :cond_33

    iget-object v6, v1, Lp5;->f:Lp5;

    iget-object v7, v6, Lp5;->d:LD5;

    if-ne v7, v0, :cond_33

    iget-object v7, v1, Lp5;->i:Lqi;

    iget-object v6, v6, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    invoke-virtual {v10, v7, v6, v8, v14}, Lnc;->e(Lqi;Lqi;II)V

    :cond_33
    :goto_1e
    iget-object v6, v1, Lp5;->i:Lqi;

    iget-object v7, v12, LD5;->Q:[Lp5;

    aget-object v2, v7, v2

    iget-object v2, v2, Lp5;->f:Lp5;

    iget-object v2, v2, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v7, 0x6

    invoke-virtual {v10, v6, v2, v1, v7}, Lnc;->g(Lqi;Lqi;II)V

    goto :goto_1f

    :cond_34
    const/4 v11, 0x5

    :goto_1f
    if-eqz v4, :cond_35

    add-int/lit8 v1, v16, 0x1

    aget-object v2, v3, v1

    iget-object v2, v2, Lp5;->i:Lqi;

    iget-object v3, v12, LD5;->Q:[Lp5;

    aget-object v1, v3, v1

    iget-object v3, v1, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v3, v1, v4}, Lnc;->f(Lqi;Lqi;II)V

    :cond_35
    move-object/from16 v1, v33

    iget-object v2, v1, LZ3;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    iget-boolean v6, v1, LZ3;->n:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, LZ3;->p:Z

    if-nez v6, :cond_36

    iget v6, v1, LZ3;->j:I

    int-to-float v6, v6

    goto :goto_20

    :cond_36
    move/from16 v6, v26

    :goto_20
    move-object/from16 v14, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v3, :cond_3f

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LD5;

    iget-object v4, v15, LD5;->k0:[F

    aget v4, v4, p3

    const/16 v21, 0x0

    cmpg-float v24, v4, v21

    iget-object v11, v15, LD5;->Q:[Lp5;

    if-gez v24, :cond_38

    iget-boolean v4, v1, LZ3;->p:Z

    if-eqz v4, :cond_37

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Lp5;->i:Lqi;

    aget-object v4, v11, v16

    iget-object v4, v4, Lp5;->i:Lqi;

    const/4 v11, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v0, v4, v11, v15}, Lnc;->e(Lqi;Lqi;II)V

    move/from16 v24, v15

    goto :goto_24

    :cond_37
    const/16 v24, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_22
    const/16 v21, 0x0

    goto :goto_23

    :cond_38
    const/16 v24, 0x4

    goto :goto_22

    :goto_23
    cmpl-float v26, v4, v21

    if-nez v26, :cond_39

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Lp5;->i:Lqi;

    aget-object v4, v11, v16

    iget-object v4, v4, Lp5;->i:Lqi;

    const/4 v11, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v4, v11, v15}, Lnc;->e(Lqi;Lqi;II)V

    :goto_24
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v19, v11

    const/16 v21, 0x0

    goto/16 :goto_29

    :cond_39
    const/16 v19, 0x0

    if-eqz v14, :cond_3e

    iget-object v14, v14, LD5;->Q:[Lp5;

    aget-object v0, v14, v16

    iget-object v0, v0, Lp5;->i:Lqi;

    add-int/lit8 v27, v16, 0x1

    aget-object v14, v14, v27

    iget-object v14, v14, Lp5;->i:Lqi;

    move-object/from16 v29, v2

    aget-object v2, v11, v16

    iget-object v2, v2, Lp5;->i:Lqi;

    aget-object v11, v11, v27

    iget-object v11, v11, Lp5;->i:Lqi;

    move/from16 v27, v3

    invoke-virtual/range {p1 .. p1}, Lnc;->l()LX2;

    move-result-object v3

    move-object/from16 v33, v15

    const/4 v15, 0x0

    iput v15, v3, LX2;->b:F

    cmpl-float v21, v6, v15

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v21, :cond_3a

    cmpl-float v21, v7, v4

    if-nez v21, :cond_3b

    :cond_3a
    move/from16 v26, v4

    move v4, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    goto :goto_26

    :cond_3b
    const/16 v21, 0x0

    cmpl-float v34, v7, v21

    if-nez v34, :cond_3c

    iget-object v2, v3, LX2;->d:LU2;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v7}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v14, v15}, LU2;->g(Lqi;F)V

    :goto_25
    move/from16 v26, v4

    goto :goto_27

    :cond_3c
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v26, :cond_3d

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v2, v15}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v11, v2}, LU2;->g(Lqi;F)V

    goto :goto_25

    :cond_3d
    div-float/2addr v7, v6

    div-float v26, v4, v6

    div-float v7, v7, v26

    move/from16 v26, v4

    iget-object v4, v3, LX2;->d:LU2;

    invoke-virtual {v4, v0, v15}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v14, v4}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v11, v7}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    neg-float v4, v7

    invoke-virtual {v0, v2, v4}, LU2;->g(Lqi;F)V

    goto :goto_27

    :goto_26
    iget-object v7, v3, LX2;->d:LU2;

    invoke-virtual {v7, v0, v15}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v14, v4}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v11, v15}, LU2;->g(Lqi;F)V

    iget-object v0, v3, LX2;->d:LU2;

    invoke-virtual {v0, v2, v4}, LU2;->g(Lqi;F)V

    :goto_27
    invoke-virtual {v10, v3}, Lnc;->c(LX2;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v26, v4

    move-object/from16 v33, v15

    const/16 v21, 0x0

    :goto_28
    move/from16 v7, v26

    move-object/from16 v14, v33

    :goto_29
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v27

    move-object/from16 v2, v29

    const/4 v4, 0x1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_3f
    const/16 v19, 0x0

    const/16 v24, 0x4

    if-eqz v13, :cond_41

    if-eq v13, v9, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move-object/from16 v0, v32

    goto :goto_2a

    :cond_41
    move-object v14, v9

    move/from16 v15, v25

    move-object/from16 v0, v32

    const/4 v11, 0x2

    goto/16 :goto_30

    :goto_2a
    iget-object v0, v0, LD5;->Q:[Lp5;

    aget-object v0, v0, v16

    iget-object v1, v12, LD5;->Q:[Lp5;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Lp5;->f:Lp5;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lp5;->i:Lqi;

    move-object v3, v0

    goto :goto_2b

    :cond_42
    move-object/from16 v3, v17

    :goto_2b
    iget-object v0, v1, Lp5;->f:Lp5;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lp5;->i:Lqi;

    move-object v6, v0

    goto :goto_2c

    :cond_43
    move-object/from16 v6, v17

    :goto_2c
    iget-object v0, v13, LD5;->Q:[Lp5;

    aget-object v0, v0, v16

    if-eqz v9, :cond_44

    iget-object v1, v9, LD5;->Q:[Lp5;

    aget-object v1, v1, v2

    :cond_44
    if-eqz v3, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    move-object/from16 v2, v28

    iget v2, v2, LD5;->d0:F

    :goto_2d
    move v5, v2

    goto :goto_2e

    :cond_45
    move-object/from16 v2, v28

    iget v2, v2, LD5;->e0:F

    goto :goto_2d

    :goto_2e
    invoke-virtual {v0}, Lp5;->e()I

    move-result v4

    invoke-virtual {v1}, Lp5;->e()I

    move-result v8

    iget-object v2, v0, Lp5;->i:Lqi;

    iget-object v7, v1, Lp5;->i:Lqi;

    const/4 v0, 0x7

    move-object/from16 v1, p1

    const/4 v11, 0x2

    move-object v14, v9

    move/from16 v15, v25

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lnc;->b(Lqi;Lqi;IFLqi;Lqi;II)V

    goto :goto_2f

    :cond_46
    move-object v14, v9

    move/from16 v15, v25

    const/4 v11, 0x2

    :cond_47
    :goto_2f
    move/from16 v23, v15

    goto/16 :goto_47

    :goto_30
    if-eqz v20, :cond_58

    if-eqz v13, :cond_58

    iget v2, v1, LZ3;->j:I

    if-lez v2, :cond_48

    iget v1, v1, LZ3;->i:I

    if-ne v1, v2, :cond_48

    const/16 v22, 0x1

    goto :goto_31

    :cond_48
    move/from16 v22, v19

    :goto_31
    move-object v8, v13

    move-object v9, v8

    :goto_32
    if-eqz v9, :cond_47

    iget-object v1, v9, LD5;->m0:[LD5;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_33
    if-eqz v7, :cond_49

    iget v1, v7, LD5;->g0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4a

    iget-object v1, v7, LD5;->m0:[LD5;

    aget-object v7, v1, p3

    goto :goto_33

    :cond_49
    const/16 v6, 0x8

    :cond_4a
    if-nez v7, :cond_4c

    if-ne v9, v14, :cond_4b

    goto :goto_34

    :cond_4b
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v11, v9

    goto/16 :goto_39

    :cond_4c
    :goto_34
    iget-object v1, v9, LD5;->Q:[Lp5;

    aget-object v2, v1, v16

    iget-object v3, v2, Lp5;->i:Lqi;

    iget-object v4, v2, Lp5;->f:Lp5;

    if-eqz v4, :cond_4d

    iget-object v4, v4, Lp5;->i:Lqi;

    goto :goto_35

    :cond_4d
    move-object/from16 v4, v17

    :goto_35
    if-eq v8, v9, :cond_4e

    iget-object v4, v8, LD5;->Q:[Lp5;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lp5;->i:Lqi;

    goto :goto_36

    :cond_4e
    if-ne v9, v13, :cond_50

    iget-object v4, v0, LD5;->Q:[Lp5;

    aget-object v4, v4, v16

    iget-object v4, v4, Lp5;->f:Lp5;

    if-eqz v4, :cond_4f

    iget-object v4, v4, Lp5;->i:Lqi;

    goto :goto_36

    :cond_4f
    move-object/from16 v4, v17

    :cond_50
    :goto_36
    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v21, v1, v5

    invoke-virtual/range {v21 .. v21}, Lp5;->e()I

    move-result v21

    if-eqz v7, :cond_51

    iget-object v6, v7, LD5;->Q:[Lp5;

    aget-object v6, v6, v16

    iget-object v11, v6, Lp5;->i:Lqi;

    goto :goto_37

    :cond_51
    iget-object v6, v12, LD5;->Q:[Lp5;

    aget-object v6, v6, v5

    iget-object v6, v6, Lp5;->f:Lp5;

    if-eqz v6, :cond_52

    iget-object v11, v6, Lp5;->i:Lqi;

    goto :goto_37

    :cond_52
    move-object/from16 v11, v17

    :goto_37
    aget-object v1, v1, v5

    iget-object v1, v1, Lp5;->i:Lqi;

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Lp5;->e()I

    move-result v6

    add-int v21, v6, v21

    :cond_53
    iget-object v6, v8, LD5;->Q:[Lp5;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lp5;->e()I

    move-result v6

    add-int/2addr v6, v2

    if-eqz v3, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v11, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v9, v13, :cond_54

    iget-object v2, v13, LD5;->Q:[Lp5;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    move v6, v2

    :cond_54
    if-ne v9, v14, :cond_55

    iget-object v2, v14, LD5;->Q:[Lp5;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    move/from16 v21, v2

    :cond_55
    if-eqz v22, :cond_56

    const/16 v24, 0x8

    goto :goto_38

    :cond_56
    const/16 v24, 0x5

    :goto_38
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    const/16 v23, 0x8

    move-object v6, v11

    move-object v11, v7

    move-object/from16 v7, v25

    move-object/from16 v23, v8

    move/from16 v8, v21

    move-object/from16 v21, v11

    move-object v11, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lnc;->b(Lqi;Lqi;IFLqi;Lqi;II)V

    :goto_39
    iget v1, v11, LD5;->g0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_57

    move-object v8, v11

    goto :goto_3a

    :cond_57
    move-object/from16 v8, v23

    :goto_3a
    move-object/from16 v9, v21

    const/4 v11, 0x2

    goto/16 :goto_32

    :cond_58
    const/16 v9, 0x8

    if-eqz v18, :cond_47

    if-eqz v13, :cond_47

    iget v2, v1, LZ3;->j:I

    if-lez v2, :cond_59

    iget v1, v1, LZ3;->i:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_3b

    :cond_59
    move/from16 v22, v19

    :goto_3b
    move-object v8, v13

    move-object v11, v8

    :goto_3c
    if-eqz v11, :cond_64

    iget-object v1, v11, LD5;->m0:[LD5;

    aget-object v1, v1, p3

    :goto_3d
    if-eqz v1, :cond_5a

    iget v2, v1, LD5;->g0:I

    if-ne v2, v9, :cond_5a

    iget-object v1, v1, LD5;->m0:[LD5;

    aget-object v1, v1, p3

    goto :goto_3d

    :cond_5a
    if-eq v11, v13, :cond_62

    if-eq v11, v14, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v14, :cond_5b

    move-object/from16 v7, v17

    goto :goto_3e

    :cond_5b
    move-object v7, v1

    :goto_3e
    iget-object v1, v11, LD5;->Q:[Lp5;

    aget-object v2, v1, v16

    iget-object v3, v2, Lp5;->i:Lqi;

    iget-object v4, v8, LD5;->Q:[Lp5;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lp5;->i:Lqi;

    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lp5;->e()I

    move-result v6

    if-eqz v7, :cond_5d

    iget-object v1, v7, LD5;->Q:[Lp5;

    aget-object v1, v1, v16

    iget-object v9, v1, Lp5;->i:Lqi;

    move-object/from16 v21, v7

    iget-object v7, v1, Lp5;->f:Lp5;

    if-eqz v7, :cond_5c

    iget-object v7, v7, Lp5;->i:Lqi;

    goto :goto_40

    :cond_5c
    move-object/from16 v7, v17

    goto :goto_40

    :cond_5d
    move-object/from16 v21, v7

    iget-object v7, v14, LD5;->Q:[Lp5;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5e

    iget-object v9, v7, Lp5;->i:Lqi;

    goto :goto_3f

    :cond_5e
    move-object/from16 v9, v17

    :goto_3f
    aget-object v1, v1, v5

    iget-object v1, v1, Lp5;->i:Lqi;

    move-object/from16 v35, v7

    move-object v7, v1

    move-object/from16 v1, v35

    :goto_40
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v23, v1

    goto :goto_41

    :cond_5f
    move/from16 v23, v6

    :goto_41
    iget-object v1, v8, LD5;->Q:[Lp5;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v22, :cond_60

    const/16 v25, 0x8

    goto :goto_42

    :cond_60
    move/from16 v25, v24

    :goto_42
    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    if-eqz v9, :cond_61

    if-eqz v7, :cond_61

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v26, v8

    move/from16 v8, v23

    move/from16 v23, v15

    const/16 v15, 0x8

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lnc;->b(Lqi;Lqi;IFLqi;Lqi;II)V

    goto :goto_43

    :cond_61
    move-object/from16 v26, v8

    move/from16 v23, v15

    const/16 v15, 0x8

    :goto_43
    move-object/from16 v1, v21

    goto :goto_44

    :cond_62
    move-object/from16 v26, v8

    move/from16 v23, v15

    move v15, v9

    :goto_44
    iget v2, v11, LD5;->g0:I

    if-eq v2, v15, :cond_63

    move-object v8, v11

    goto :goto_45

    :cond_63
    move-object/from16 v8, v26

    :goto_45
    move-object v11, v1

    move v9, v15

    move/from16 v15, v23

    goto/16 :goto_3c

    :cond_64
    move/from16 v23, v15

    iget-object v1, v13, LD5;->Q:[Lp5;

    aget-object v1, v1, v16

    iget-object v0, v0, LD5;->Q:[Lp5;

    aget-object v0, v0, v16

    iget-object v0, v0, Lp5;->f:Lp5;

    iget-object v2, v14, LD5;->Q:[Lp5;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v12, LD5;->Q:[Lp5;

    aget-object v2, v2, v3

    iget-object v15, v2, Lp5;->f:Lp5;

    const/4 v9, 0x5

    if-eqz v0, :cond_65

    if-eq v13, v14, :cond_66

    iget-object v2, v1, Lp5;->i:Lqi;

    iget-object v0, v0, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    invoke-virtual {v10, v2, v0, v1, v9}, Lnc;->e(Lqi;Lqi;II)V

    :cond_65
    move v0, v9

    goto :goto_46

    :cond_66
    if-eqz v15, :cond_65

    iget-object v2, v1, Lp5;->i:Lqi;

    iget-object v3, v0, Lp5;->i:Lqi;

    invoke-virtual {v1}, Lp5;->e()I

    move-result v4

    iget-object v6, v11, Lp5;->i:Lqi;

    iget-object v7, v15, Lp5;->i:Lqi;

    invoke-virtual {v11}, Lp5;->e()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v0, v9

    invoke-virtual/range {v1 .. v9}, Lnc;->b(Lqi;Lqi;IFLqi;Lqi;II)V

    :goto_46
    if-eqz v15, :cond_67

    if-eq v13, v14, :cond_67

    iget-object v1, v11, Lp5;->i:Lqi;

    iget-object v2, v15, Lp5;->i:Lqi;

    invoke-virtual {v11}, Lp5;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v1, v2, v3, v0}, Lnc;->e(Lqi;Lqi;II)V

    :cond_67
    :goto_47
    if-nez v20, :cond_68

    if-eqz v18, :cond_6f

    :cond_68
    if-eqz v13, :cond_6f

    if-eq v13, v14, :cond_6f

    iget-object v0, v13, LD5;->Q:[Lp5;

    aget-object v1, v0, v16

    if-nez v14, :cond_69

    move-object v9, v13

    goto :goto_48

    :cond_69
    move-object v9, v14

    :goto_48
    add-int/lit8 v2, v16, 0x1

    iget-object v3, v9, LD5;->Q:[Lp5;

    aget-object v4, v3, v2

    iget-object v5, v1, Lp5;->f:Lp5;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Lp5;->i:Lqi;

    goto :goto_49

    :cond_6a
    move-object/from16 v5, v17

    :goto_49
    iget-object v6, v4, Lp5;->f:Lp5;

    if-eqz v6, :cond_6b

    iget-object v6, v6, Lp5;->i:Lqi;

    goto :goto_4a

    :cond_6b
    move-object/from16 v6, v17

    :goto_4a
    if-eq v12, v9, :cond_6d

    iget-object v6, v12, LD5;->Q:[Lp5;

    aget-object v6, v6, v2

    iget-object v6, v6, Lp5;->f:Lp5;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Lp5;->i:Lqi;

    move-object/from16 v17, v6

    :cond_6c
    move-object/from16 v6, v17

    :cond_6d
    if-ne v13, v9, :cond_6e

    aget-object v4, v0, v2

    :cond_6e
    if-eqz v5, :cond_6f

    if-eqz v6, :cond_6f

    invoke-virtual {v1}, Lp5;->e()I

    move-result v0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lp5;->e()I

    move-result v8

    iget-object v2, v1, Lp5;->i:Lqi;

    iget-object v7, v4, Lp5;->i:Lqi;

    const/4 v9, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v9}, Lnc;->b(Lqi;Lqi;IFLqi;Lqi;II)V

    :cond_6f
    :goto_4b
    add-int/lit8 v9, v23, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_70
    return-void
.end method

.method public static e0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0, p1}, LB7;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static f(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, LB7;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, LB7;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {v0, p3}, LB7;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eq p0, v0, :cond_2

    invoke-virtual {p1, v0}, LF1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static f0(ILu5;LD5;Z)V
    .locals 6

    iget v0, p2, LD5;->d0:F

    iget-object v1, p2, LD5;->I:Lp5;

    iget-object v2, v1, Lp5;->f:Lp5;

    invoke-virtual {v2}, Lp5;->d()I

    move-result v2

    iget-object v3, p2, LD5;->K:Lp5;

    iget-object v4, v3, Lp5;->f:Lp5;

    invoke-virtual {v4}, Lp5;->d()I

    move-result v4

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lp5;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, LD5;->q()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    goto :goto_1

    :goto_2
    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_3

    sub-int v3, v0, v1

    :cond_3
    invoke-virtual {p2, v0, v3}, LD5;->J(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lnb;->I(ILu5;LD5;Z)V

    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static g0(ILD5;Lu5;LD5;Z)V
    .locals 7

    iget v0, p3, LD5;->d0:F

    iget-object v1, p3, LD5;->I:Lp5;

    iget-object v2, v1, Lp5;->f:Lp5;

    invoke-virtual {v2}, Lp5;->d()I

    move-result v2

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, LD5;->K:Lp5;

    iget-object v3, v2, Lp5;->f:Lp5;

    invoke-virtual {v3}, Lp5;->d()I

    move-result v3

    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, LD5;->q()I

    move-result v2

    iget v4, p3, LD5;->g0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, LD5;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, LE5;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, LD5;->q()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, LD5;->T:LD5;

    invoke-virtual {p1}, LD5;->q()I

    move-result p1

    :goto_0
    iget v2, p3, LD5;->d0:F

    mul-float/2addr v2, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, LD5;->u:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, LD5;->v:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, LD5;->J(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3, p4}, Lnb;->I(ILu5;LD5;Z)V

    :cond_4
    return-void
.end method

.method public static h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    invoke-static {p0, p1, p2}, Lnb;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-static {p0, p1, p3}, Lnb;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-ne p0, v1, :cond_1

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_b

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_b

    goto :goto_0

    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_b

    goto :goto_0

    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_b

    :goto_0
    if-eq p0, v5, :cond_b

    if-ne p0, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p0, p1, p2}, Lnb;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_9

    if-eq p0, v3, :cond_8

    if-eq p0, v4, :cond_7

    if-ne p0, v1, :cond_6

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    sub-int/2addr p0, p1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :goto_2
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_a

    move v2, v6

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v6

    :cond_c
    :goto_4
    return v2
.end method

.method public static h0(ILu5;LD5;)V
    .locals 6

    iget v0, p2, LD5;->e0:F

    iget-object v1, p2, LD5;->J:Lp5;

    iget-object v2, v1, Lp5;->f:Lp5;

    invoke-virtual {v2}, Lp5;->d()I

    move-result v2

    iget-object v3, p2, LD5;->L:Lp5;

    iget-object v4, v3, Lp5;->f:Lp5;

    invoke-virtual {v4}, Lp5;->d()I

    move-result v4

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lp5;->e()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, LD5;->k()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    goto :goto_1

    :goto_2
    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_3

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_3
    invoke-virtual {p2, v3, v5}, LD5;->K(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lnb;->k0(ILu5;LD5;)V

    return-void
.end method

.method public static i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static i0(ILD5;Lu5;LD5;)V
    .locals 7

    iget v0, p3, LD5;->e0:F

    iget-object v1, p3, LD5;->J:Lp5;

    iget-object v2, v1, Lp5;->f:Lp5;

    invoke-virtual {v2}, Lp5;->d()I

    move-result v2

    invoke-virtual {v1}, Lp5;->e()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, LD5;->L:Lp5;

    iget-object v3, v2, Lp5;->f:Lp5;

    invoke-virtual {v3}, Lp5;->d()I

    move-result v3

    invoke-virtual {v2}, Lp5;->e()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, LD5;->k()I

    move-result v2

    iget v4, p3, LD5;->g0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, LD5;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, LE5;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, LD5;->k()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, LD5;->T:LD5;

    invoke-virtual {p1}, LD5;->k()I

    move-result p1

    :goto_0
    mul-float v2, v0, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, LD5;->x:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, LD5;->y:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, LD5;->K(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3}, Lnb;->k0(ILu5;LD5;)V

    :cond_4
    return-void
.end method

.method public static j(II[I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_2

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p2, v1

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static j0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lateinit property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not been initialized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lc5;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-class p0, Lnb;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnb;->Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0
.end method

.method public static k([JIJ)I
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static k0(ILu5;LD5;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v1, LD5;->n:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    instance-of v2, v1, LE5;

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, LD5;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p2 .. p2}, Lnb;->l(LD5;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lp3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v2}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, LD5;->i(I)Lp5;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, LD5;->i(I)Lp5;

    move-result-object v4

    invoke-virtual {v3}, Lp5;->d()I

    move-result v5

    invoke-virtual {v4}, Lp5;->d()I

    move-result v6

    iget-object v7, v3, Lp5;->a:Ljava/util/HashSet;

    const/4 v8, 0x1

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lp5;->c:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp5;

    iget-object v12, v7, Lp5;->d:LD5;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lnb;->l(LD5;)Z

    move-result v14

    invoke-virtual {v12}, LD5;->z()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    new-instance v15, Lp3;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-static {v12, v0, v15}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_3
    iget-object v15, v12, LD5;->J:Lp5;

    iget-object v9, v12, LD5;->L:Lp5;

    if-ne v7, v15, :cond_4

    iget-object v10, v9, Lp5;->f:Lp5;

    if-eqz v10, :cond_4

    iget-boolean v10, v10, Lp5;->c:Z

    if-nez v10, :cond_5

    :cond_4
    if-ne v7, v9, :cond_6

    iget-object v10, v15, Lp5;->f:Lp5;

    if-eqz v10, :cond_6

    iget-boolean v10, v10, Lp5;->c:Z

    if-eqz v10, :cond_6

    :cond_5
    move v10, v8

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    iget-object v11, v12, LD5;->p0:[I

    aget v11, v11, v8

    if-ne v11, v2, :cond_9

    if-eqz v14, :cond_7

    goto :goto_2

    :cond_7
    if-ne v11, v2, :cond_2

    iget v7, v12, LD5;->y:I

    if-ltz v7, :cond_2

    iget v7, v12, LD5;->x:I

    if-ltz v7, :cond_2

    iget v7, v12, LD5;->g0:I

    const/16 v9, 0x8

    if-eq v7, v9, :cond_8

    iget v7, v12, LD5;->s:I

    if-nez v7, :cond_2

    iget v7, v12, LD5;->W:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_2

    :cond_8
    invoke-virtual {v12}, LD5;->y()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v12, LD5;->F:Z

    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v12}, LD5;->y()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v1, v0, v12}, Lnb;->i0(ILD5;Lu5;LD5;)V

    goto :goto_0

    :cond_9
    :goto_2
    invoke-virtual {v12}, LD5;->z()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_0

    :cond_a
    if-ne v7, v15, :cond_b

    iget-object v11, v9, Lp5;->f:Lp5;

    if-nez v11, :cond_b

    invoke-virtual {v15}, Lp5;->e()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, LD5;->k()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v12, v7, v9}, LD5;->K(II)V

    invoke-static {v13, v0, v12}, Lnb;->k0(ILu5;LD5;)V

    goto/16 :goto_0

    :cond_b
    if-ne v7, v9, :cond_c

    iget-object v7, v15, Lp5;->f:Lp5;

    if-nez v7, :cond_c

    invoke-virtual {v9}, Lp5;->e()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, LD5;->k()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v12, v9, v7}, LD5;->K(II)V

    invoke-static {v13, v0, v12}, Lnb;->k0(ILu5;LD5;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v10, :cond_2

    invoke-virtual {v12}, LD5;->y()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v0, v12}, Lnb;->h0(ILu5;LD5;)V

    goto/16 :goto_0

    :cond_d
    instance-of v3, v1, LAa;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iget-object v3, v4, Lp5;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    iget-boolean v4, v4, Lp5;->c:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp5;

    iget-object v5, v4, Lp5;->d:LD5;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v5}, Lnb;->l(LD5;)Z

    move-result v9

    invoke-virtual {v5}, LD5;->z()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v9, :cond_10

    new-instance v10, Lp3;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v10}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_10
    iget-object v10, v5, LD5;->J:Lp5;

    iget-object v11, v5, LD5;->L:Lp5;

    if-ne v4, v10, :cond_11

    iget-object v12, v11, Lp5;->f:Lp5;

    if-eqz v12, :cond_11

    iget-boolean v12, v12, Lp5;->c:Z

    if-nez v12, :cond_12

    :cond_11
    if-ne v4, v11, :cond_13

    iget-object v12, v10, Lp5;->f:Lp5;

    if-eqz v12, :cond_13

    iget-boolean v12, v12, Lp5;->c:Z

    if-eqz v12, :cond_13

    :cond_12
    move v12, v8

    goto :goto_4

    :cond_13
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v5, LD5;->p0:[I

    aget v13, v13, v8

    if-ne v13, v2, :cond_14

    if-eqz v9, :cond_15

    :cond_14
    const/16 v9, 0x8

    const/4 v13, 0x0

    goto :goto_7

    :cond_15
    if-ne v13, v2, :cond_18

    iget v4, v5, LD5;->y:I

    if-ltz v4, :cond_18

    iget v4, v5, LD5;->x:I

    if-ltz v4, :cond_18

    iget v4, v5, LD5;->g0:I

    const/16 v9, 0x8

    if-eq v4, v9, :cond_17

    iget v4, v5, LD5;->s:I

    if-nez v4, :cond_16

    iget v4, v5, LD5;->W:F

    const/4 v13, 0x0

    cmpl-float v4, v4, v13

    if-nez v4, :cond_f

    goto :goto_6

    :cond_16
    :goto_5
    const/4 v13, 0x0

    goto :goto_3

    :cond_17
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v5}, LD5;->y()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, LD5;->F:Z

    if-nez v4, :cond_f

    if-eqz v12, :cond_f

    invoke-virtual {v5}, LD5;->y()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v1, v0, v5}, Lnb;->i0(ILD5;Lu5;LD5;)V

    goto :goto_3

    :cond_18
    const/16 v9, 0x8

    goto :goto_5

    :goto_7
    invoke-virtual {v5}, LD5;->z()Z

    move-result v14

    if-eqz v14, :cond_19

    goto/16 :goto_3

    :cond_19
    if-ne v4, v10, :cond_1a

    iget-object v14, v11, Lp5;->f:Lp5;

    if-nez v14, :cond_1a

    invoke-virtual {v10}, Lp5;->e()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, LD5;->k()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v5, v4, v10}, LD5;->K(II)V

    invoke-static {v7, v0, v5}, Lnb;->k0(ILu5;LD5;)V

    goto/16 :goto_3

    :cond_1a
    if-ne v4, v11, :cond_1b

    iget-object v4, v10, Lp5;->f:Lp5;

    if-nez v4, :cond_1b

    invoke-virtual {v11}, Lp5;->e()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, LD5;->k()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {v5, v10, v4}, LD5;->K(II)V

    invoke-static {v7, v0, v5}, Lnb;->k0(ILu5;LD5;)V

    goto/16 :goto_3

    :cond_1b
    if-eqz v12, :cond_f

    invoke-virtual {v5}, LD5;->y()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v0, v5}, Lnb;->h0(ILu5;LD5;)V

    goto/16 :goto_3

    :cond_1c
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, LD5;->i(I)Lp5;

    move-result-object v3

    iget-object v4, v3, Lp5;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_22

    iget-boolean v4, v3, Lp5;->c:Z

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Lp5;->d()I

    move-result v4

    iget-object v3, v3, Lp5;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp5;

    iget-object v6, v5, Lp5;->d:LD5;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6}, Lnb;->l(LD5;)Z

    move-result v9

    invoke-virtual {v6}, LD5;->z()Z

    move-result v10

    if-eqz v10, :cond_1e

    if-eqz v9, :cond_1e

    new-instance v10, Lp3;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v0, v10}, LE5;->V(LD5;Lu5;Lp3;)V

    :cond_1e
    iget-object v10, v6, LD5;->p0:[I

    aget v10, v10, v8

    if-ne v10, v2, :cond_1f

    if-eqz v9, :cond_1d

    :cond_1f
    invoke-virtual {v6}, LD5;->z()Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_8

    :cond_20
    iget-object v9, v6, LD5;->M:Lp5;

    if-ne v5, v9, :cond_1d

    invoke-virtual {v5}, Lp5;->e()I

    move-result v5

    add-int/2addr v5, v4

    iget-boolean v10, v6, LD5;->E:Z

    if-nez v10, :cond_21

    goto :goto_9

    :cond_21
    iget v10, v6, LD5;->a0:I

    sub-int v10, v5, v10

    iget v11, v6, LD5;->V:I

    add-int/2addr v11, v10

    iput v10, v6, LD5;->Z:I

    iget-object v12, v6, LD5;->J:Lp5;

    invoke-virtual {v12, v10}, Lp5;->l(I)V

    iget-object v10, v6, LD5;->L:Lp5;

    invoke-virtual {v10, v11}, Lp5;->l(I)V

    invoke-virtual {v9, v5}, Lp5;->l(I)V

    iput-boolean v8, v6, LD5;->l:Z

    :goto_9
    invoke-static {v7, v0, v6}, Lnb;->k0(ILu5;LD5;)V

    goto :goto_8

    :cond_22
    iput-boolean v8, v1, LD5;->n:Z

    return-void
.end method

.method public static l(LD5;)Z
    .locals 8

    iget-object v0, p0, LD5;->p0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, LD5;->T:LD5;

    if-eqz v4, :cond_0

    check-cast v4, LE5;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, LD5;->p0:[I

    aget v5, v5, v1

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, LD5;->p0:[I

    aget v4, v4, v3

    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, LD5;->A()Z

    move-result v7

    if-nez v7, :cond_5

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_3

    iget v7, p0, LD5;->r:I

    if-nez v7, :cond_3

    iget v7, p0, LD5;->W:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_3

    invoke-virtual {p0, v1}, LD5;->t(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-ne v2, v4, :cond_4

    iget v2, p0, LD5;->r:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, LD5;->q()I

    move-result v2

    invoke-virtual {p0, v1, v2}, LD5;->u(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v3, :cond_8

    invoke-virtual {p0}, LD5;->B()Z

    move-result v7

    if-nez v7, :cond_8

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_6

    iget v5, p0, LD5;->s:I

    if-nez v5, :cond_6

    iget v5, p0, LD5;->W:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    invoke-virtual {p0, v3}, LD5;->t(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    if-ne v0, v4, :cond_7

    iget v0, p0, LD5;->s:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, LD5;->k()I

    move-result v0

    invoke-virtual {p0, v3, v0}, LD5;->u(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, LD5;->W:F

    cmpl-float p0, p0, v6

    if-lez p0, :cond_a

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public static final l0(Lg6;Lha;LS5;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p2}, LS5;->i()Le6;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, LV4;->f:LV4;

    invoke-virtual {p0, v1, v2}, Lg;->e(Ljava/lang/Object;Lha;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Le6;->f(Le6;)Le6;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, LC6;->i(Le6;Le6;Z)Le6;

    move-result-object p0

    :goto_0
    sget-object v1, LT7;->f:LT7;

    invoke-interface {p0, v1}, Le6;->b(Ld6;)Lc6;

    move-result-object v1

    check-cast v1, Lyb;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lyb;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, LHb;

    invoke-virtual {v1}, LHb;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    if-ne p0, v0, :cond_3

    new-instance v0, LAh;

    invoke-direct {v0, p2, p0}, LAh;-><init>(LS5;Le6;)V

    invoke-static {v0, v0, p1}, Lgf;->s(LAh;LAh;Lha;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    sget-object v1, LT7;->b:LT7;

    invoke-interface {p0, v1}, Le6;->b(Ld6;)Lc6;

    move-result-object v3

    invoke-interface {v0, v1}, Le6;->b(Ld6;)Lc6;

    move-result-object v0

    invoke-static {v3, v0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Lnm;

    invoke-direct {v0, p2, p0}, Lnm;-><init>(LS5;Le6;)V

    iget-object p0, v0, Lf;->c:Le6;

    invoke-static {p0, v1}, Lfm;->P(Le6;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    invoke-static {v0, v0, p1}, Lgf;->s(LAh;LAh;Lha;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lfm;->K(Le6;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lfm;->K(Le6;Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance v0, Lt7;

    invoke-direct {v0, p2, p0}, LAh;-><init>(LS5;Le6;)V

    invoke-static {p1, v0, v0}, LC6;->S(Lha;Lf;Lf;)V

    :cond_5
    sget-object p0, Lt7;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_b

    const/4 p0, 0x2

    if-ne p1, p0, :cond_a

    invoke-virtual {v0}, LHb;->y()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LRa;

    if-eqz p1, :cond_6

    move-object v1, p0

    check-cast v1, LRa;

    :cond_6
    if-eqz v1, :cond_8

    iget-object p1, v1, LRa;->a:LQa;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object p0, p1

    :cond_8
    :goto_2
    instance-of p1, p0, La5;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    check-cast p0, La5;

    iget-object p0, p0, La5;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Ll6;->a:Ll6;

    :goto_3
    return-object p0
.end method

.method public static m(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, LYf;->B:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f030241

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lnb;->q:[I

    const-string p2, "Theme.MaterialComponents"

    invoke-static {p0, p1, p2}, Lnb;->u(Landroid/content/Context;[ILjava/lang/String;)V

    :cond_1
    sget-object p1, Lnb;->p:[I

    const-string p2, "Theme.AppCompat"

    invoke-static {p0, p1, p2}, Lnb;->u(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method public static m0(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 6

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    mul-int/lit8 v2, v1, 0x8

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static n(LE5;Lnc;LD5;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p2, LD5;->o:I

    iput v0, p2, LD5;->p:I

    iget-object v0, p0, LD5;->p0:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p2, LD5;->p0:[I

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v0, v3, :cond_0

    aget v0, v2, v1

    if-ne v0, v4, :cond_0

    iget-object v0, p2, LD5;->I:Lp5;

    iget v1, v0, Lp5;->g:I

    invoke-virtual {p0}, LD5;->q()I

    move-result v5

    iget-object v6, p2, LD5;->K:Lp5;

    iget v7, v6, Lp5;->g:I

    sub-int/2addr v5, v7

    invoke-virtual {p1, v0}, Lnc;->k(Ljava/lang/Object;)Lqi;

    move-result-object v7

    iput-object v7, v0, Lp5;->i:Lqi;

    invoke-virtual {p1, v6}, Lnc;->k(Ljava/lang/Object;)Lqi;

    move-result-object v7

    iput-object v7, v6, Lp5;->i:Lqi;

    iget-object v0, v0, Lp5;->i:Lqi;

    invoke-virtual {p1, v0, v1}, Lnc;->d(Lqi;I)V

    iget-object v0, v6, Lp5;->i:Lqi;

    invoke-virtual {p1, v0, v5}, Lnc;->d(Lqi;I)V

    iput v3, p2, LD5;->o:I

    iput v1, p2, LD5;->Y:I

    sub-int/2addr v5, v1

    iput v5, p2, LD5;->U:I

    iget v0, p2, LD5;->b0:I

    if-ge v5, v0, :cond_0

    iput v0, p2, LD5;->U:I

    :cond_0
    iget-object v0, p0, LD5;->p0:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    aget v0, v2, v1

    if-ne v0, v4, :cond_3

    iget-object v0, p2, LD5;->J:Lp5;

    iget v1, v0, Lp5;->g:I

    invoke-virtual {p0}, LD5;->k()I

    move-result p0

    iget-object v2, p2, LD5;->L:Lp5;

    iget v4, v2, Lp5;->g:I

    sub-int/2addr p0, v4

    invoke-virtual {p1, v0}, Lnc;->k(Ljava/lang/Object;)Lqi;

    move-result-object v4

    iput-object v4, v0, Lp5;->i:Lqi;

    invoke-virtual {p1, v2}, Lnc;->k(Ljava/lang/Object;)Lqi;

    move-result-object v4

    iput-object v4, v2, Lp5;->i:Lqi;

    iget-object v0, v0, Lp5;->i:Lqi;

    invoke-virtual {p1, v0, v1}, Lnc;->d(Lqi;I)V

    iget-object v0, v2, Lp5;->i:Lqi;

    invoke-virtual {p1, v0, p0}, Lnc;->d(Lqi;I)V

    iget v0, p2, LD5;->a0:I

    if-gtz v0, :cond_1

    iget v0, p2, LD5;->g0:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p2, LD5;->M:Lp5;

    invoke-virtual {p1, v0}, Lnc;->k(Ljava/lang/Object;)Lqi;

    move-result-object v2

    iput-object v2, v0, Lp5;->i:Lqi;

    iget v0, p2, LD5;->a0:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Lnc;->d(Lqi;I)V

    :cond_2
    iput v3, p2, LD5;->p:I

    iput v1, p2, LD5;->Z:I

    sub-int/2addr p0, v1

    iput p0, p2, LD5;->V:I

    iget p1, p2, LD5;->c0:I

    if-ge p0, p1, :cond_3

    iput p1, p2, LD5;->V:I

    :cond_3
    return-void
.end method

.method public static n0(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1}, Lnb;->m0(Ljava/io/ByteArrayOutputStream;JI)V

    return-void
.end method

.method public static o(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v0, Lnb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnb;->Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lnb;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnb;->Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lnb;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnb;->Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Lnb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parameter specified as non-null is null: method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parameter "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnb;->Z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static s(III)V
    .locals 3

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > toIndex: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", toIndex: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs t(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 5

    sget-object v0, LYf;->B:[I

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    array-length v1, p5

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, v4, :cond_4

    :goto_0
    move v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    array-length p1, p5

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_3

    aget p3, p5, p2

    invoke-virtual {p0, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-ne p3, v4, :cond_2

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The style on this component requires your app theme to be "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static v(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static w([B)[B
    .locals 3

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    throw p0
.end method

.method public static x(I)Landroid/widget/ImageView$ScaleType;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public static y(Landroid/content/Context;)Lh9;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Package manager required to locate emoji font provider"

    invoke-static {v0, v1}, Lff;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    move-object v2, v4

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lf9;

    const-string v5, "emojicompat-emoji-font"

    invoke-direct {v2, v1, v3, v5, v0}, Lf9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "emoji2.text.DefaultEmojiConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v4, Lh9;

    new-instance v0, Lg9;

    invoke-direct {v0, p0, v2}, Lg9;-><init>(Landroid/content/Context;Lf9;)V

    invoke-direct {v4, v0}, LY7;-><init>(La8;)V

    :goto_4
    return-object v4
.end method

.method public static final z(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract C(Lei;FF)V
.end method

.method public abstract R(I)Landroid/view/View;
.end method

.method public abstract S()Z
.end method
