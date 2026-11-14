.class public final LNe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LNe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNe;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LNe;->a:LNe;

    return-void
.end method


# virtual methods
.method public final a(Lda;Lda;LS9;LS9;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda;",
            "Lda;",
            "LS9;",
            "LS9;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string p0, "onBackStarted"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackProgressed"

    invoke-static {p2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackInvoked"

    invoke-static {p3, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackCancelled"

    invoke-static {p4, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LMe;

    invoke-direct {p0, p1, p2, p3, p4}, LMe;-><init>(Lda;Lda;LS9;LS9;)V

    return-object p0
.end method
