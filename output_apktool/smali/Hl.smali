.class public final LHl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/omoda/launcher/data/RemoteApp;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LHl;->a:Landroid/widget/TextView;

    iput-object p3, p0, LHl;->b:Lcom/omoda/launcher/data/RemoteApp;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LHl;->a:Landroid/widget/TextView;

    return-object p0
.end method
