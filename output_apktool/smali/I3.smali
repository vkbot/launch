.class public abstract LI3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIb;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:LIb;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3;->b:Ljava/lang/Object;

    iput-object p2, p0, LI3;->c:Ljava/lang/Class;

    iput-object p3, p0, LI3;->d:Ljava/lang/String;

    iput-object p4, p0, LI3;->e:Ljava/lang/String;

    iput-boolean p5, p0, LI3;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lu4;
    .locals 1

    iget-object v0, p0, LI3;->c:Ljava/lang/Class;

    iget-boolean p0, p0, LI3;->f:Z

    if-eqz p0, :cond_0

    sget-object p0, LLg;->a:LMg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LXe;

    invoke-direct {p0, v0}, LXe;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    sget-object p0, LLg;->a:LMg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lv4;

    invoke-direct {p0, v0}, Lv4;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object p0
.end method
