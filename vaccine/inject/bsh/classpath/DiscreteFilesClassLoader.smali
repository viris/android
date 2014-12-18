.class public Lbsh/classpath/DiscreteFilesClassLoader;
.super Lbsh/classpath/BshClassLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;
    }
.end annotation


# instance fields
.field map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;


# direct methods
.method public constructor <init>(Lbsh/BshClassManager;Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;)V

    iput-object p2, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-virtual {v0, p1}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->get(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath$ClassSource;->getCode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lbsh/classpath/DiscreteFilesClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-super {p0, p1}, Lbsh/classpath/BshClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "for files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/DiscreteFilesClassLoader;->map:Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
