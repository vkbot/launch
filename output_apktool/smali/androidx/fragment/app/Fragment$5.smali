.class Landroidx/fragment/app/Fragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# instance fields
.field public final synthetic a:Lx9;


# direct methods
.method public constructor <init>(Lx9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Fragment$5;->a:Lx9;

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 0

    sget-object p1, LVb;->ON_STOP:LVb;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$5;->a:Lx9;

    iget-object p0, p0, Lx9;->E:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
