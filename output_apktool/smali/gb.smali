.class public final synthetic Lgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LNb;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lha;ZLjava/lang/String;I)V
    .locals 0

    iput p4, p0, Lgb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LNb;

    iput-object p1, p0, Lgb;->b:LNb;

    iput-boolean p2, p0, Lgb;->c:Z

    iput-object p3, p0, Lgb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lgb;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgb;->b:LNb;

    iget-object v1, p0, Lgb;->d:Ljava/lang/String;

    iget-boolean p0, p0, Lgb;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lgb;->b:LNb;

    iget-object v1, p0, Lgb;->d:Ljava/lang/String;

    iget-boolean p0, p0, Lgb;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
