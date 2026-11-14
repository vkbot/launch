.class public final Lcom/omoda/launcher/ui/PresetGridLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    return-void
.end method


# virtual methods
.method public final getColumns()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget p0, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    add-int/2addr v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/2addr v0, p0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public final getPanelWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/omoda/launcher/ui/PresetGridLayout;->getColumns()I

    move-result v0

    iget p0, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->b:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget p2, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    mul-int/2addr p1, p2

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget p4, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    div-int p4, p2, p4

    iget v0, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->b:I

    mul-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    iget p4, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->a:I

    rem-int p4, p2, p4

    iget v1, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    mul-int/2addr p4, v1

    add-int/2addr p4, p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p3, v0, p4, v1, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->c:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/omoda/launcher/ui/PresetGridLayout;->d:I

    invoke-virtual {p0}, Lcom/omoda/launcher/ui/PresetGridLayout;->getPanelWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
