.class public final LLl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:LR2;

.field public final synthetic g:LM2;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;LR2;LM2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, LLl;->e:Landroid/widget/TextView;

    iput-object p2, p0, LLl;->f:LR2;

    iput-object p3, p0, LLl;->g:LM2;

    iput-object p4, p0, LLl;->h:Landroid/widget/TextView;

    iput-object p5, p0, LLl;->i:Landroid/widget/TextView;

    iput-object p6, p0, LLl;->j:Landroid/widget/TextView;

    iput-object p7, p0, LLl;->k:Landroid/widget/TextView;

    iput-object p8, p0, LLl;->l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p9, p0, LLl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p10}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 11

    new-instance p2, LLl;

    iget-object v8, p0, LLl;->l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v9, p0, LLl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, p0, LLl;->e:Landroid/widget/TextView;

    iget-object v2, p0, LLl;->f:LR2;

    iget-object v3, p0, LLl;->g:LM2;

    iget-object v4, p0, LLl;->h:Landroid/widget/TextView;

    iget-object v5, p0, LLl;->i:Landroid/widget/TextView;

    iget-object v6, p0, LLl;->j:Landroid/widget/TextView;

    iget-object v7, p0, LLl;->k:Landroid/widget/TextView;

    move-object v0, p2

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, LLl;-><init>(Landroid/widget/TextView;LR2;LM2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, LLl;->f:LR2;

    iget-object v0, p1, LR2;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, LLl;->g:LM2;

    if-eqz v2, :cond_0

    iget-wide v3, v2, LM2;->a:J

    iget-wide v5, v2, LM2;->b:J

    add-long/2addr v3, v5

    iget-wide v5, v2, LM2;->c:J

    add-long/2addr v3, v5

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    iget-object v3, p0, LLl;->l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const-string v5, "\u2014"

    if-nez v4, :cond_2

    move-object v4, v5

    :cond_2
    iget-object v6, p0, LLl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v6, v0, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v4, p0, LLl;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LR2;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/Long;

    iget-wide v7, v2, LM2;->c:J

    invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    invoke-static {v6, v0, v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v4, p0, LLl;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, LR2;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/Long;

    iget-wide v7, v2, LM2;->b:J

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v1

    :goto_5
    invoke-static {v6, p1, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, p0, LLl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_9

    iget-wide v3, v2, LM2;->c:J

    goto :goto_6

    :cond_9
    move-wide v3, v0

    :goto_6
    cmp-long p1, v3, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez p1, :cond_a

    move p1, v4

    goto :goto_7

    :cond_a
    move p1, v3

    :goto_7
    iget-object v5, p0, LLl;->j:Landroid/widget/TextView;

    invoke-static {v5, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    if-eqz v2, :cond_b

    iget-wide v5, v2, LM2;->b:J

    goto :goto_8

    :cond_b
    move-wide v5, v0

    :goto_8
    cmp-long p1, v5, v0

    if-lez p1, :cond_c

    move v3, v4

    :cond_c
    iget-object p0, p0, LLl;->k:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LLl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LLl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LLl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
