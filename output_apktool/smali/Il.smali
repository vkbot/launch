.class public final synthetic LIl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:LS9;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIl;->a:Landroid/widget/TextView;

    iput-object p2, p0, LIl;->b:Landroid/widget/TextView;

    iput-object p3, p0, LIl;->c:Landroid/widget/TextView;

    iput-object p4, p0, LIl;->d:LS9;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LIl;->a:Landroid/widget/TextView;

    iget-object v0, p0, LIl;->b:Landroid/widget/TextView;

    iget-object v1, p0, LIl;->c:Landroid/widget/TextView;

    iget-object p0, p0, LIl;->d:LS9;

    const-string v2, "$proceed"

    invoke-static {p0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p1

    iget-object p1, p1, LOg;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void
.end method
