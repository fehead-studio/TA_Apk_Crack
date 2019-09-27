.class public Lcom/b/a/a/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/b/a/a/c$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/c$c$1;

    invoke-direct {v0}, Lcom/b/a/a/c$c$1;-><init>()V

    sput-object v0, Lcom/b/a/a/c$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/b/a/a/c$c;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/b/a/a/c$c;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/b/a/a/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/a/c;->getCaretPosition()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->a:I

    invoke-virtual {p1}, Lcom/b/a/a/c;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->b:I

    invoke-virtual {p1}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->c:I

    invoke-virtual {p1}, Lcom/b/a/a/c;->isSelectText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/a/c$c;->d:Z

    invoke-virtual {p1}, Lcom/b/a/a/c;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c$c;->e:I

    invoke-virtual {p1}, Lcom/b/a/a/c;->getSelectionEnd()I

    move-result p1

    iput p1, p0, Lcom/b/a/a/c$c;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/b/a/a/c$c;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/b/a/a/c$c;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/b/a/a/c$c;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/b/a/a/c$c;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/b/a/a/c$c;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/b/a/a/c$c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
