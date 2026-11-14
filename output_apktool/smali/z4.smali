.class public final Lz4;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# static fields
.field public static final c:Lz4;

.field public static final d:Lz4;

.field public static final e:Lz4;

.field public static final f:Lz4;

.field public static final g:Lz4;

.field public static final h:Lz4;

.field public static final i:Lz4;

.field public static final j:Lz4;

.field public static final k:Lz4;

.field public static final l:Lz4;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->c:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->d:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->e:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->f:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->g:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->h:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->i:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->j:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->k:Lz4;

    new-instance v0, Lz4;

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lz4;-><init>(II)V

    sput-object v0, Lz4;->l:Lz4;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lz4;->b:I

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "it"

    iget p0, p0, Lz4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, LC6;->O(D)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p1, Lnk;->a:Landroid/content/Context;

    sget-object p1, Lnk;->b:Lkk;

    if-eqz p1, :cond_0

    iget p1, p1, Lkk;->d:I

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    invoke-static {p0}, Lnk;->f(I)V

    goto :goto_0

    :cond_0
    const-string p0, "base"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object p0, Lnk;->a:Landroid/content/Context;

    const-string p0, "guard"

    invoke-static {p0}, Lnk;->a(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_1
    check-cast p1, Lq6;

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Luh;

    invoke-direct {p0}, Luh;-><init>()V

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory:"

    invoke-static {p0, v0}, LSi;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getDimmed()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, " (grey)"

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lc6;

    instance-of p0, p1, Lg6;

    if-eqz p0, :cond_4

    move-object v1, p1

    check-cast v1, Lg6;

    :cond_4
    return-object v1

    :pswitch_6
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :pswitch_7
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/os/Parcel;

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

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
