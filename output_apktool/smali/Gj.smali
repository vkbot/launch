.class public abstract LGj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz3;

.field public static final b:Lz3;

.field public static final c:Lz3;

.field public static final d:Lz3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz3;-><init>(LT7;Z)V

    sput-object v0, LGj;->a:Lz3;

    new-instance v0, Lz3;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lz3;-><init>(LT7;Z)V

    sput-object v0, LGj;->b:Lz3;

    new-instance v0, Lz3;

    sget-object v1, LT7;->h:LT7;

    invoke-direct {v0, v1, v2}, Lz3;-><init>(LT7;Z)V

    sput-object v0, LGj;->c:Lz3;

    new-instance v0, Lz3;

    invoke-direct {v0, v1, v3}, Lz3;-><init>(LT7;Z)V

    sput-object v0, LGj;->d:Lz3;

    return-void
.end method
