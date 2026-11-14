.class public final LIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc;


# static fields
.field public static final h:LIf;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/a;

.field public final g:LO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIf;

    invoke-direct {v0}, LIf;-><init>()V

    sput-object v0, LIf;->h:LIf;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LIf;->c:Z

    iput-boolean v0, p0, LIf;->d:Z

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, LIf;->f:Landroidx/lifecycle/a;

    new-instance v0, LO;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, LO;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LIf;->g:LO;

    return-void
.end method


# virtual methods
.method public final d()Landroidx/lifecycle/a;
    .locals 0

    iget-object p0, p0, LIf;->f:Landroidx/lifecycle/a;

    return-object p0
.end method
