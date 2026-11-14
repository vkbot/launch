.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 0

    sget-object p0, LVb;->ON_START:LVb;

    const/4 p1, 0x0

    if-eq p2, p0, :cond_1

    sget-object p0, LVb;->ON_DESTROY:LVb;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method
