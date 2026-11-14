.class public abstract Lhj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, LOf;->a:LOf;

    if-nez p0, :cond_0

    new-instance p0, LOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, LOf;->a:LOf;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget v0, p0, Lhj;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lhj;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget p0, p0, Lhj;->b:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract b(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract c(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public d(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, p0, Lhj;->b:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lhj;->c(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, p0, Lhj;->b:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lhj;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lhj;->a:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lhj;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1, p2}, Lhj;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lcn;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lr;

    if-eqz v0, :cond_4

    check-cast v1, Lr;

    iget-object v0, v1, Lr;->a:Lt;

    goto :goto_1

    :cond_4
    new-instance v0, Lt;

    invoke-direct {v0, v1}, Lt;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Lt;

    invoke-direct {v0}, Lt;-><init>()V

    :cond_5
    invoke-static {p1, v0}, Lhn;->h(Landroid/view/View;Lt;)V

    iget v0, p0, Lhj;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p0, p0, Lhj;->c:I

    invoke-static {p1, p0}, Lhn;->d(Landroid/view/View;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public abstract e(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
