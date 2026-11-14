.class public final LV4;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# static fields
.field public static final c:LV4;

.field public static final d:LV4;

.field public static final e:LV4;

.field public static final f:LV4;

.field public static final g:LV4;

.field public static final h:LV4;

.field public static final i:LV4;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->c:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->d:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->e:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->f:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->g:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->h:LV4;

    new-instance v0, LV4;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LV4;-><init>(II)V

    sput-object v0, LV4;->i:LV4;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LV4;->b:I

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, LV4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Le6;

    check-cast p2, Lc6;

    invoke-interface {p1, p2}, Le6;->f(Le6;)Le6;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lik;

    check-cast p2, Lc6;

    return-object p1

    :pswitch_1
    check-cast p1, Lfk;

    check-cast p2, Lc6;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lfk;

    if-eqz p0, :cond_1

    check-cast p2, Lfk;

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move-object p1, p0

    :goto_0
    return-object p1

    :pswitch_2
    check-cast p2, Lc6;

    instance-of p0, p2, Lfk;

    if-eqz p0, :cond_5

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 p0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, p0

    :goto_2
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_3

    :cond_4
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object p1, p0

    :cond_5
    :goto_3
    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lc6;

    return-object p1

    :pswitch_4
    check-cast p1, Le6;

    check-cast p2, Lc6;

    invoke-interface {p1, p2}, Le6;->f(Le6;)Le6;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Le6;

    check-cast p2, Lc6;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lc6;->getKey()Ld6;

    move-result-object p0

    invoke-interface {p1, p0}, Le6;->d(Ld6;)Le6;

    move-result-object p0

    sget-object p1, Lt8;->a:Lt8;

    if-ne p0, p1, :cond_6

    goto :goto_5

    :cond_6
    sget-object v0, LT7;->b:LT7;

    invoke-interface {p0, v0}, Le6;->b(Ld6;)Lc6;

    move-result-object v1

    check-cast v1, LU5;

    if-nez v1, :cond_7

    new-instance p1, LW4;

    invoke-direct {p1, p0, p2}, LW4;-><init>(Le6;Lc6;)V

    :goto_4
    move-object p2, p1

    goto :goto_5

    :cond_7
    invoke-interface {p0, v0}, Le6;->d(Ld6;)Le6;

    move-result-object p0

    if-ne p0, p1, :cond_8

    new-instance p0, LW4;

    invoke-direct {p0, p2, v1}, LW4;-><init>(Le6;Lc6;)V

    move-object p2, p0

    goto :goto_5

    :cond_8
    new-instance p1, LW4;

    new-instance v0, LW4;

    invoke-direct {v0, p0, p2}, LW4;-><init>(Le6;Lc6;)V

    invoke-direct {p1, v0, v1}, LW4;-><init>(Le6;Lc6;)V

    goto :goto_4

    :goto_5
    return-object p2

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lc6;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0

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
