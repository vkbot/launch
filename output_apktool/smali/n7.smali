.class public final Ln7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lp7;


# direct methods
.method public constructor <init>(Lp7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7;->a:Lp7;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Ln7;->a:Lp7;

    iget-object p1, p0, Lp7;->a0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lp7;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
