.class public final synthetic Lvh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;


# instance fields
.field public final synthetic a:Lh1;


# direct methods
.method public synthetic constructor <init>(Lh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvh;->a:Lh1;

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 0

    iget-object p0, p0, Lvh;->a:Lh1;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LVb;->ON_START:LVb;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh1;->e:Z

    goto :goto_0

    :cond_0
    sget-object p1, LVb;->ON_STOP:LVb;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh1;->e:Z

    :cond_1
    :goto_0
    return-void
.end method
