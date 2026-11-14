.class public final LQh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQh;->a:I

    iput-object p2, p0, LQh;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    iget v0, p0, LQh;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "name"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQh;->b:Ljava/lang/Object;

    check-cast p0, Llm;

    iput-object p2, p0, Llm;->b:Landroid/os/IBinder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Llm;->c:Z

    const-string p2, "Connected to SystemUI UiVisibility service"

    const-string v0, "UiVisibility"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "registerUiListener failed: "

    iget-object v1, p0, Llm;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    const-string v3, "OmodaLauncher"

    const-string v4, "com.chery.window.IWindowUiVisibility"

    const-string v5, "obtain(...)"

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v8, p0, Llm;->g:Lkm;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Llm;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-interface {v1, v8, v6, v7, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    iput-boolean p1, p0, Llm;->e:Z

    const-string v1, "registerUiListener OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string p2, "registerUiTarget failed: "

    iget-object v1, p0, Llm;->b:Landroid/os/IBinder;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-static {v7, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Llm;->g:Lkm;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Llm;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-interface {v1, v3, v6, v7, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    iput-boolean p1, p0, Llm;->f:Z

    const-string p0, "registerUiTarget OK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw p0

    :goto_5
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LQh;->b:Ljava/lang/Object;

    check-cast p1, LRh;

    iput-object p2, p1, LRh;->e:Landroid/os/IBinder;

    iget-object p0, p0, LQh;->b:Ljava/lang/Object;

    check-cast p0, LRh;

    iget-object p0, p0, LRh;->d:LS9;

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget v0, p0, LQh;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "name"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LQh;->b:Ljava/lang/Object;

    check-cast p0, Llm;

    const/4 p1, 0x0

    iput-object p1, p0, Llm;->b:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Llm;->c:Z

    iput-boolean p1, p0, Llm;->e:Z

    iput-boolean p1, p0, Llm;->f:Z

    const-string p0, "UiVisibility"

    const-string p1, "Disconnected from SystemUI UiVisibility service"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LQh;->b:Ljava/lang/Object;

    check-cast p1, LRh;

    const/4 v0, 0x0

    iput-object v0, p1, LRh;->e:Landroid/os/IBinder;

    iget-object p0, p0, LQh;->b:Ljava/lang/Object;

    check-cast p0, LRh;

    iget-object p0, p0, LRh;->d:LS9;

    invoke-interface {p0}, LS9;->d()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
