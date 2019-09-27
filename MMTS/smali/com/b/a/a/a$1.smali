.class Lcom/b/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-static {p1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object p1

    iget-object p3, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-static {p3}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a;)Lcom/b/a/a/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/b/a/a/c;->getCaretPosition()I

    move-result p3

    iget-object p4, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-static {p4}, Lcom/b/a/a/a;->b(Lcom/b/a/a/a;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-static {p4}, Lcom/b/a/a/a;->b(Lcom/b/a/a/a;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/b/a/a/c;->replaceText(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-static {p1}, Lcom/b/a/a/a;->c(Lcom/b/a/a/a;)Lcom/b/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a$a;->a()V

    iget-object p1, p0, Lcom/b/a/a/a$1;->a:Lcom/b/a/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/a;->b()V

    return-void
.end method
