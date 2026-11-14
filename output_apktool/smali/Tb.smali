.class public final LTb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LWb;)LVb;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, LVb;->ON_RESUME:LVb;

    goto :goto_0

    :cond_1
    sget-object p0, LVb;->ON_START:LVb;

    goto :goto_0

    :cond_2
    sget-object p0, LVb;->ON_CREATE:LVb;

    :goto_0
    return-object p0
.end method
