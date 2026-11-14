.class public final synthetic LNk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LNk;->a:I

    iput-object p2, p0, LNk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "this$0"

    iget-object v1, p0, LNk;->b:Ljava/lang/Object;

    iget p0, p0, LNk;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/chip/Chip;

    iget-object p0, v1, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljm;->a:Ljm;

    const-string p0, "saved_steering_fn"

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "steering_key_function"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-virtual {v1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_3

    move p1, p0

    :cond_3
    invoke-virtual {v1, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Z(I)V

    :goto_0
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "sport_key_enabled"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_1
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "back_hidden"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {v1, p0, p2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e(Landroid/view/View;Z)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
