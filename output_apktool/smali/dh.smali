.class public final synthetic Ldh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Ldh;->a:I

    iput-object p3, p0, Ldh;->c:Ljava/lang/Object;

    iput p1, p0, Ldh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ldh;->b:I

    iget-object v1, p0, Ldh;->c:Ljava/lang/Object;

    iget p0, p0, Ldh;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string p0, "$svc"

    invoke-static {v1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c(I)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p0, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(Landroid/view/View;IZ)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lff;

    invoke-virtual {v1, v0}, Lff;->z(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
