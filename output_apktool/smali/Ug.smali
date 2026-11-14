.class public final LUg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    new-instance p0, LTg;

    invoke-direct {p0, p1}, LTg;-><init>(Ljava/lang/Runnable;)V

    return-object p0
.end method
