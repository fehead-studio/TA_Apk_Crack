.class Lcom/b/a/a/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/c;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/SpannableStringBuilder;

.field final synthetic b:Z

.field final synthetic c:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;Landroid/text/SpannableStringBuilder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$9;->c:Lcom/b/a/a/c;

    iput-object p2, p0, Lcom/b/a/a/c$9;->a:Landroid/text/SpannableStringBuilder;

    iput-boolean p3, p0, Lcom/b/a/a/c$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/b/a/a/c$9;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/b/a/a/c$9;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c$9;->c:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/b/a/a/c$a;->a(C)V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$9;->c:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/b/a/a/c$9;->a:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b/a/a/c$a;->a(C)V

    :cond_1
    return-void
.end method
