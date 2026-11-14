.class public final La1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQe;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb1;


# direct methods
.method public synthetic constructor <init>(Lb1;I)V
    .locals 0

    iput p2, p0, La1;->a:I

    iput-object p1, p0, La1;->b:Lb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, La1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La1;->b:Lb1;

    iget-object v0, p0, Lb1;->p:LL;

    iget-object v1, v0, LL;->b:Ljava/lang/Object;

    check-cast v1, Ly9;

    iget-object v2, v1, Ly9;->u:LJ9;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v1, v3}, LJ9;->b(Ly9;Lnb;Lx9;)V

    iget-object p0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Lh1;

    const-string v1, "android:support:fragments"

    invoke-virtual {p0, v1}, Lh1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Ly9;

    iget-object v0, v0, Ly9;->u:LJ9;

    invoke-virtual {v0, p0}, LJ9;->N(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, La1;->b:Lb1;

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object v0

    invoke-virtual {v0}, Ll1;->a()V

    iget-object p0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Lh1;

    const-string v1, "androidx:appcompat"

    invoke-virtual {p0, v1}, Lh1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v0}, Ll1;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
