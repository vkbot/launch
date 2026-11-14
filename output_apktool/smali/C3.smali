.class public final LC3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Z

.field public final d:Ljava/lang/Runnable;

.field public final synthetic e:LV5;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC3;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC3;->e:LV5;

    .line 4
    new-instance p1, LJ2;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LC3;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC3;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC3;->e:LV5;

    .line 2
    new-instance p1, LO;

    const/16 v0, 0xf

    invoke-direct {p1, v0, p0}, LO;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LC3;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, LC3;->d:Ljava/lang/Runnable;

    iget-object v2, p0, LC3;->e:LV5;

    iget v3, p0, LC3;->a:I

    packed-switch v3, :pswitch_data_0

    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, LC3;->b:I

    iget-boolean p1, p0, LC3;->c:Z

    if-nez p1, :cond_1

    iget-object p1, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    check-cast v1, LO;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v1}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v0, p0, LC3;->c:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, LC3;->b:I

    iget-boolean p1, p0, LC3;->c:Z

    if-nez p1, :cond_3

    iget-object p1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    check-cast v1, LJ2;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v1}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v0, p0, LC3;->c:Z

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
