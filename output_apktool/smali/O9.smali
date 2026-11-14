.class public final LO9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lx9;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:LWb;

.field public h:LWb;


# direct methods
.method public constructor <init>(ILx9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LO9;->a:I

    iput-object p2, p0, LO9;->b:Lx9;

    sget-object p1, LWb;->e:LWb;

    iput-object p1, p0, LO9;->g:LWb;

    iput-object p1, p0, LO9;->h:LWb;

    return-void
.end method
