.class public final LI9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH9;


# instance fields
.field public final a:I

.field public final synthetic b:LJ9;


# direct methods
.method public constructor <init>(LJ9;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI9;->b:LJ9;

    iput p2, p0, LI9;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    iget-object v0, p0, LI9;->b:LJ9;

    iget-object v1, v0, LJ9;->q:Lx9;

    iget p0, p0, LI9;->a:I

    if-eqz v1, :cond_0

    if-gez p0, :cond_0

    invoke-virtual {v1}, Lx9;->g()LJ9;

    move-result-object v1

    invoke-virtual {v1}, LJ9;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, LJ9;->K(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p0

    return p0
.end method
