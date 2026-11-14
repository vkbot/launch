.class public final LR9;
.super Lmf;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:LRh;


# direct methods
.method public constructor <init>(Landroid/content/Context;LYk;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lmf;-><init>()V

    iput-object p1, p0, LR9;->c:Landroid/content/Context;

    new-instance v0, LRh;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yfve.caradapter.3rdapp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.yfve.caradapter"

    const-string v4, "com.yfve.caradapter.services.CarAdapterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "putExtra(...)"

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.yfve.connectivitysdk.managers.ICarControl"

    invoke-direct {v0, p1, v1, v2, p2}, LRh;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;LS9;)V

    iput-object v0, p0, LR9;->d:LRh;

    return-void
.end method


# virtual methods
.method public final a(Lhf;)Z
    .locals 8

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LA4;

    const/4 v2, 0x1

    const-string v6, "readConnectedPhone(Landroid/os/Parcel;)Lcom/omoda/launcher/factory/Phone;"

    const-class v4, LR9;

    const-string v5, "readConnectedPhone"

    const/4 v7, 0x1

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, LA4;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lz4;->k:Lz4;

    iget-object p0, p0, LR9;->d:LRh;

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1, v0}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lhf;)Ljava/util/List;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LR9;->d:LRh;

    invoke-static {p0}, Lnb;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lhf;)Lrf;
    .locals 13

    iget-object p0, p0, LR9;->c:Landroid/content/Context;

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "setFlags(...)"

    const/high16 v2, 0x10200000

    const-string v3, "1"

    const-string v4, "SettingMenuID"

    const-string v5, "com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v6, "com.chery.setting.ACTION_OPEN_SYSTEM_SETTING"

    const-string v7, "com.chery.settings"

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    new-instance p0, Lqf;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.chery.settings.BluetoothAddress"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {p1, v8}, Lvf;->o(II)Lmb;

    move-result-object v8

    instance-of v10, v8, Ljava/util/Collection;

    if-eqz v10, :cond_3

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lkb;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, p1

    :cond_4
    :goto_0
    move-object v11, v8

    check-cast v11, Llb;

    iget-boolean v11, v11, Llb;->c:Z

    if-eqz v11, :cond_6

    move-object v11, v8

    check-cast v11, Llb;

    invoke-virtual {v11}, Llb;->a()I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string v12, "deviceType"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_5

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/ArithmeticException;

    const-string v9, "Count overflow has happened."

    invoke-direct {v8, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move p1, v10

    goto :goto_2

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "paired phones: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PhoneProjection"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_8

    new-instance p0, Lqf;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    sget-object p1, Lnf;->a:Lnf;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.chery.settings.START_AA_CONNECT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object p0, p1

    goto :goto_3

    :cond_9
    sget-object p0, Lpf;->a:Lpf;

    :goto_3
    return-object p0
.end method

.method public final d(Lhf;)Lrf;
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz4;->h:Lz4;

    sget-object v1, Lz4;->i:Lz4;

    iget-object p0, p0, LR9;->d:LRh;

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0, v1}, LRh;->a(ILda;Lda;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " screen not asked for"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneProjection"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lnf;->a:Lnf;

    return-object p0
.end method
