.class public final LTa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LTa;->a:I

    iput-object p2, p0, LTa;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LTa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LTa;->b:Ljava/lang/Object;

    check-cast p0, Ld7;

    new-instance v0, Lc7;

    invoke-direct {v0, p0}, Lc7;-><init>(Ld7;)V

    return-object v0

    :pswitch_0
    new-instance v0, LUa;

    iget-object p0, p0, LTa;->b:Ljava/lang/Object;

    check-cast p0, LS4;

    iget-object p0, p0, LS4;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, LUa;-><init>(Ljava/util/Iterator;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
