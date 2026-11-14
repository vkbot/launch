.class public final LB4;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LB4;->b:I

    iput-object p2, p0, LB4;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lda;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB4;->b:I

    .line 2
    check-cast p1, LNb;

    iput-object p1, p0, LB4;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "app"

    sget-object v1, Lsm;->a:Lsm;

    iget-object v2, p0, LB4;->c:Ljava/lang/Object;

    iget p0, p0, LB4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :pswitch_0
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    check-cast v2, Lcom/omoda/launcher/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4, v0}, Lcom/omoda/launcher/data/Preset;-><init>(ILjava/lang/String;Ljava/lang/String;F)V

    iget-object p1, v2, Lcom/omoda/launcher/MainActivity;->w:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/omoda/launcher/data/PresetRepository;->savePreset(Lcom/omoda/launcher/data/Preset;)Z

    sget-object p1, Lw8;->a:Lw8;

    invoke-virtual {v2, p0, p1}, Lcom/omoda/launcher/MainActivity;->t(Lcom/omoda/launcher/data/Preset;Ljava/util/Map;)V

    return-object v1

    :cond_0
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LNb;

    invoke-interface {v2, p1}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :pswitch_2
    check-cast p1, Landroid/os/Parcel;

    const-string p0, "it"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lif;

    iget-object p0, v2, Lif;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, v2, Lif;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, v2, Lif;->d:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
