.class public final LZh;
.super Ldi;
.source "SourceFile"


# instance fields
.field public final a:Lbi;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(Lbi;FF)V
    .locals 0

    invoke-direct {p0}, Ldi;-><init>()V

    iput-object p1, p0, LZh;->a:Lbi;

    iput p2, p0, LZh;->b:F

    iput p3, p0, LZh;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, LZh;->a:Lbi;

    iget v1, v0, Lbi;->c:F

    iget v2, p0, LZh;->c:F

    sub-float/2addr v1, v2

    iget v0, v0, Lbi;->b:F

    iget p0, p0, LZh;->b:F

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
