.class public final LGo;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LGo;->b:I

    iput-object p1, p0, LGo;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LGo;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldd;

    const-string v0, "it"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LGo;->c:Ljava/lang/String;

    iget-object p1, p1, Ldd;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ldd;

    const-string v0, "it"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LGo;->c:Ljava/lang/String;

    iget-object p1, p1, Ldd;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ldd;

    const-string v0, "it"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LGo;->c:Ljava/lang/String;

    iget-object p1, p1, Ldd;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
