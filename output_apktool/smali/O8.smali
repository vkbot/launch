.class public final LO8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/List;

.field public static final c:LL8;

.field public static final d:LL8;

.field public static final e:LL8;

.field public static final f:LL8;

.field public static final g:Ljava/util/Set;

.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/util/List;

.field public static k:Landroid/content/res/Resources;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    const-string v0, "com.astrob.turbodog"

    const-string v1, "com.yfve.car.carplay"

    const-string v2, "com.yfve.t19c.projection.carplay.service"

    const-string v3, "com.yfve.car.androidauto"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvf;->n([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LO8;->a:Ljava/util/Set;

    new-instance v0, LL8;

    const-string v5, "icon_media"

    const-string v6, "launcher_media_icon_bg"

    const/16 v9, 0x60

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "media"

    const-string v3, "com.chery.media"

    const-string v4, "com.chery.media.view.activity.MediaActivity"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v2, LL8;

    const-string v14, "icon_phone"

    const-string v15, "launcher_phone_icon_bg"

    const/16 v18, 0x60

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v11, "phone"

    const-string v12, "com.chery.dialer"

    const-string v13, "com.chery.dialer.ui.TelecomActivity"

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v3, LL8;

    const-string v23, "icon_system_setting"

    const-string v24, "launcher_system_setting_icon_bg"

    const/16 v27, 0x60

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v20, "system_setting"

    const-string v21, "com.chery.settings"

    const-string v22, "com.chery.settings.view.settings.activity.SettingsActivity"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v13, LL8;

    const-string v8, "icon_vehicle_setting"

    const-string v9, "launcher_vehicle_icon_bg"

    const/16 v12, 0x40

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v5, "vehicle_setting"

    const-string v6, "com.chery.settings"

    const-string v7, "com.chery.settings.view.vehicle.activity.VehicleActivity"

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v5, LL8;

    const-string v18, "icon_picture"

    const-string v19, "launcher_picture_icon_bg"

    const/16 v22, 0x60

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v15, "picture"

    const-string v16, "com.chery.media"

    const-string v17, "com.chery.media.view.activity.PictureActivity"

    move-object v14, v5

    invoke-direct/range {v14 .. v22}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v6, LL8;

    const-string v27, "icon_video"

    const-string v28, "launcher_video_icon_bg"

    const/16 v31, 0x60

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v24, "video"

    const-string v25, "com.chery.media"

    const-string v26, "com.chery.media.view.activity.VideoActivity"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v31}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v7, LL8;

    const-string v18, "icon_manual"

    const-string v19, "launcher_manual_icon_bg"

    const-string v15, "manual"

    const-string v16, "com.chery.help"

    const-string v17, "com.chery.help.view.activity.MainActivity"

    move-object v14, v7

    invoke-direct/range {v14 .. v22}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    new-instance v8, LL8;

    const-string v27, "icon_update"

    const-string v28, "launcher_update_icon_bg"

    const-string v24, "update"

    const-string v25, "com.chery.upgrade"

    const-string v26, "com.chery.upgrade.view.MainActivity"

    move-object/from16 v23, v8

    invoke-direct/range {v23 .. v31}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    filled-new-array/range {v1 .. v8}, [LL8;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LO8;->b:Ljava/util/List;

    new-instance v0, LL8;

    const-string v5, "icon_360"

    const-string v6, "launcher_360_icon_bg"

    const/16 v9, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v2, "360"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    sput-object v0, LO8;->c:LL8;

    new-instance v0, LL8;

    const-string v14, "icon_qdlink"

    const-string v15, "launcher_qdlink_icon_bg"

    const/16 v18, 0x60

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v11, "qdlink"

    const-string v12, "com.neusoft.ssp.ces.c4.car.assistant"

    const-string v13, "com.neusoft.ssp.ces.c4.car.assistant.SplashActivity"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    sput-object v0, LO8;->d:LL8;

    new-instance v0, LL8;

    sget-object v10, Lhf;->b:Lhf;

    const-string v5, "icon_carplay"

    const-string v6, "launcher_carplay_icon_bg"

    const/16 v9, 0x20

    const/4 v7, 0x0

    const-string v2, "carplay"

    const-string v3, "com.yfve.t19c.projection.carplay.service"

    move-object v1, v0

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    sput-object v0, LO8;->e:LL8;

    new-instance v0, LL8;

    sget-object v1, Lhf;->a:Lhf;

    const-string v15, "icon_android_auto"

    const-string v16, "launcher_android_auto_icon_bg"

    const/16 v19, 0x20

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-string v12, "android_auto"

    const-string v13, "com.yfve.car.androidauto"

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v19}, LL8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLhf;I)V

    sput-object v0, LO8;->f:LL8;

    const-string v33, "com.neusoft.ssp.ces.c4.car.assistant"

    const-string v34, "com.chery.cerence"

    const-string v20, "com.android.phone"

    const-string v21, "com.android.systemui"

    const-string v22, "com.android.calendar"

    const-string v23, "com.android.documentsui"

    const-string v24, "com.android.deskclock"

    const-string v25, "com.android.quicksearchbox"

    const-string v26, "com.android.inputmethod.latin"

    const-string v27, "com.chery.hvac"

    const-string v28, "com.chery.icm"

    const-string v29, "com.chery.iflytekosservice"

    const-string v30, "com.yfve.engineeringmode"

    const-string v31, "com.yfve.t19c_eol"

    const-string v32, "com.yfve.pinyinime"

    const-string v35, "com.he.ardc"

    const-string v36, "com.yfve.caradapter"

    filled-new-array/range {v20 .. v36}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvf;->n([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LO8;->g:Ljava/util/Set;

    const-string v5, "com.chery.media.view.activity.DabEpgActivity"

    const-string v6, "com.chery.media.view.activity.DabAnnounceActivity"

    const-string v2, "com.chery.launcher.activity.LauncherActivity"

    const-string v3, "com.chery.appmenu.activity.AppMenuActivity"

    const-string v4, "com.chery.media.view.activity.DabListActivity"

    const-string v7, "com.chery.media.view.activity.PictureActivity"

    const-string v8, "com.chery.media.view.activity.VideoActivity"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvf;->n([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LO8;->h:Ljava/util/Set;

    new-instance v0, Laf;

    const-string v2, "com.yfve.carplayapp"

    invoke-direct {v0, v2, v10}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Laf;

    const-string v4, "com.yfve.androidauto"

    invoke-direct {v3, v4, v1}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v3}, [Laf;

    move-result-object v0

    invoke-static {v0}, Lid;->r0([Laf;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LO8;->i:Ljava/lang/Object;

    new-instance v5, LM8;

    const-string v0, "app_primordial_music_btn_n"

    const-string v1, "#com.chery.media/com.chery.media.view.activity.MediaActivity"

    const-string v3, "app_media"

    invoke-direct {v5, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, LM8;

    const-string v0, "app_primordial_phone_btn_n"

    const-string v1, "com.chery.dialer"

    const-string v3, "app_bt_phone"

    invoke-direct {v6, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LM8;

    const-string v0, "app_primordial_energy_btn"

    const-string v1, "#com.chery.vehicle/com.chery.vehicle.view.activity.EnergyActivity"

    const-string v3, "app_energy"

    invoke-direct {v7, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, LM8;

    const-string v0, "app_primordial_setup_btn_n"

    const-string v1, "#com.chery.settings/com.chery.settings.view.settings.activity.SettingsActivity"

    const-string v3, "app_local_setting"

    invoke-direct {v8, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, LM8;

    const-string v0, "app_primordial_carinfo_btn"

    const-string v1, "#com.chery.vehicle/com.chery.vehicle.view.activity.VehicleActivity"

    const-string v3, "app_vehicle_setting"

    invoke-direct {v9, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, LM8;

    const-string v0, "app_primordial_pic_btn_n"

    const-string v1, "#com.chery.media/com.chery.media.view.activity.MediaGalleryActivity"

    const-string v3, "app_gallery"

    invoke-direct {v10, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, LM8;

    const-string v0, "app_primordial_manual_btn_n"

    const-string v1, "com.chery.help"

    const-string v3, "app_menual"

    invoke-direct {v11, v1, v3, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, LM8;

    const-string v0, "app_carplay"

    const-string v1, "app_primordial_carplay_btn"

    invoke-direct {v12, v2, v0, v1}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, LM8;

    const-string v0, "app_android_auto"

    const-string v1, "app_primordial_android_auto_btn"

    invoke-direct {v13, v4, v0, v1}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, LM8;

    const-string v0, "app_primordial_upgrade_btn_n"

    const-string v1, "com.chery.upgrade"

    const-string v2, "app_upgrade"

    invoke-direct {v14, v1, v2, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, LM8;

    const-string v0, "home_menu_app_qibla_ar_n"

    const-string v1, "com.chery.qibla.compass"

    const-string v2, "app_Qibla"

    invoke-direct {v15, v1, v2, v0}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LM8;

    const-string v1, "app_primordial_360_btn"

    const-string v2, "com.chery.avm"

    const-string v3, "app_avm"

    invoke-direct {v0, v2, v3, v1}, LM8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v0

    filled-new-array/range {v5 .. v16}, [LM8;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LO8;->j:Ljava/util/List;

    return-void
.end method

.method public static final a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    const-string v1, "drawable"

    const-string v2, "com.chery.launcher"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    const-string v1, "mipmap"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p2, :cond_4

    const p1, 0x10102fe

    filled-new-array {p1}, [I

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [I

    :goto_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static b([BII)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-byte p0, p0, p1

    shr-int/2addr p0, p2

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static c(LLm;I)[B
    .locals 2

    const-class v0, [B

    const/high16 v1, 0x1000000

    invoke-virtual {p0, p1, v1, v0}, LLm;->c(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, [B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static d(Lhf;LLm;)Z
    .locals 1

    invoke-static {}, LO8;->k()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x21706204

    invoke-static {p1, v0}, LO8;->c(LLm;I)[B

    move-result-object p1

    sget-object v0, Lhf;->b:Lhf;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    const/4 v0, 0x2

    invoke-static {p1, v0, p0}, LO8;->b([BII)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static e(LP8;LLm;)Z
    .locals 6

    const-string v0, "vhal"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x21402000

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, LLm;->c(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean p0, p0, LP8;->e:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p0, :cond_4

    const p0, 0x2170620f

    invoke-static {p1, p0}, LO8;->c(LLm;I)[B

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    array-length p1, p0

    const/4 v5, 0x4

    if-le p1, v5, :cond_4

    aget-byte p0, p0, v5

    shr-int/2addr p0, v5

    and-int/2addr p0, v2

    if-ne p0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_5

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    if-eq v0, v4, :cond_3

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return v1
.end method

.method public static f(Landroid/content/Context;LLm;Ljava/lang/String;LA4;)Ljava/util/ArrayList;
    .locals 20

    move-object/from16 v6, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LO8;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v0, LO8;->b:Ljava/util/List;

    invoke-static {v0}, LL4;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x21706202

    invoke-static {v6, v1}, LO8;->c(LLm;I)[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v2, v9}, LO8;->b([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LO8;->c:LL8;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lhf;->b:Lhf;

    invoke-static {v1, v6}, LO8;->d(Lhf;LLm;)Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_1

    sget-object v1, LO8;->e:LL8;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    sget-object v1, Lhf;->a:Lhf;

    invoke-static {v1, v6}, LO8;->d(Lhf;LLm;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, LO8;->f:LL8;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    const v1, 0x21706204

    invoke-static {v6, v1}, LO8;->c(LLm;I)[B

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, LO8;->b([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, LO8;->d:LL8;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8;

    iget-object v1, v0, LL8;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, v0, LL8;->c:Ljava/lang/String;

    if-eqz v3, :cond_5

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    goto :goto_1

    :cond_5
    move-object v14, v2

    :goto_1
    if-eqz v14, :cond_6

    :try_start_0
    invoke-virtual {v8, v14, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    new-instance v4, LP8;

    iget-object v5, v0, LL8;->a:Ljava/lang/String;

    const-string v12, "factory:"

    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-boolean v15, v0, LL8;->f:Z

    iget-object v12, v0, LL8;->g:Lhf;

    const/16 v16, 0x1

    const/16 v18, 0x10

    move-object/from16 v17, v12

    move-object v12, v4

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v12 .. v18}, LP8;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZZLhf;I)V

    iget-object v12, v0, LL8;->d:Ljava/lang/String;

    invoke-static {v7, v12}, LO8;->j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_9

    move-object v2, v5

    goto :goto_3

    :cond_8
    move-object v2, v12

    :cond_9
    :goto_3
    if-nez v1, :cond_a

    const-string v1, "com.chery.launcher"

    :cond_a
    new-instance v5, LN8;

    invoke-direct {v5, v7, v0, v3, v8}, LN8;-><init>(Landroid/content/res/Resources;LL8;Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)V

    move-object v0, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, LO8;->h(LP8;Ljava/lang/String;Ljava/lang/String;LLm;LA4;Lda;)Lcom/omoda/launcher/data/AppInfo;

    move-result-object v2

    :catch_0
    if-eqz v2, :cond_4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-object v10
.end method

.method public static g(Landroid/content/Context;LLm;Ljava/lang/String;LA4;)Ljava/util/ArrayList;
    .locals 23

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    invoke-static {v7, v0}, LO8;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const v0, 0x2170620f

    invoke-static {v6, v0}, LO8;->c(LLm;I)[B

    move-result-object v0

    const/4 v1, 0x5

    const/4 v10, 0x0

    invoke-static {v0, v1, v10}, LO8;->b([BII)Z

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentActivities(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    sget-object v14, LO8;->j:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, LO8;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, LO8;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, LO8;->h:Ljava/util/Set;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "com.chery.qibla.compass"

    invoke-static {v2, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v11, :cond_0

    :cond_3
    sget-object v3, LO8;->i:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhf;

    if-eqz v3, :cond_4

    invoke-static {v3, v6}, LO8;->d(Lhf;LLm;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v10

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, -0x1

    if-eqz v15, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LM8;

    iget-object v15, v15, LM8;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    const-string v4, "#"

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v17

    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    move/from16 v5, v16

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ltz v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    :cond_8
    move/from16 v10, v16

    goto :goto_5

    :cond_9
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LM8;

    iget-object v10, v10, LM8;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v5

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :goto_5
    invoke-static {v14, v10}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM8;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v2, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, LP8;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "factory:"

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v7, "com.chery.vehicle"

    invoke-static {v2, v7}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v7, "com.chery.vehicle.view.activity.EnergyActivity"

    invoke-static {v1, v7}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    const/16 v18, 0x0

    move-object/from16 v15, v22

    move-object/from16 v17, v5

    move-object/from16 v21, v3

    invoke-direct/range {v15 .. v21}, LP8;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZZZLhf;)V

    if-eqz v4, :cond_c

    iget-object v1, v4, LM8;->b:Ljava/lang/String;

    invoke-static {v8, v1}, LO8;->j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    move-object v3, v1

    goto :goto_8

    :cond_c
    :goto_7
    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_8
    invoke-static {v2}, Lnb;->o(Ljava/lang/Object;)V

    new-instance v5, LN8;

    invoke-direct {v5, v4, v0, v9, v8}, LN8;-><init>(LM8;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V

    move-object/from16 v0, v22

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, LO8;->h(LP8;Ljava/lang/String;Ljava/lang/String;LLm;LA4;Lda;)Lcom/omoda/launcher/data/AppInfo;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_9
    move-object/from16 v7, p0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    if-ltz v10, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    :goto_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laf;

    invoke-direct {v2, v1, v0}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    move-object/from16 v7, p0

    goto/16 :goto_0

    :cond_10
    const v0, 0x21706202

    invoke-static {v6, v0}, LO8;->c(LLm;I)[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LO8;->b([BII)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, LM8;

    iget-object v1, v7, LM8;->a:Ljava/lang/String;

    const-string v2, "com.chery.avm"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, LP8;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "factory:360"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x30

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, LP8;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZZLhf;I)V

    iget-object v1, v7, LM8;->b:Ljava/lang/String;

    invoke-static {v8, v1}, LO8;->j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "AVM"

    :cond_12
    move-object v2, v1

    new-instance v5, LN2;

    const/4 v1, 0x1

    invoke-direct {v5, v8, v1, v7}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v1, "com.chery.avm"

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, LO8;->h(LP8;Ljava/lang/String;Ljava/lang/String;LLm;LA4;Lda;)Lcom/omoda/launcher/data/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v14, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laf;

    invoke-direct {v2, v1, v0}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_b
    new-instance v0, LG0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LG0;-><init>(I)V

    new-instance v1, LX0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, LX0;-><init>(ILjava/lang/Object;)V

    invoke-static {v12, v1}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laf;

    iget-object v2, v2, Laf;->b:Ljava/lang/Object;

    check-cast v2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    return-object v1
.end method

.method public static h(LP8;Ljava/lang/String;Ljava/lang/String;LLm;LA4;Lda;)Lcom/omoda/launcher/data/AppInfo;
    .locals 10

    iget-boolean v0, p0, LP8;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p3}, LO8;->e(LP8;LLm;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p0, LP8;->f:Lhf;

    if-eqz p3, :cond_2

    invoke-virtual {p4, p3}, LA4;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    const/4 p3, 0x1

    :goto_0
    move v7, p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    new-instance p3, Lcom/omoda/launcher/data/AppInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p5, p4}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/16 v8, 0x8

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/omoda/launcher/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLP8;ZILF6;)V

    return-object p3
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, LT7;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LO8;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, LO8;->k:Landroid/content/res/Resources;

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "com.chery.launcher"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "stock launcher resources unavailable: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "FactoryPrograms"

    invoke-static {p0, p1, v1}, Lpi;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    sput-object p0, LO8;->k:Landroid/content/res/Resources;

    sput-object v0, LO8;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "string"

    const-string v2, "com.chery.launcher"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static k()Ljava/util/LinkedHashSet;
    .locals 8

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unified_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lpm;->d:Lpm;

    const-string v0, "off"

    :cond_0
    invoke-static {}, Lpm;->values()[Lpm;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    iget-object v7, v6, Lpm;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_3

    sget-object v6, Lpm;->d:Lpm;

    :cond_3
    sget-object v0, Lhf;->a:Lhf;

    iget-boolean v1, v6, Lpm;->b:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    sget-object v1, Lhf;->b:Lhf;

    iget-boolean v3, v6, Lpm;->c:Z

    if-eqz v3, :cond_5

    move-object v2, v1

    :cond_5
    filled-new-array {v0, v2}, [Lhf;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_3
    const/4 v2, 0x2

    if-ge v4, v2, :cond_7

    aget-object v2, v0, v4

    if-eqz v2, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v1
.end method
