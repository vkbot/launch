.class public final LC4;
.super Lmf;
.source "SourceFile"


# instance fields
.field public final c:LRh;

.field public final d:LRh;

.field public final e:LRh;


# direct methods
.method public constructor <init>(Landroid/content/Context;LYk;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lmf;-><init>()V

    new-instance v0, LRh;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "t19c.intent.action.CARPLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.yfve.t19c.projection.carplay.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "setPackage(...)"

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface"

    invoke-direct {v0, p1, v1, v3, p2}, LRh;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;LS9;)V

    iput-object v0, p0, LC4;->c:LRh;

    new-instance v0, LRh;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.yfve.t19c.projection.androidauto.uiproxy.uiproxyservice"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vendor.yfvet.projection.androidauto"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.yfve.t19c.projection.androidauto.proxy.IAndroidAutoClient"

    invoke-direct {v0, p1, v1, v3, p2}, LRh;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;LS9;)V

    iput-object v0, p0, LC4;->d:LRh;

    new-instance p2, LRh;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yfve.t19c.projection.devicemanager.list"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.yfve.t19c.projection.devicemanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LPh;->c:LPh;

    const-string v2, "com.yfve.t19c.projection.devicelist.DeviceListManager"

    invoke-direct {p2, p1, v0, v2, v1}, LRh;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;LS9;)V

    iput-object p2, p0, LC4;->e:LRh;

    return-void
.end method


# virtual methods
.method public final a(Lhf;)Z
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lz4;->k:Lz4;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    sget-object p1, Lz4;->c:Lz4;

    iget-object p0, p0, LC4;->c:LRh;

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0, p1}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_0
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Lz4;->d:Lz4;

    iget-object p0, p0, LC4;->d:LRh;

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0, p1}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b(Lhf;)Ljava/util/List;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LC4;->c:LRh;

    invoke-static {p0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, p0, LC4;->d:LRh;

    iget-object p0, p0, LC4;->e:LRh;

    filled-new-array {p1, p0}, [LRh;

    move-result-object p0

    invoke-static {p0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c(Lhf;)Lrf;
    .locals 8

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    new-instance p0, Lqf;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.chery.settings"

    const-string v1, "com.chery.settings.view.settings.activity.SettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SettingMenuID"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "setFlags(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, LA4;

    const/4 v2, 0x1

    const-string v6, "readAndroidAutoPhones(Landroid/os/Parcel;)Ljava/util/List;"

    const-class v4, LC4;

    const-string v5, "readAndroidAutoPhones"

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, LA4;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lz4;->k:Lz4;

    iget-object v2, p0, LC4;->e:LRh;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, p1}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    sget-object p1, Lv8;->a:Lv8;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    new-instance p0, Lof;

    invoke-direct {p0, p1}, Lof;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lnf;->a:Lnf;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lif;

    invoke-virtual {p0, p1}, LC4;->e(Lif;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    sget-object p0, Lpf;->a:Lpf;

    :goto_0
    return-object p0
.end method

.method public final d(Lhf;)Lrf;
    .locals 6

    const-string p0, "PhoneProjection"

    const-string v0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm #19: "

    const-string v1, "phone"

    invoke-static {p1, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "CarPlayCommService"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Landroid/os/IBinder;

    if-eqz v3, :cond_0

    check-cast p1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CarPlayCommService: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v5, "obtain(...)"

    invoke-static {v4, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v3, 0x13

    invoke-interface {p1, v3, v4, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    const-string v1, "ServiceLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CarPlay screen not asked for: no CarPlayCommService"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lnf;->a:Lnf;

    goto :goto_4

    :cond_3
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Lqf;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.yfve.car.androidauto"

    const-string v2, "com.yfve.car.androidauto.AndroidAutoActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "setFlags(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/content/Intent;)V

    :goto_4
    return-object p0
.end method

.method public final e(Lif;)V
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LB4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LB4;-><init>(ILjava/lang/Object;)V

    sget-object p1, Lz4;->e:Lz4;

    iget-object p0, p0, LC4;->e:LRh;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsm;

    if-nez p0, :cond_0

    const-string p0, "PhoneProjection"

    const-string p1, "Android Auto session not asked for"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
