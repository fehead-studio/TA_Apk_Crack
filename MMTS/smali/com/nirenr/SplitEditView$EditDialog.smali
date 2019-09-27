.class Lcom/nirenr/SplitEditView$EditDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/SplitEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/SplitEditView;

.field private final b:I

.field private final c:Landroid/widget/EditText;

.field private d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/nirenr/SplitEditView;I)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:I

    new-instance v0, Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->c(Lcom/nirenr/SplitEditView;)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-static {p1}, Lcom/nirenr/SplitEditView;->d(Lcom/nirenr/SplitEditView;)Landroid/widget/GridView;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/SplitEditView$EditDialog;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-static {v1}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8f93\u5165\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/nirenr/SplitEditView$EditDialog;->a:Lcom/nirenr/SplitEditView;

    invoke-static {v1}, Lcom/nirenr/SplitEditView;->a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Service;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x7da

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView$EditDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
