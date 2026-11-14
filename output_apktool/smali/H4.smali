.class public final LH4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:J

.field public c:J

.field public d:I

.field public e:Z

.field public final f:Lu1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4;->a:Landroid/content/Context;

    new-instance p1, Lu1;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lu1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LH4;->f:Lu1;

    return-void
.end method

.method public static final a(LH4;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LH4;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, LH4;->c:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    iput-wide v0, p0, LH4;->c:J

    iput v3, p0, LH4;->d:I

    :cond_1
    iget v2, p0, LH4;->d:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, LH4;->d:I

    iput-wide v0, p0, LH4;->b:J

    :goto_0
    return v3
.end method
