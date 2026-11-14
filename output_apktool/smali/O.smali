.class public final synthetic LO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LO;->a:I

    iput-object p2, p0, LO;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, LO;->a:I

    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, LO5;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_0
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_1
    const-string v0, "$gone"

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LC3;

    iput-boolean v2, p0, LC3;->c:Z

    iget-object v1, p0, LC3;->e:LV5;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lkn;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkn;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, LC3;->b:I

    invoke-virtual {p0, v0}, LC3;->a(I)V

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    if-ne v2, v0, :cond_2

    iget p0, p0, LC3;->b:I

    invoke-virtual {v1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_3
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lag;

    invoke-virtual {p0}, Lag;->m()V

    return-void

    :pswitch_4
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LIf;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LIf;->b:I

    iget-object v1, p0, LIf;->f:Landroidx/lifecycle/a;

    if-nez v0, :cond_3

    iput-boolean v3, p0, LIf;->c:Z

    sget-object v0, LVb;->ON_PAUSE:LVb;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    :cond_3
    iget v0, p0, LIf;->a:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, LIf;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, LVb;->ON_STOP:LVb;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a;->d(LVb;)V

    iput-boolean v3, p0, LIf;->d:Z

    :cond_4
    return-void

    :pswitch_5
    sget-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LQ7;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, LQ7;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x24

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x24

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :goto_2
    return-void

    :pswitch_6
    const-string v0, "$tmp0"

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LS9;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void

    :pswitch_7
    const-string v0, "this$0"

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LJa;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJa;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, LJa;->g:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7

    iget-object v0, p0, LJa;->b:LIo;

    invoke-virtual {v0}, LIo;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, LJa;->g:I

    add-int/2addr v0, v3

    iput v0, p0, LJa;->g:I

    invoke-virtual {p0, v3}, LJa;->b(Z)V

    :cond_7
    return-void

    :pswitch_8
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lg9;

    const-string v1, "fetchFonts result is not OK. ("

    iget-object v3, p0, Lg9;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lg9;->h:Lfm;

    if-nez v4, :cond_8

    monitor-exit v3

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lg9;->b()Lr9;

    move-result-object v3

    iget v4, v3, Lr9;->e:I

    if-ne v4, v0, :cond_9

    iget-object v0, p0, Lg9;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :cond_9
    :goto_3
    if-nez v4, :cond_c

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, LTl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg9;->c:LT7;

    iget-object v1, p0, Lg9;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v3}, [Lr9;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lgm;->a(Landroid/content/Context;[Lr9;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lg9;->a:Landroid/content/Context;

    iget-object v2, v3, Lr9;->a:Landroid/net/Uri;

    invoke-static {v1, v2}, Lvf;->l(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    :try_start_5
    const-string v2, "EmojiCompat.MetadataRepo.create"

    invoke-static {v2}, LTl;->a(Ljava/lang/String;)V

    new-instance v2, Lr7;

    invoke-static {v1}, Lfm;->E(Ljava/nio/MappedByteBuffer;)Lje;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lr7;-><init>(Landroid/graphics/Typeface;Lje;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, LTl;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, LTl;->b()V

    iget-object v0, p0, Lg9;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Lg9;->h:Lfm;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Lfm;->z(Lr7;)V

    goto :goto_4

    :catchall_3
    move-exception v1

    goto :goto_5

    :cond_a
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p0}, Lg9;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :goto_5
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {}, LTl;->b()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {}, LTl;->b()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_6
    iget-object v1, p0, Lg9;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lg9;->h:Lfm;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v0}, Lfm;->y(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_6
    move-exception p0

    goto :goto_9

    :cond_d
    :goto_7
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {p0}, Lg9;->a()V

    :goto_8
    return-void

    :goto_9
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw p0

    :goto_a
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0

    :pswitch_9
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LP7;

    iget-object v0, p0, LP7;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, LP7;->t(Z)V

    iput-boolean v0, p0, LP7;->m:Z

    return-void

    :pswitch_a
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LF0;

    invoke-static {p0}, LF0;->a(LF0;)V

    return-void

    :pswitch_b
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lj5;

    iget-object v0, p0, Lj5;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lj5;->b:Ljava/lang/Runnable;

    :cond_e
    return-void

    :pswitch_c
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lb1;

    invoke-virtual {p0}, Lb1;->invalidateOptionsMenu()V

    return-void

    :pswitch_d
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LG4;

    invoke-virtual {p0, v3}, LG4;->t(Z)V

    return-void

    :pswitch_e
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lng;->l0()V

    return-void

    :pswitch_f
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LFl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, LFl;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_10
    const-string v0, "this$0"

    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, LK2;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK2;->g:Ljava/lang/String;

    if-eqz v0, :cond_14

    iput-object v1, p0, LK2;->g:Ljava/lang/String;

    iget-object v4, p0, LK2;->b:LY0;

    invoke-virtual {v4, v0}, LY0;->h(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v7, "pager"

    invoke-static {v6, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/lit8 v7, v5, 0xa

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->J(I)LEg;

    move-result-object v7

    if-nez v7, :cond_f

    goto :goto_c

    :cond_f
    rem-int/lit8 v5, v5, 0xa

    const-string v8, "null cannot be cast to non-null type android.view.ViewGroup"

    iget-object v7, v7, LEg;->a:Landroid/view/View;

    invoke-static {v7, v8}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/ViewGroup;

    div-int/lit8 v8, v5, 0x5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_10

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_10
    move-object v7, v1

    :goto_b
    if-eqz v7, :cond_11

    rem-int/lit8 v5, v5, 0x5

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_11
    :goto_c
    if-nez v1, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_13

    goto :goto_d

    :cond_13
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v5, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p0, LK2;->j:F

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    iput v2, p0, LK2;->n:F

    iget v2, p0, LK2;->k:F

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iput v2, p0, LK2;->o:F

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "createBitmap(...)"

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {v2, v5, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v1, 0xe6

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, LK2;->m:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, LK2;->l:Ljava/lang/String;

    invoke-virtual {v4, v0}, LY0;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, LK2;->e()V

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    :goto_d
    return-void

    :pswitch_11
    iget-object p0, p0, LO;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentResolver;

    :try_start_11
    const-string v0, "accessibility_enabled"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    const-string p0, "AccessibilityRecovery"

    const-string v0, "AccessibilityService enabled, waiting for connection"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
