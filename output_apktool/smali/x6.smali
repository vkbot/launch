.class public final Lx6;
.super LDd;
.source "SourceFile"


# instance fields
.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LVh;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDd;-><init>(LVh;)V

    .line 2
    iput-object p2, p0, Lx6;->q:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lx6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LDd;-><init>(LDd;)V

    .line 4
    iget-object p1, p1, Lx6;->q:Landroid/graphics/RectF;

    iput-object p1, p0, Lx6;->q:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Ly6;

    invoke-direct {v0, p0}, LEd;-><init>(LDd;)V

    iput-object p0, v0, Ly6;->v:Lx6;

    invoke-virtual {v0}, LEd;->invalidateSelf()V

    return-object v0
.end method
