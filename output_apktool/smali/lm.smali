.class public final Llm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/os/IBinder;

.field public c:Z

.field public d:LL;

.field public e:Z

.field public f:Z

.field public final g:Lkm;

.field public final h:LQh;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llm;->a:Landroid/content/Context;

    new-instance p1, Lkm;

    invoke-direct {p1, p0}, Lkm;-><init>(Llm;)V

    iput-object p1, p0, Llm;->g:Lkm;

    new-instance p1, LQh;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LQh;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Llm;->h:LQh;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 10

    const-string v0, "UiVisibility"

    const-string v1, "setFullscreen failed: "

    const-string v2, "setFullscreen("

    iget-object v3, p0, Llm;->b:Landroid/os/IBinder;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    const-string v8, "obtain(...)"

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v8, "com.chery.window.IWindowUiVisibility"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    const-string v6, "OmodaLauncher"

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, p0, Llm;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3, v4, v7, v9, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") OK"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Llm;->b:Landroid/os/IBinder;

    iput-boolean v5, p0, Llm;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
