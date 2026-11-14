.class public final Ly8;
.super LUj;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB8;


# direct methods
.method public constructor <init>(LB8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8;->a:LB8;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Ly8;->a:LB8;

    invoke-virtual {p0}, LB8;->b()LC8;

    move-result-object p0

    invoke-virtual {p0}, LC8;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Ly8;->a:LB8;

    invoke-virtual {p0}, LB8;->b()LC8;

    move-result-object p0

    invoke-virtual {p0}, LC8;->b()V

    return-void
.end method
