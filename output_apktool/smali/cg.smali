.class public abstract Lcg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbg;

.field public static final b:Li;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbg;

    invoke-direct {v0}, Lcg;-><init>()V

    sput-object v0, Lcg;->a:Lbg;

    sget-object v0, Lxb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LU8;

    invoke-direct {v0}, LU8;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Luf;

    invoke-direct {v0}, Lcg;-><init>()V

    :goto_1
    sput-object v0, Lcg;->b:Li;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
