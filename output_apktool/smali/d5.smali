.class public final synthetic Ld5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic a:Lb1;


# direct methods
.method public synthetic constructor <init>(Lb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5;->a:Lb1;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld5;->a:Lb1;

    invoke-virtual {p0}, Landroidx/activity/a;->reportFullyDrawn()V

    const/4 p0, 0x0

    return-object p0
.end method
