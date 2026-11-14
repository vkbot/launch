.class public final LA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:LE0;

.field public final synthetic b:LB0;


# direct methods
.method public constructor <init>(LB0;LE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA0;->b:LB0;

    iput-object p2, p0, LA0;->a:LE0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, LA0;->b:LB0;

    iget-object p2, p1, LB0;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, LA0;->a:LE0;

    iget-object p4, p0, LE0;->b:LF0;

    invoke-interface {p2, p4, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, LB0;->i:Z

    if-nez p1, :cond_0

    iget-object p0, p0, LE0;->b:LF0;

    invoke-virtual {p0}, LF0;->dismiss()V

    :cond_0
    return-void
.end method
