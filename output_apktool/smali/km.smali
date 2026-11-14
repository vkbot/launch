.class public final Lkm;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final synthetic a:Llm;


# direct methods
.method public constructor <init>(Llm;)V
    .locals 1

    iput-object p1, p0, Lkm;->a:Llm;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 p1, 0x0

    const-string v0, "com.chery.window.IUiVisibilityListener"

    invoke-virtual {p0, p1, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.chery.window.IUiVisibilityListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_2
    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lkm;->a:Llm;

    iget-object p0, p0, Llm;->d:LL;

    if-eqz p0, :cond_4

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance p3, LO2;

    invoke-direct {p3, p0, p1}, LO2;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Z)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return v1
.end method
