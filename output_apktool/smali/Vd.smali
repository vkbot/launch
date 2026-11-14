.class public final LVd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:LXd;


# direct methods
.method public constructor <init>(LXd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVd;->a:LXd;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, LVd;->a:LXd;

    invoke-virtual {p0}, LXd;->c()V

    return-void
.end method
