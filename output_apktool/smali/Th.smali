.class public final LTh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x44

    const/high16 v3, -0x1000000

    .line 6
    invoke-static {v3, v2}, LU4;->d(II)I

    move-result v2

    iput v2, p0, LTh;->a:I

    const/16 v2, 0x14

    .line 7
    invoke-static {v3, v2}, LU4;->d(II)I

    const/4 v2, 0x0

    .line 8
    invoke-static {v3, v2}, LU4;->d(II)I

    .line 9
    iget p0, p0, LTh;->a:I

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LTh;->a:I

    return-void
.end method
