.class public final synthetic LV0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:LY0;

.field public final synthetic b:Lu2;


# direct methods
.method public synthetic constructor <init>(LY0;Lu2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0;->a:LY0;

    iput-object p2, p0, LV0;->b:Lu2;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, LV0;->a:LY0;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV0;->b:Lu2;

    const-string v0, "$item"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LY0;->f:Lel;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p1, p0}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
