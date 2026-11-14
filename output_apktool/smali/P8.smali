.class public final LP8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/ComponentName;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lhf;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;ZZLhf;I)V
    .locals 7

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v6, p5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, LP8;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZZZLhf;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;ZZZLhf;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LP8;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LP8;->b:Landroid/content/ComponentName;

    .line 5
    iput-boolean p3, p0, LP8;->c:Z

    .line 6
    iput-boolean p4, p0, LP8;->d:Z

    .line 7
    iput-boolean p5, p0, LP8;->e:Z

    .line 8
    iput-object p6, p0, LP8;->f:Lhf;

    return-void
.end method
