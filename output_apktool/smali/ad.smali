.class public final Lad;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/omoda/launcher/MainActivity;

.field public final synthetic d:LQ7;

.field public final synthetic e:Lbd;


# direct methods
.method public constructor <init>(ZLcom/omoda/launcher/MainActivity;LQ7;Lbd;)V
    .locals 0

    iput-boolean p1, p0, Lad;->b:Z

    iput-object p2, p0, Lad;->c:Lcom/omoda/launcher/MainActivity;

    iput-object p3, p0, Lad;->d:LQ7;

    iput-object p4, p0, Lad;->e:Lbd;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    const-string v0, "app"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lad;->b:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, Lad;->c:Lcom/omoda/launcher/MainActivity;

    iget-object v4, p0, Lad;->d:LQ7;

    if-eqz v0, :cond_0

    iput-object p1, v3, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    iget-object v0, v4, LQ7;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, LQ7;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/omoda/launcher/MainActivity;->B(Landroid/graphics/drawable/Drawable;)LNa;

    move-result-object v1

    iget-object v2, v4, LQ7;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v4, LQ7;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LXc;

    const/4 v1, 0x6

    invoke-direct {p1, v3, v4, v1}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object p1, v3, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    iget-object v0, v4, LQ7;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, LQ7;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/omoda/launcher/MainActivity;->B(Landroid/graphics/drawable/Drawable;)LNa;

    move-result-object v1

    iget-object v2, v4, LQ7;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v4, LQ7;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LXc;

    const/4 v1, 0x7

    invoke-direct {p1, v3, v4, v1}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, v3, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p1, :cond_1

    iget-object p1, v3, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p1, :cond_1

    iget-object p1, v4, LQ7;->c:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p0, p0, Lad;->e:Lbd;

    invoke-virtual {p0}, Lbd;->d()Ljava/lang/Object;

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method
