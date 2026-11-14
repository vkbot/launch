.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# instance fields
.field public final synthetic a:Lb1;


# direct methods
.method public constructor <init>(Lb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lb1;

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 0

    sget-object p1, LVb;->ON_DESTROY:LVb;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lb1;

    iget-object p1, p1, Landroidx/activity/a;->b:LL5;

    const/4 p2, 0x0

    iput-object p2, p1, LL5;->b:Landroidx/activity/a;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lb1;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lb1;

    invoke-virtual {p1}, Landroidx/activity/a;->c()Lrn;

    move-result-object p1

    invoke-virtual {p1}, Lrn;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/activity/ComponentActivity$3;->a:Lb1;

    iget-object p0, p0, Landroidx/activity/a;->h:Lj5;

    iget-object p1, p0, Lj5;->d:Lb1;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_1
    return-void
.end method
