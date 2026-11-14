.class public abstract Lfg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgg;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgg;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lfg;->a:Lgg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfg;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lfg;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public abstract c(LEg;I)V
.end method

.method public d(LEg;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfg;->c(LEg;I)V

    return-void
.end method

.method public abstract e(Landroid/view/ViewGroup;)LEg;
.end method

.method public f(LEg;)V
    .locals 0

    return-void
.end method
