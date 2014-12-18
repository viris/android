.class public Lbsh/Variable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ASSIGNMENT:I = 0x1

.field static final DECLARATION:I


# instance fields
.field lhs:Lbsh/LHS;

.field modifiers:Lbsh/Modifiers;

.field name:Ljava/lang/String;

.field type:Ljava/lang/Class;

.field typeDescriptor:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    iput-object p1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    iput-object p3, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    iput-object p2, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    iput-object p1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    iput-object p2, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    iput-object p4, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p2, p3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    iput-object p2, p0, Lbsh/Variable;->typeDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModifiers()Lbsh/Modifiers;
    .registers 2

    iget-object v0, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/Variable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeDescriptor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/Variable;->typeDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    goto :goto_a
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setValue(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "final"

    invoke-virtual {p0, v1}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    if-eqz v1, :cond_15

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Final variable, can\'t re-assign."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-nez p1, :cond_1d

    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    invoke-static {v1}, Lbsh/Primitive;->getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;

    move-result-object p1

    :cond_1d
    iget-object v1, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    invoke-virtual {v1, p1, v0}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    if-nez p2, :cond_36

    :goto_2f
    invoke-static {p1, v1, v0}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    :cond_33
    iput-object p1, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    goto :goto_26

    :cond_36
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
