.class public final LX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LX0;->a:I

    iput-object p2, p0, LX0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, LX0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, LX0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/omoda/launcher/data/RemoteApp;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p2

    invoke-virtual {p0}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v2

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p2, Lcom/google/android/material/button/MaterialButton;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, LX0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    :goto_2
    return v0

    :pswitch_1
    iget-object p0, p0, LX0;->b:Ljava/lang/Object;

    check-cast p0, LG0;

    invoke-virtual {p0, p1, p2}, LG0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    check-cast p1, Laf;

    iget-object p0, p1, Laf;->b:Ljava/lang/Object;

    check-cast p0, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p0}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Laf;

    iget-object p2, p2, Laf;->b:Ljava/lang/Object;

    check-cast p2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_3
    return p0

    :pswitch_2
    iget-object p0, p0, LX0;->b:Ljava/lang/Object;

    check-cast p0, LG0;

    invoke-virtual {p0, p1, p2}, LG0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->isDemo()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/RemoteApp;->isDemo()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_4
    return p0

    :pswitch_3
    iget-object p0, p0, LX0;->b:Ljava/lang/Object;

    check-cast p0, LX0;

    invoke-virtual {p0, p1, p2}, LX0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    check-cast p1, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
