.class Lbsh/CollectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field a:I

.field b:I

.field private final c:Ljava/lang/Object;

.field private final d:Lbsh/CollectionManager$BasicBshIterator;


# direct methods
.method constructor <init>(Lbsh/CollectionManager$BasicBshIterator;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/CollectionManager$1;->d:Lbsh/CollectionManager$BasicBshIterator;

    iput-object p2, p0, Lbsh/CollectionManager$1;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lbsh/CollectionManager$1;->a:I

    iget-object p1, p0, Lbsh/CollectionManager$1;->c:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lbsh/CollectionManager$1;->b:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lbsh/CollectionManager$1;->a:I

    iget v1, p0, Lbsh/CollectionManager$1;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbsh/CollectionManager$1;->c:Ljava/lang/Object;

    iget v1, p0, Lbsh/CollectionManager$1;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/CollectionManager$1;->a:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
