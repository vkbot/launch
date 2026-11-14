.class public LFc;
.super Lpn;
.source "SourceFile"


# instance fields
.field public final c:Lti;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lpn;-><init>()V

    new-instance v0, Lti;

    invoke-direct {v0}, Lti;-><init>()V

    iput-object v0, p0, LFc;->c:Lti;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object p0, p0, LFc;->c:Lti;

    iget v0, p0, Lti;->c:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v2, p0, Lti;->b:[Ljava/lang/Object;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lti;->c:I

    return-void

    :cond_1
    iget-object p0, p0, Lti;->b:[Ljava/lang/Object;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
