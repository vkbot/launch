.class public final synthetic Lpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lda;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lpj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj;->b:Ljava/lang/Object;

    check-cast p2, LNb;

    iput-object p2, p0, Lpj;->c:Ljava/lang/Object;

    iput-object p3, p0, Lpj;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lpj;->a:I

    iput-object p1, p0, Lpj;->b:Ljava/lang/Object;

    iput-object p2, p0, Lpj;->c:Ljava/lang/Object;

    iput-object p3, p0, Lpj;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lpj;->d:Ljava/lang/Object;

    iget-object v4, p0, Lpj;->c:Ljava/lang/Object;

    const-string v5, "this$0"

    iget-object v6, p0, Lpj;->b:Ljava/lang/Object;

    iget p0, p0, Lpj;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "$abandon"

    check-cast v6, LS9;

    invoke-static {v6, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v4, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$container"

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, LS9;->d()Ljava/lang/Object;

    :try_start_0
    iget-object p0, v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m()V

    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v6, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout;

    check-cast v3, Lcom/omoda/launcher/data/AppInfo;

    const-string p0, "$app"

    invoke-static {v3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    invoke-interface {p0, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {v6, v3, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0(Lcom/omoda/launcher/data/AppInfo;Z)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v6, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LNb;

    check-cast v3, Ljava/lang/String;

    const-string p0, "$key"

    invoke-static {v3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s()V

    invoke-interface {v4, v3}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v6, Landroid/widget/EditText;

    check-cast v4, Landroid/widget/TextView;

    check-cast v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v3, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object p0

    iget-object p0, p0, Lq0;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_2
    sget-object v5, LSb;->a:LSb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v5, 0x53aaff581faf7680L    # 1.126292547874593E95

    invoke-static {v5, v6}, LC6;->r(J)Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-wide v6, 0x53aaff531faf7680L    # 1.12628936500588E95

    invoke-static {v6, v7}, LC6;->r(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v6, 0x53aaff421faf7680L    # 1.1262785432522557E95

    invoke-static {v6, v7}, LC6;->r(J)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x53aaff401faf7680L    # 1.1262772701047705E95

    invoke-static {v7, v8}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, LSi;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v6, LSb;->d:Ljava/lang/String;

    const-wide v7, 0x53aafeb61faf7680L    # 1.126189422928291E95

    invoke-static {v7, v8}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v7, 0x53aafeb31faf7680L    # 1.1261875132070633E95

    invoke-static {v7, v8}, LC6;->r(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v9, Lh4;->a:Ljava/nio/charset/Charset;

    sget-object v10, LSb;->b:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    const-wide v11, 0x53aafea81faf7680L    # 1.1261805108958946E95

    invoke-static {v11, v12}, LC6;->r(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v11, 0x53aafe9a1faf7680L    # 1.1261715988634981E95

    invoke-static {v11, v12}, LC6;->r(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v6, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-wide v10, 0x53aafe8f1faf7680L    # 1.1261645965523295E95

    invoke-static {v10, v11}, LC6;->r(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-wide v8, 0x53aafe7e1faf7680L    # 1.1261537747987052E95

    invoke-static {v8, v9}, LC6;->r(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    aget-byte v7, v6, v1

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v11, 0x18

    shl-long/2addr v7, v11

    aget-byte v11, v6, v2

    int-to-long v11, v11

    and-long/2addr v11, v9

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    or-long/2addr v7, v11

    aget-byte v0, v6, v0

    int-to-long v11, v0

    and-long/2addr v11, v9

    const/16 v0, 0x8

    shl-long/2addr v11, v0

    or-long/2addr v7, v11

    aget-byte v0, v6, p1

    int-to-long v11, v0

    and-long/2addr v9, v11

    or-long v6, v7, v9

    const/16 v0, 0x24

    invoke-static {v0}, Lfm;->f(I)V

    invoke-static {v6, v7, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const-wide v6, 0x53aafe701faf7680L    # 1.1261448627663088E95

    invoke-static {v6, v7}, LC6;->r(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-wide v5, 0x53aafe621faf7680L    # 1.1261359507339123E95

    invoke-static {v5, v6}, LC6;->r(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-gt v6, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v7, Lmb;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x6

    invoke-direct {v7, v2, v8, v2}, Lkb;-><init>(III)V

    iget v7, v7, Lkb;->b:I

    if-gt v2, v7, :cond_4

    move v8, v2

    goto :goto_0

    :cond_4
    move v8, v1

    :goto_0
    if-eqz v8, :cond_5

    move v9, v2

    goto :goto_1

    :cond_5
    move v9, v7

    :goto_1
    if-eqz v8, :cond_8

    if-ne v9, v7, :cond_7

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    add-int/2addr v9, v2

    :goto_2
    const/16 v10, 0x30

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object v0, v5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v6, v5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "substring(...)"

    invoke-static {v0, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x53aafe511faf7680L    # 1.126125128980288E95

    invoke-static {v8, v9}, LC6;->r(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-wide v6, 0x53aafe421faf7680L    # 1.126115580374149E95

    invoke-static {v6, v7}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v5, 0x53aaff3f1faf7680L    # 1.1262766335310279E95

    invoke-static {v5, v6}, LC6;->r(J)Ljava/lang/String;

    move-result-object v0

    const-wide v5, 0x53aaff3d1faf7680L    # 1.1262753603835427E95

    invoke-static {v5, v6}, LC6;->r(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v5}, LSi;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_a

    const-wide v0, 0x53aaff3c1faf7680L    # 1.1262747238098001E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    const-wide p0, 0x53aaff321faf7680L    # 1.126268358072374E95

    invoke-static {p0, p1}, LC6;->r(J)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x53aaff231faf7680L    # 1.126258809466235E95

    invoke-static {v0, v1}, LC6;->r(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D()V

    goto :goto_5

    :cond_b
    const-wide p0, 0x53aaff0d1faf7680L    # 1.1262448048438977E95

    invoke-static {p0, p1}, LC6;->r(J)Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x53aafefe1faf7680L    # 1.1262352562377586E95

    invoke-static {v2, v3}, LC6;->r(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object p0

    iget-object p0, p0, Lq0;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :pswitch_3
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v6, Landroid/widget/TextView;

    check-cast v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v4, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object p0

    iget-object p0, p0, LX4;->g:Ljava/lang/String;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lv7;->b:LJ6;

    new-instance p1, LEl;

    const/4 v1, 0x0

    invoke-direct {p1, v4, v6, v3, v1}, LEl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    iget-object v1, v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {v1, p0, p1, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void

    :pswitch_4
    check-cast v6, Lqj;

    invoke-static {v6, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    check-cast v3, Lzj;

    const-string p0, "this$1"

    invoke-static {v3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v6, Lqj;->y:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, LD2;

    invoke-direct {v0, v3, p1, v6}, LD2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
