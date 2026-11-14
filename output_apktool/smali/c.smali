.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lc;->a:I

    packed-switch p0, :pswitch_data_0

    .line 13
    new-instance p0, LBk;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LBk;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 14
    :pswitch_0
    new-instance p0, LMj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LMj;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 15
    :pswitch_1
    new-instance p0, Lji;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lji;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 16
    :pswitch_2
    new-instance p0, LJh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LJh;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 17
    :pswitch_3
    new-instance p0, Lxg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 18
    :pswitch_4
    new-instance p0, Lnd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnd;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 19
    :pswitch_5
    new-instance p0, La6;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La6;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 20
    :pswitch_6
    new-instance p0, Lj4;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj4;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 21
    :pswitch_7
    new-instance p0, LB3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LB3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_8
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 23
    sget-object p0, Ld;->b:Lb;

    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lc;->a:I

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, LBk;

    invoke-direct {p0, p1, p2}, LBk;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, LMj;

    invoke-direct {p0, p1, p2}, LMj;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lji;

    invoke-direct {p0, p1, p2}, Lji;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, LJh;

    invoke-direct {p0, p1, p2}, LJh;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 5
    :pswitch_3
    new-instance p0, Lxg;

    invoke-direct {p0, p1, p2}, Lxg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 6
    :pswitch_4
    new-instance p0, Lnd;

    invoke-direct {p0, p1, p2}, Lnd;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, La6;

    invoke-direct {p0, p1, p2}, La6;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lj4;

    invoke-direct {p0, p1, p2}, Lj4;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 9
    :pswitch_7
    new-instance p0, LB3;

    invoke-direct {p0, p1, p2}, LB3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 10
    :pswitch_8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 11
    sget-object p0, Ld;->b:Lb;

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "superState must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lc;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [LBk;

    return-object p0

    :pswitch_0
    new-array p0, p1, [LMj;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lji;

    return-object p0

    :pswitch_2
    new-array p0, p1, [LJh;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lxg;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lnd;

    return-object p0

    :pswitch_5
    new-array p0, p1, [La6;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lj4;

    return-object p0

    :pswitch_7
    new-array p0, p1, [LB3;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Ld;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
