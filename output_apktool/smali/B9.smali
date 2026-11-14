.class public final LB9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:LJ9;


# direct methods
.method public constructor <init>(LJ9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB9;->a:LJ9;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2
    const-class v4, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Fragment "

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v0, LB9;->a:LJ9;

    if-eqz v4, :cond_13

    .line 3
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    .line 4
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-boolean v9, v0, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 6
    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v4, LWf;->b:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_0
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 12
    invoke-virtual {v10, v3}, LJ9;->z(I)Lx9;

    move-result-object v7

    if-eqz v1, :cond_10

    if-nez v7, :cond_10

    .line 13
    const-string v7, " with tag "

    if-gtz v3, :cond_2

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, ""

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FragmentContainerView must have an android:id to add Fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_2
    invoke-virtual {v10}, LJ9;->B()LE9;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1}, LE9;->a(Ljava/lang/String;)Lx9;

    move-result-object v1

    .line 18
    iput-boolean v9, v1, Lx9;->C:Z

    .line 19
    iget-object v2, v1, Lx9;->s:Ly9;

    if-nez v2, :cond_3

    move-object v2, v8

    goto :goto_1

    :cond_3
    iget-object v2, v2, Ly9;->r:Lb1;

    :goto_1
    if-eqz v2, :cond_4

    .line 20
    iput-boolean v9, v1, Lx9;->C:Z

    .line 21
    :cond_4
    new-instance v2, Lf3;

    invoke-direct {v2, v10}, Lf3;-><init>(LJ9;)V

    .line 22
    iput-boolean v9, v2, Lf3;->o:Z

    .line 23
    iput-object v0, v1, Lx9;->D:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 26
    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    .line 27
    invoke-virtual {v11}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 28
    invoke-virtual {v11}, Ljava/lang/Class;->isMemberClass()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 29
    :cond_5
    const-string v5, " now "

    const-string v11, ": was "

    if-eqz v4, :cond_8

    .line 30
    iget-object v12, v1, Lx9;->x:Ljava/lang/String;

    if-eqz v12, :cond_7

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    .line 31
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change tag of fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lx9;->x:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_7
    :goto_2
    iput-object v4, v1, Lx9;->x:Ljava/lang/String;

    :cond_8
    if-eqz v3, :cond_c

    if-eq v3, v6, :cond_b

    .line 33
    iget v4, v1, Lx9;->v:I

    if-eqz v4, :cond_a

    if-ne v4, v3, :cond_9

    goto :goto_3

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t change container ID of fragment "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lx9;->v:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    :goto_3
    iput v3, v1, Lx9;->v:I

    iput v3, v1, Lx9;->w:I

    goto :goto_4

    .line 36
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t add fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to container view with no id"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_c
    :goto_4
    new-instance v3, LO9;

    invoke-direct {v3, v9, v1}, LO9;-><init>(ILx9;)V

    invoke-virtual {v2, v3}, Lf3;->b(LO9;)V

    .line 38
    iget-object v3, v2, Lf3;->p:LJ9;

    iput-object v3, v1, Lx9;->r:LJ9;

    .line 39
    iget-boolean v1, v2, Lf3;->g:Z

    if-nez v1, :cond_e

    .line 40
    iget-object v1, v3, LJ9;->n:Ly9;

    if-eqz v1, :cond_10

    .line 41
    iget-boolean v1, v3, LJ9;->A:Z

    if-eqz v1, :cond_d

    goto :goto_5

    .line 42
    :cond_d
    invoke-virtual {v3, v9}, LJ9;->w(Z)V

    .line 43
    iget-object v1, v3, LJ9;->C:Ljava/util/ArrayList;

    iget-object v4, v3, LJ9;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v4}, Lf3;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 44
    iput-boolean v9, v3, LJ9;->b:Z

    .line 45
    :try_start_0
    iget-object v1, v3, LJ9;->C:Ljava/util/ArrayList;

    iget-object v2, v3, LJ9;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, LJ9;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v3}, LJ9;->d()V

    .line 47
    invoke-virtual {v3}, LJ9;->W()V

    .line 48
    invoke-virtual {v3}, LJ9;->t()V

    .line 49
    iget-object v1, v3, LJ9;->c:Lt2;

    iget-object v1, v1, Lt2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 50
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v3}, LJ9;->d()V

    .line 52
    throw v0

    .line 53
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_10
    :goto_5
    iget-object v1, v10, LJ9;->c:Lt2;

    invoke-virtual {v1}, Lt2;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 56
    iget-object v3, v2, Landroidx/fragment/app/a;->c:Lx9;

    .line 57
    iget v4, v3, Lx9;->w:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_11

    iget-object v4, v3, Lx9;->E:Landroid/view/View;

    if-eqz v4, :cond_11

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_11

    .line 59
    iput-object v0, v3, Lx9;->D:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {v2}, Landroidx/fragment/app/a;->b()V

    goto :goto_6

    :cond_12
    return-object v0

    .line 61
    :cond_13
    const-string v4, "fragment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v8

    .line 62
    :cond_14
    const-string v1, "class"

    invoke-interface {v3, v8, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v4, LWf;->a:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v1, :cond_15

    .line 64
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_15
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/4 v12, 0x2

    .line 66
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 67
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_16

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 69
    :try_start_1
    invoke-static {v4, v1}, LE9;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 70
    const-class v14, Lx9;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move v4, v7

    :goto_7
    if-nez v4, :cond_17

    :cond_16
    move-object v0, v8

    goto/16 :goto_11

    :cond_17
    if-eqz p1, :cond_18

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    :cond_18
    if-ne v7, v6, :cond_1a

    if-ne v11, v6, :cond_1a

    if-eqz v13, :cond_19

    goto :goto_8

    .line 72
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_8
    if-eq v11, v6, :cond_1b

    .line 73
    invoke-virtual {v10, v11}, LJ9;->z(I)Lx9;

    move-result-object v4

    goto :goto_9

    :cond_1b
    move-object v4, v8

    :goto_9
    if-nez v4, :cond_20

    if-eqz v13, :cond_20

    .line 74
    iget-object v4, v10, LJ9;->c:Lt2;

    .line 75
    iget-object v14, v4, Lt2;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v9

    :goto_a
    if-ltz v15, :cond_1d

    .line 76
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lx9;

    if-eqz v8, :cond_1c

    .line 77
    iget-object v12, v8, Lx9;->x:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    :goto_b
    move-object v4, v8

    goto :goto_c

    :cond_1c
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto :goto_a

    .line 78
    :cond_1d
    iget-object v4, v4, Lt2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    if-eqz v8, :cond_1e

    .line 79
    iget-object v8, v8, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v12, v8, Lx9;->x:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_b

    :cond_1f
    const/4 v4, 0x0

    :cond_20
    :goto_c
    if-nez v4, :cond_21

    if-eq v7, v6, :cond_21

    .line 80
    invoke-virtual {v10, v7}, LJ9;->z(I)Lx9;

    move-result-object v4

    .line 81
    :cond_21
    const-string v6, "FragmentManager"

    if-nez v4, :cond_25

    .line 82
    invoke-virtual {v10}, LJ9;->B()LE9;

    move-result-object v3

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 84
    invoke-virtual {v3, v1}, LE9;->a(Ljava/lang/String;)Lx9;

    move-result-object v4

    .line 85
    iput-boolean v9, v4, Lx9;->m:Z

    if-eqz v11, :cond_22

    move v2, v11

    goto :goto_d

    :cond_22
    move v2, v7

    .line 86
    :goto_d
    iput v2, v4, Lx9;->v:I

    .line 87
    iput v7, v4, Lx9;->w:I

    .line 88
    iput-object v13, v4, Lx9;->x:Ljava/lang/String;

    .line 89
    iput-boolean v9, v4, Lx9;->n:Z

    .line 90
    iput-object v10, v4, Lx9;->r:LJ9;

    .line 91
    iget-object v2, v10, LJ9;->n:Ly9;

    .line 92
    iput-object v2, v4, Lx9;->s:Ly9;

    .line 93
    iget-object v3, v2, Ly9;->s:Lb1;

    .line 94
    iput-boolean v9, v4, Lx9;->C:Z

    if-nez v2, :cond_23

    const/4 v8, 0x0

    goto :goto_e

    .line 95
    :cond_23
    iget-object v8, v2, Ly9;->r:Lb1;

    :goto_e
    if-eqz v8, :cond_24

    .line 96
    iput-boolean v9, v4, Lx9;->C:Z

    .line 97
    :cond_24
    invoke-virtual {v10, v4}, LJ9;->a(Lx9;)Landroidx/fragment/app/a;

    move-result-object v2

    const/4 v3, 0x2

    .line 98
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 102
    :cond_25
    iget-boolean v2, v4, Lx9;->n:Z

    if-nez v2, :cond_2c

    .line 103
    iput-boolean v9, v4, Lx9;->n:Z

    .line 104
    iput-object v10, v4, Lx9;->r:LJ9;

    .line 105
    iget-object v2, v10, LJ9;->n:Ly9;

    .line 106
    iput-object v2, v4, Lx9;->s:Ly9;

    .line 107
    iget-object v3, v2, Ly9;->s:Lb1;

    .line 108
    iput-boolean v9, v4, Lx9;->C:Z

    if-nez v2, :cond_26

    const/4 v8, 0x0

    goto :goto_f

    .line 109
    :cond_26
    iget-object v8, v2, Ly9;->r:Lb1;

    :goto_f
    if-eqz v8, :cond_27

    .line 110
    iput-boolean v9, v4, Lx9;->C:Z

    .line 111
    :cond_27
    invoke-virtual {v10, v4}, LJ9;->f(Lx9;)Landroidx/fragment/app/a;

    move-result-object v2

    const/4 v3, 0x2

    .line 112
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Retained Fragment "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_28
    :goto_10
    move-object/from16 v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v4, Lx9;->D:Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {v2}, Landroidx/fragment/app/a;->k()V

    .line 118
    invoke-virtual {v2}, Landroidx/fragment/app/a;->j()V

    .line 119
    iget-object v3, v4, Lx9;->E:Landroid/view/View;

    if-eqz v3, :cond_2b

    if-eqz v11, :cond_29

    .line 120
    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 121
    :cond_29
    iget-object v1, v4, Lx9;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 122
    iget-object v1, v4, Lx9;->E:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :cond_2a
    iget-object v1, v4, Lx9;->E:Landroid/view/View;

    new-instance v3, LA9;

    invoke-direct {v3, v0, v2}, LA9;-><init>(LB9;Landroidx/fragment/app/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 124
    iget-object v0, v4, Lx9;->E:Landroid/view/View;

    return-object v0

    .line 125
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did not create a view."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_11
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, LB9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
