.class public final LHa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;I)V
    .locals 0

    iput p2, p0, LHa;->a:I

    iput-object p1, p0, LHa;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, LHa;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LHa;->b:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Lid;->o0(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lid;->o0(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p1, p0}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, LHa;->b:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Lid;->o0(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p2}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lid;->o0(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p1, p0}, Lfm;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
