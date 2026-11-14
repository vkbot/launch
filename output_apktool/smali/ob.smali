.class public final Lob;
.super Lhh;
.source "SourceFile"


# instance fields
.field public b:I

.field public final synthetic c:Lha;

.field public final synthetic d:LS5;


# direct methods
.method public constructor <init>(LS5;LS5;Lha;)V
    .locals 0

    iput-object p3, p0, Lob;->c:Lha;

    iput-object p2, p0, Lob;->d:LS5;

    invoke-direct {p0, p1}, Lhh;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lob;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lob;->b:I

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v1, p0, Lob;->b:I

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Lob;->c:Lha;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfm;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lob;->d:LS5;

    invoke-interface {p1, v0, p0}, Lha;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
