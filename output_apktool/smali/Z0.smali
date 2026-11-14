.class public final LZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb1;I)V
    .locals 0

    .line 1
    iput p2, p0, LZ0;->a:I

    iput-object p1, p0, LZ0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LZ0;->a:I

    const-string v0, "registry"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LZ0;->b:Ljava/lang/Object;

    .line 4
    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, Lh1;->e(Ljava/lang/String;Lxh;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    iget v0, p0, LZ0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, LZ0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "classes_to_restore"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, LZ0;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lb1;

    :cond_0
    iget-object p0, v1, Lb1;->p:LL;

    iget-object v2, p0, LL;->b:Ljava/lang/Object;

    check-cast v2, Ly9;

    iget-object v2, v2, Ly9;->u:LJ9;

    invoke-static {v2}, Lb1;->l(LJ9;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lb1;->q:Landroidx/lifecycle/a;

    sget-object v2, LVb;->ON_STOP:LVb;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Ly9;

    iget-object p0, p0, Ly9;->u:LJ9;

    invoke-virtual {p0}, LJ9;->O()LK9;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "android:support:fragments"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, LZ0;->b:Ljava/lang/Object;

    check-cast p0, Lb1;

    invoke-virtual {p0}, Lb1;->j()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
