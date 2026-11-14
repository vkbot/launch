.class public final Ltm;
.super Lg6;
.source "SourceFile"


# static fields
.field public static final c:Ltm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltm;

    invoke-direct {v0}, Lg6;-><init>()V

    sput-object v0, Ltm;->c:Ltm;

    return-void
.end method


# virtual methods
.method public final g(Le6;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, LT6;->d:LT6;

    sget-object p1, LCj;->h:LTh;

    iget-object p0, p0, Lzh;->c:Lj6;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6;->b(Ljava/lang/Runnable;LTh;Z)V

    return-void
.end method
