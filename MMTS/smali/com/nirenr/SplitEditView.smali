.class public Lcom/nirenr/SplitEditView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/SplitEditView$EditDialog;,
        Lcom/nirenr/SplitEditView$OnSaveListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/GridView;

.field private d:Lcom/androlua/LuaEditor;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcom/nirenr/SplitEditView$OnSaveListener;

.field private i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    const-string v1, ""

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nirenr/SplitEditView;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nirenr/SplitEditView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/SplitEditView;->e:I

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    iput-object p0, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/GridView;

    invoke-direct {v3, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v3, Lcom/androlua/LuaEditor;

    invoke-direct {v3, p1}, Lcom/androlua/LuaEditor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u5168\u6587"

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-string v3, "\u6309\u6bb5"

    aput-object v3, v0, v1

    const-string v1, "\u6309\u884c"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "\u6309\u53e5"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "\u6309\u5b57"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "\u786e\u5b9a"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/SplitEditView;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v5}, Lcom/androlua/LuaEditor;->setVisibility(I)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/nirenr/SplitEditView;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nirenr/SplitEditView;->setOnSaveListener(Lcom/nirenr/SplitEditView$OnSaveListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Lcom/nirenr/SplitEditView;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq v1, p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private b()V
    .locals 5

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/nirenr/SplitEditView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 5

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v1, "\n"

    invoke-direct {p0, v0, v1}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic c(Lcom/nirenr/SplitEditView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/nirenr/SplitEditView;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    return-object p0
.end method

.method private d()V
    .locals 5

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v1, "\\. |[\u3002\uff1f\uff01\uff0c\n \u201c\u201d,\uff1a\uff1b;\\?!]+"

    invoke-direct {p0, v0, v1}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private e()V
    .locals 5

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    iget-object v1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const-string v2, "\\n{2,10}"

    invoke-direct {p0, v1, v2}, Lcom/nirenr/SplitEditView;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/SplitEditView;->a:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private f()V
    .locals 1

    iget v0, p0, Lcom/nirenr/SplitEditView;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShowEdit(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->isShowEdit()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaEditor;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p1}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/f;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->c:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v1}, Lcom/androlua/LuaEditor;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->isShowEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/SplitEditView;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v5, v4, :cond_1

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/nirenr/SplitEditView;->e:I

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/SplitEditView;->h:Lcom/nirenr/SplitEditView$OnSaveListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->h:Lcom/nirenr/SplitEditView$OnSaveListener;

    invoke-virtual {p0}, Lcom/nirenr/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nirenr/SplitEditView$OnSaveListener;->onSave(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->b()V

    return-void

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->d()V

    return-void

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->c()V

    return-void

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->e()V

    return-void

    :pswitch_5
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/nirenr/SplitEditView;->setShowEdit(Z)V

    iput v0, p0, Lcom/nirenr/SplitEditView;->e:I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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

    new-instance p1, Lcom/nirenr/SplitEditView$EditDialog;

    invoke-direct {p1, p0, p3}, Lcom/nirenr/SplitEditView$EditDialog;-><init>(Lcom/nirenr/SplitEditView;I)V

    invoke-virtual {p1}, Lcom/nirenr/SplitEditView$EditDialog;->show()V

    return-void
.end method

.method public setOnSaveListener(Lcom/nirenr/SplitEditView$OnSaveListener;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->h:Lcom/nirenr/SplitEditView$OnSaveListener;

    const/4 v0, 0x5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/SplitEditView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/nirenr/SplitEditView;->d:Lcom/androlua/LuaEditor;

    iget-object v0, p0, Lcom/nirenr/SplitEditView;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nirenr/SplitEditView;->a()V

    return-void
.end method
