.class public final LG0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LG0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, LG0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :pswitch_1
    check-cast p1, Lqi;

    check-cast p2, Lqi;

    iget p0, p1, Lqi;->b:I

    iget p1, p2, Lqi;->b:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_2
    check-cast p1, Lta;

    check-cast p2, Lta;

    iget-object p0, p1, Lta;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p2, Lta;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_4

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    move v2, v0

    goto :goto_4

    :cond_4
    iget-boolean p0, p1, Lta;->a:Z

    iget-boolean v3, p2, Lta;->a:Z

    if-eq p0, v3, :cond_5

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_5
    iget p0, p2, Lta;->b:I

    iget v0, p1, Lta;->b:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_6

    :goto_3
    move v2, p0

    goto :goto_4

    :cond_6
    iget p0, p1, Lta;->c:I

    iget p1, p2, Lta;->c:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return v2

    :pswitch_3
    check-cast p1, Laf;

    iget-object p0, p1, Laf;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Comparable;

    check-cast p2, Laf;

    iget-object p1, p2, Laf;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object p0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LXm;->m(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, LXm;->m(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_8

    goto :goto_5

    :cond_8
    cmpg-float p0, p0, p1

    if-gez p0, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    return v0

    :pswitch_5
    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/RemoteApp;->getAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
