.class public final synthetic LA4;
.super Lra;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, LA4;->i:I

    invoke-direct/range {p0 .. p5}, Lra;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LA4;->i:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lhf;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LI3;->b:Ljava/lang/Object;

    check-cast p0, Lmf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lmf;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/os/Parcel;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LI3;->b:Ljava/lang/Object;

    check-cast p0, LR9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lhf;->a:Lhf;

    goto :goto_0

    :cond_3
    sget-object v0, Lhf;->b:Lhf;

    :goto_0
    return-object v0

    :pswitch_1
    check-cast p1, Landroid/os/Parcel;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LI3;->b:Ljava/lang/Object;

    check-cast p0, LC4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    move v0, v1

    :cond_4
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v7, v1

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_b

    if-nez v7, :cond_7

    if-eqz v6, :cond_b

    :cond_7
    new-instance v6, Lif;

    if-nez v3, :cond_a

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    const-string v3, "?"

    goto :goto_4

    :cond_8
    move-object v3, v5

    goto :goto_4

    :cond_9
    move-object v3, v4

    :cond_a
    :goto_4
    invoke-direct {v6, v3, v4, v5, v7}, Lif;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
