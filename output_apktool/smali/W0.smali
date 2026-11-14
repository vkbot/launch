.class public final LW0;
.super LEg;
.source "SourceFile"


# instance fields
.field public final u:Landroid/widget/LinearLayout;

.field public final v:I

.field public final w:[Landroid/widget/ImageView;

.field public final x:Ljava/util/ArrayList;

.field public final synthetic y:LY0;


# direct methods
.method public constructor <init>(LY0;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput-object p1, p0, LW0;->y:LY0;

    invoke-direct {p0, p2}, LEg;-><init>(Landroid/view/View;)V

    iput-object p2, p0, LW0;->u:Landroid/widget/LinearLayout;

    iput p3, p0, LW0;->v:I

    const/16 p1, 0xa

    new-array p1, p1, [Landroid/widget/ImageView;

    iput-object p1, p0, LW0;->w:[Landroid/widget/ImageView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LW0;->x:Ljava/util/ArrayList;

    return-void
.end method

.method public static t(Landroid/widget/ImageView;Lv2;)V
    .locals 5

    iget-object p1, p1, Lv2;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f060057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, LNa;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :cond_1
    :goto_0
    invoke-direct {p1, v3, v1, v2}, LNa;-><init>(Landroid/graphics/drawable/Drawable;IF)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const p1, 0x1080093

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final u()V
    .locals 10

    iget-object p0, p0, LW0;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    iget-object v1, v0, Laf;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Laf;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v9, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v3, -0x40400000    # -1.5f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x82

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v4, -0x1

    invoke-virtual {v9, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    int-to-long v4, v0

    const-wide/16 v6, 0x25

    mul-long/2addr v4, v6

    rem-long/2addr v4, v2

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
