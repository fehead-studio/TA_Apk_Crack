.class Lcom/baidu/mobstat/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ch;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/baidu/mobstat/ExtraInfo;

.field private o:Lcom/baidu/mobstat/cl;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ch;JLandroid/content/Context;Landroid/support/a/a/a;JLandroid/content/Context;Landroid/support/a/a/a;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Lcom/baidu/mobstat/cl;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p2

    iput-wide v1, v0, Lcom/baidu/mobstat/cn;->b:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/baidu/mobstat/cn;->f:J

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p4

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->c:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p8

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->g:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p5

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->d:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p9

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->h:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p12

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->i:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->e:Ljava/lang/ref/WeakReference;

    move v1, p10

    iput v1, v0, Lcom/baidu/mobstat/cn;->j:I

    move-object v1, p11

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->l:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/baidu/mobstat/cn;->m:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/mobstat/cn;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v1, :cond_a

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "onPageStart() or onPageEnd() install error."

    :goto_0
    invoke-static {v1}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "onPause() or onResume() install error."

    goto :goto_0

    return-void

    :cond_2
    const-string v2, ""

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->b:J

    iget-wide v5, v0, Lcom/baidu/mobstat/cn;->f:J

    sub-long v7, v3, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    iget-wide v4, v4, Lcom/baidu/mobstat/cl;->d:J

    iget-object v6, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    iget-wide v6, v6, Lcom/baidu/mobstat/cl;->c:J

    sub-long v8, v4, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    iget-object v5, v5, Lcom/baidu/mobstat/cl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    const-wide/16 v4, 0x14

    cmp-long v6, v8, v4

    if-gez v6, :cond_3

    const-string v1, "page time little than 20 mills."

    :goto_1
    invoke-static {v1}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    move-wide v13, v8

    goto :goto_2

    :cond_4
    instance-of v4, v1, Landroid/app/Activity;

    if-nez v4, :cond_5

    const-string v1, "onPause, pause is not a Activity"

    goto :goto_1

    :cond_5
    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    move-wide v13, v7

    :goto_2
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v11, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new page view, page name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stay time = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "(ms)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    if-nez v2, :cond_8

    iput-object v10, v0, Lcom/baidu/mobstat/cn;->l:Ljava/lang/String;

    :cond_8
    new-instance v2, Lcom/baidu/mobstat/cg;

    iget-object v12, v0, Lcom/baidu/mobstat/cn;->l:Ljava/lang/String;

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->f:J

    iget-boolean v5, v0, Lcom/baidu/mobstat/cn;->m:Z

    iget-object v6, v0, Lcom/baidu/mobstat/cn;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object v9, v2

    move-wide v15, v3

    move/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v9 .. v18}, Lcom/baidu/mobstat/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    iget-object v3, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v3}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cg;)V

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->k:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v2}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mobstat/cn;->o:Lcom/baidu/mobstat/cl;

    iget-wide v3, v3, Lcom/baidu/mobstat/cl;->d:J

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v2}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v2

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->b:J

    :goto_3
    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/cf;->d(J)V

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    goto/16 :goto_6

    :cond_a
    :goto_4
    const-string v1, "onPause, WeakReference is already been released"

    goto/16 :goto_1

    :cond_b
    iget v1, v0, Lcom/baidu/mobstat/cn;->j:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/a;

    iget-object v3, v0, Lcom/baidu/mobstat/cn;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/a/a/a;

    if-eqz v1, :cond_a

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    if-eq v1, v3, :cond_d

    :goto_5
    const-string v1, "onPause() or onResume() install error."

    goto/16 :goto_1

    :cond_d
    const-string v3, ""

    invoke-virtual {v1}, Landroid/support/a/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    move-object v6, v3

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->b:J

    iget-wide v7, v0, Lcom/baidu/mobstat/cn;->f:J

    sub-long v9, v3, v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment new page view, page name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stay time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "(ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mobstat/cg;

    iget-wide v11, v0, Lcom/baidu/mobstat/cn;->f:J

    iget-boolean v3, v0, Lcom/baidu/mobstat/cn;->m:Z

    iget-object v13, v0, Lcom/baidu/mobstat/cn;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object v4, v2

    move-object v5, v7

    move-wide v8, v9

    move-wide v10, v11

    move v12, v3

    invoke-direct/range {v4 .. v13}, Lcom/baidu/mobstat/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    iget-object v3, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v3}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cg;)V

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v2}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v2

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->b:J

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/cf;->d(J)V

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-virtual {v1}, Landroid/support/a/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    :goto_6
    invoke-static {v2, v1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Landroid/content/Context;)V

    return-void

    :cond_f
    iget v1, v0, Lcom/baidu/mobstat/cn;->j:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    iget-object v3, v0, Lcom/baidu/mobstat/cn;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    if-eqz v1, :cond_a

    if-nez v3, :cond_10

    goto/16 :goto_4

    :cond_10
    if-eq v1, v3, :cond_11

    goto/16 :goto_5

    :cond_11
    const-string v3, ""

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_12
    move-object v6, v3

    iget-wide v3, v0, Lcom/baidu/mobstat/cn;->b:J

    iget-wide v7, v0, Lcom/baidu/mobstat/cn;->f:J

    sub-long v9, v3, v7

    invoke-static {v1}, Lcom/baidu/mobstat/ch;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_13

    const-string v1, "getContxtFromReverse faild."

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.app.Fragment new page view, page name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; stay time = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "(ms)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/mobstat/cg;

    iget-wide v11, v0, Lcom/baidu/mobstat/cn;->f:J

    iget-boolean v2, v0, Lcom/baidu/mobstat/cn;->m:Z

    iget-object v13, v0, Lcom/baidu/mobstat/cn;->n:Lcom/baidu/mobstat/ExtraInfo;

    move-object v4, v1

    move-object v5, v7

    move-wide v8, v9

    move-wide v10, v11

    move v12, v2

    invoke-direct/range {v4 .. v13}, Lcom/baidu/mobstat/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V

    iget-object v2, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v2}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cf;->a(Lcom/baidu/mobstat/cg;)V

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v1}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;

    move-result-object v1

    iget-wide v4, v0, Lcom/baidu/mobstat/cn;->b:J

    invoke-virtual {v1, v4, v5}, Lcom/baidu/mobstat/cf;->d(J)V

    iget-object v1, v0, Lcom/baidu/mobstat/cn;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v1, v3}, Lcom/baidu/mobstat/ch;->a(Lcom/baidu/mobstat/ch;Landroid/content/Context;)V

    :cond_14
    return-void
.end method
