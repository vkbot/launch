.class public final Lqb;
.super LAb;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _invoked:I

.field public final e:LCb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lqb;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lqb;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(LCb;)V
    .locals 0

    invoke-direct {p0}, LLc;-><init>()V

    iput-object p1, p0, Lqb;->e:LCb;

    return-void
.end method


# virtual methods
.method public final bridge synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lqb;->o(Ljava/lang/Throwable;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final o(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lqb;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqb;->e:LCb;

    invoke-interface {p0, p1}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
