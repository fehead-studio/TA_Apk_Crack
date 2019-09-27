.class public Lcom/androlua/LuaEditor;
.super Lcom/b/a/a/c;


# instance fields
.field private A:Lcom/b/a/b/l;

.field private B:I

.field private C:Ljava/lang/String;

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/a/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->x:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "android.jar"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/LuaEditor;->v:Landroid/content/Context;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->x:Ljava/lang/String;

    const-string v2, "default.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->x:Ljava/lang/String;

    const-string v2, "bold.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setBoldTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->x:Ljava/lang/String;

    const-string v2, "italic.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setItalicTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget v0, Lcom/androlua/LuaEditor;->d:I

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setTextSize(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setShowLineNumbers(Z)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setHighlightCurrentRow(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setAutoIndentWidth(I)V

    invoke-static {}, Lcom/b/a/b/i;->g()Lcom/b/a/b/h;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/b/k;->a(Lcom/b/a/b/h;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/b/a/a/h;

    invoke-direct {v2, p0}, Lcom/b/a/a/h;-><init>(Lcom/b/a/a/c;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/androlua/LuaEditor;->setNavigationMethod(Lcom/b/a/a/g;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/b/a/a/i;

    invoke-direct {v2, p0}, Lcom/b/a/a/i;-><init>(Lcom/b/a/a/c;)V

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/androlua/LuaEditor;->v:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0xff00ff

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setTextColor(I)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTextHighlightColor(I)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010099
    .end array-data
.end method

.method static synthetic a(Lcom/androlua/LuaEditor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditor;->v:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaEditor;)Lcom/b/a/b/f;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditor;->h:Lcom/b/a/b/f;

    return-object p0
.end method

.method static synthetic c(Lcom/androlua/LuaEditor;)Lcom/b/a/b/f;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditor;->h:Lcom/b/a/b/f;

    return-object p0
.end method


# virtual methods
.method public addNames([Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/b/i;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v2}, Lcom/b/a/b/i;->b([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/b/k;->a(Lcom/b/a/b/h;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    return-void
.end method

.method public addPackage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/i;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/b/k;->a(Lcom/b/a/b/h;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    return-void
.end method

.method public findNext(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/androlua/LuaEditor;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->C:Ljava/lang/String;

    iput v1, p0, Lcom/androlua/LuaEditor;->B:I

    :cond_0
    new-instance p1, Lcom/b/a/b/l;

    invoke-direct {p1}, Lcom/b/a/b/l;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor;->A:Lcom/b/a/b/l;

    iget-object v4, p0, Lcom/androlua/LuaEditor;->C:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaEditor;->A:Lcom/b/a/b/l;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object v3

    iget v5, p0, Lcom/androlua/LuaEditor;->B:I

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/f;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/b/a/b/l;->a(Lcom/b/a/b/f;Ljava/lang/String;IIZZ)I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaEditor;->B:I

    iget p1, p0, Lcom/androlua/LuaEditor;->B:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor;->v:Landroid/content/Context;

    const-string v0, "\u672a\u627e\u5230"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput v1, p0, Lcom/androlua/LuaEditor;->B:I

    return v1

    :cond_2
    iget p1, p0, Lcom/androlua/LuaEditor;->B:I

    iget-object v0, p0, Lcom/androlua/LuaEditor;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaEditor;->setSelection(II)V

    iget p1, p0, Lcom/androlua/LuaEditor;->B:I

    iget-object v0, p0, Lcom/androlua/LuaEditor;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaEditor;->B:I

    iget p1, p0, Lcom/androlua/LuaEditor;->B:I

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaEditor;->h:Lcom/b/a/b/f;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getSelectionStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/b/a/b/f;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/b/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public gotoLine()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startGotoMode()V

    return-void
.end method

.method public gotoLine(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->f()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditor;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->f()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->e(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0, p2}, Lcom/androlua/LuaEditor;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x23

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->cut()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->paste()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->search()V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->format()V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->gotoLine()V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->copy()V

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->selectAll()V

    return v1

    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/b/a/a/c;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/b/a/a/c;->onLayout(ZIIII)V

    iget p1, p0, Lcom/androlua/LuaEditor;->z:I

    if-eqz p1, :cond_0

    if-lez p4, :cond_0

    iget p1, p0, Lcom/androlua/LuaEditor;->z:I

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaEditor;->z:I

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaEditor;->w:Ljava/lang/String;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/f;->m()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    :cond_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/i;

    invoke-virtual {v0, p1}, Lcom/b/a/b/i;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/b/k;->a(Lcom/b/a/b/h;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    return-void
.end method

.method public save()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/f;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return v0
.end method

.method public search()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startFindMode()V

    return-void
.end method

.method public setBackgoudColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->b:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setBasewordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->l:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setCommentColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->j:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/b/a/b/c;

    invoke-direct {p1}, Lcom/b/a/b/c;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setColorScheme(Lcom/b/a/b/b;)V

    return-void

    :cond_0
    new-instance p1, Lcom/b/a/b/d;

    invoke-direct {p1}, Lcom/b/a/b/d;-><init>()V

    goto :goto_0

    return-void
.end method

.method public setKeywordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->k:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setPanelBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->s:Lcom/b/a/a/a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/a;->b(I)V

    return-void
.end method

.method public setPanelTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->s:Lcom/b/a/a/a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/a;->a(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    return-void

    :cond_0
    iput p1, p0, Lcom/androlua/LuaEditor;->z:I

    return-void
.end method

.method public setStringColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->n:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0, p0}, Lcom/b/a/b/e;-><init>(Lcom/b/a/b/e$a;)V

    iget-boolean v1, p0, Lcom/androlua/LuaEditor;->u:Z

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/b/a/b/e;->a(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/b/a/b/f;

    invoke-direct {p1, v0}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/e;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setDocumentProvider(Lcom/b/a/b/f;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getLength()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/androlua/LuaEditor;->replaceText(IILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->a:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setTextHighlightColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->d:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setUserwordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getColorScheme()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b$a;->m:Lcom/b/a/b/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaEditor;->u:Z

    invoke-super {p0, p1}, Lcom/b/a/a/c;->setWordWrap(Z)V

    return-void
.end method

.method public startFindMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$2;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startGotoMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$1;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->createDocumentProvider()Lcom/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/f;->l()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->invalidate()V

    :cond_0
    return-void
.end method
