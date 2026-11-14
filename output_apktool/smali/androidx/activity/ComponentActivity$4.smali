.class Landroidx/activity/ComponentActivity$4;
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

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lb1;

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lb1;

    iget-object p2, p1, Landroidx/activity/a;->f:Lrn;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5;

    if-eqz p2, :cond_0

    iget-object p2, p2, Li5;->a:Lrn;

    iput-object p2, p1, Landroidx/activity/a;->f:Lrn;

    :cond_0
    iget-object p2, p1, Landroidx/activity/a;->f:Lrn;

    if-nez p2, :cond_1

    new-instance p2, Lrn;

    invoke-direct {p2}, Lrn;-><init>()V

    iput-object p2, p1, Landroidx/activity/a;->f:Lrn;

    :cond_1
    iget-object p1, p1, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->f(Lac;)V

    return-void
.end method
