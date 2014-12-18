.class public Lxyzkwjbl/viris/service/SocketService$ServerThread;
.super Ljava/lang/Object;
.source "SocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyzkwjbl/viris/service/SocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lxyzkwjbl/viris/service/SocketService;


# direct methods
.method public constructor <init>(Lxyzkwjbl/viris/service/SocketService;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    new-instance v6, Ljava/net/ServerSocket;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->port:I
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$0()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v5, v6}, Lxyzkwjbl/viris/service/SocketService;->access$1(Lxyzkwjbl/viris/service/SocketService;Ljava/net/ServerSocket;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    new-instance v6, Lbsh/Interpreter;

    invoke-direct {v6}, Lbsh/Interpreter;-><init>()V

    invoke-static {v5, v6}, Lxyzkwjbl/viris/service/SocketService;->access$2(Lxyzkwjbl/viris/service/SocketService;Lbsh/Interpreter;)V

    .line 164
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " waiting for connection"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_40
    sget-boolean v5, Lxyzkwjbl/viris/service/SocketService;->connected:Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_148

    if-nez v5, :cond_45

    .line 265
    :goto_44
    return-void

    .line 168
    :cond_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->server:Ljava/net/ServerSocket;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$4(Lxyzkwjbl/viris/service/SocketService;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v11

    .line 169
    .local v11, "client":Ljava/net/Socket;
    new-instance v15, Ljava/io/ObjectInputStream;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v15, "in":Ljava/io/ObjectInputStream;
    new-instance v19, Ljava/io/ObjectOutputStream;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v19, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lxyzkwjbl/viris/service/Request;

    .line 172
    .local v20, "request":Lxyzkwjbl/viris/service/Request;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v23, "units":Ljava/util/List;, "Ljava/util/List<Lxyzkwjbl/viris/service/TransactionUnit;>;"
    move-object/from16 v0, v20

    iget-object v5, v0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    const-string v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_181

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_8c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_bd

    .line 185
    move-object/from16 v0, v20

    iget-object v0, v0, Lxyzkwjbl/viris/service/Request;->payload:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 186
    .local v21, "template":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v5

    const-string v6, "template"

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .end local v21    # "template":Ljava/lang/String;
    :cond_a7
    :goto_a7
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 245
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V

    .line 247
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_40

    .line 249
    .end local v11    # "client":Ljava/net/Socket;
    .end local v15    # "in":Ljava/io/ObjectInputStream;
    .end local v19    # "out":Ljava/io/ObjectOutputStream;
    .end local v20    # "request":Lxyzkwjbl/viris/service/Request;
    .end local v23    # "units":Ljava/util/List;, "Ljava/util/List<Lxyzkwjbl/viris/service/TransactionUnit;>;"
    :catch_bb
    move-exception v5

    goto :goto_40

    .line 175
    .restart local v11    # "client":Ljava/net/Socket;
    .restart local v15    # "in":Ljava/io/ObjectInputStream;
    .restart local v19    # "out":Ljava/io/ObjectOutputStream;
    .restart local v20    # "request":Lxyzkwjbl/viris/service/Request;
    .restart local v23    # "units":Ljava/util/List;, "Ljava/util/List<Lxyzkwjbl/viris/service/TransactionUnit;>;"
    :cond_bd
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 176
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 177
    .local v7, "obj":Ljava/lang/Object;
    move-object/from16 v3, v16

    .line 178
    .local v3, "name":Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "arr":[Ljava/lang/String;
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v10, v5

    .line 180
    .local v4, "shortName":Ljava/lang/String;
    new-instance v2, Lxyzkwjbl/viris/service/TransactionUnit;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "entry point "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "object"

    invoke-direct/range {v2 .. v9}, Lxyzkwjbl/viris/service/TransactionUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v2, "unit":Lxyzkwjbl/viris/service/TransactionUnit;
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_114
    .catch Ljava/io/EOFException; {:try_start_45 .. :try_end_114} :catch_bb
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_114} :catch_116
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_114} :catch_148

    goto/16 :goto_8c

    .line 251
    .end local v2    # "unit":Lxyzkwjbl/viris/service/TransactionUnit;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "shortName":Ljava/lang/String;
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v10    # "arr":[Ljava/lang/String;
    .end local v11    # "client":Ljava/net/Socket;
    .end local v15    # "in":Ljava/io/ObjectInputStream;
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "out":Ljava/io/ObjectOutputStream;
    .end local v20    # "request":Lxyzkwjbl/viris/service/Request;
    .end local v23    # "units":Ljava/util/List;, "Ljava/util/List<Lxyzkwjbl/viris/service/TransactionUnit;>;"
    :catch_116
    move-exception v12

    .line 252
    .local v12, "e":Ljava/io/IOException;
    :try_start_117
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "IOException. The error is: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_146} :catch_148

    goto/16 :goto_40

    .line 257
    .end local v12    # "e":Ljava/io/IOException;
    :catch_148
    move-exception v12

    .line 259
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " Should not happen... The error is: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    invoke-virtual {v5}, Lxyzkwjbl/viris/service/SocketService;->stopSocketServer()V

    goto/16 :goto_44

    .line 188
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "client":Ljava/net/Socket;
    .restart local v15    # "in":Ljava/io/ObjectInputStream;
    .restart local v19    # "out":Ljava/io/ObjectOutputStream;
    .restart local v20    # "request":Lxyzkwjbl/viris/service/Request;
    .restart local v23    # "units":Ljava/util/List;, "Ljava/util/List<Lxyzkwjbl/viris/service/TransactionUnit;>;"
    :cond_181
    :try_start_181
    move-object/from16 v0, v20

    iget-object v5, v0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    const-string v6, "stop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c0

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    invoke-virtual {v5}, Lxyzkwjbl/viris/service/SocketService;->stopSocketServer()V

    .line 191
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " Service stoped"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a7

    .line 192
    :cond_1c0
    move-object/from16 v0, v20

    iget-object v5, v0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    const-string v6, "watch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c9
    .catch Ljava/io/EOFException; {:try_start_181 .. :try_end_1c9} :catch_bb
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_1c9} :catch_116
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1c9} :catch_148

    move-result v5

    if-eqz v5, :cond_224

    .line 193
    const/16 v18, 0x0

    .line 195
    .local v18, "object":Ljava/lang/Object;
    :try_start_1ce
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lxyzkwjbl/viris/service/Request;->payload:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1dd
    .catch Lbsh/EvalError; {:try_start_1ce .. :try_end_1dd} :catch_1f3
    .catch Ljava/io/EOFException; {:try_start_1ce .. :try_end_1dd} :catch_bb
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1dd} :catch_116
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1dd} :catch_148

    move-result-object v18

    .line 200
    .end local v18    # "object":Ljava/lang/Object;
    :goto_1de
    :try_start_1de
    move-object/from16 v0, v20

    iget-object v2, v0, Lxyzkwjbl/viris/service/Request;->watch:Lxyzkwjbl/viris/service/TransactionUnit;

    .line 201
    .restart local v2    # "unit":Lxyzkwjbl/viris/service/TransactionUnit;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lxyzkwjbl/viris/service/TransactionUnit;->value:Ljava/lang/String;

    .line 202
    move-object/from16 v0, v18

    iput-object v0, v2, Lxyzkwjbl/viris/service/TransactionUnit;->ovalue:Ljava/lang/Object;

    .line 203
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 196
    .end local v2    # "unit":Lxyzkwjbl/viris/service/TransactionUnit;
    .restart local v18    # "object":Ljava/lang/Object;
    :catch_1f3
    move-exception v12

    .line 197
    .local v12, "e":Lbsh/EvalError;
    invoke-virtual {v12}, Lbsh/EvalError;->printStackTrace()V

    .line 198
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " BSH Eval error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1de

    .line 208
    .end local v12    # "e":Lbsh/EvalError;
    .end local v18    # "object":Ljava/lang/Object;
    :cond_224
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Your command is: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v8, v0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_23c
    .catch Ljava/io/EOFException; {:try_start_1de .. :try_end_23c} :catch_bb
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_23c} :catch_116
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_23c} :catch_148

    .line 209
    const/16 v18, 0x0

    .line 211
    .restart local v18    # "object":Ljava/lang/Object;
    :try_start_23e
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_24d
    .catch Lbsh/EvalError; {:try_start_23e .. :try_end_24d} :catch_27a
    .catch Ljava/io/EOFException; {:try_start_23e .. :try_end_24d} :catch_bb
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_24d} :catch_116
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_24d} :catch_148

    move-result-object v18

    .line 219
    .end local v18    # "object":Ljava/lang/Object;
    :goto_24e
    :try_start_24e
    move-object/from16 v0, v18

    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_a7

    .line 221
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 222
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a7

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lxyzkwjbl/viris/service/TransactionUnit;

    if-eqz v5, :cond_a7

    .line 223
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_26c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-lt v14, v5, :cond_2ab

    .line 239
    move-object/from16 v0, v17

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v23, v0

    goto/16 :goto_a7

    .line 212
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v18    # "object":Ljava/lang/Object;
    :catch_27a
    move-exception v12

    .line 213
    .restart local v12    # "e":Lbsh/EvalError;
    invoke-virtual {v12}, Lbsh/EvalError;->printStackTrace()V

    .line 214
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " BSH Eval error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24e

    .line 224
    .end local v12    # "e":Lbsh/EvalError;
    .end local v18    # "object":Ljava/lang/Object;
    .restart local v14    # "i":I
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2ab
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lxyzkwjbl/viris/service/TransactionUnit;

    .line 225
    .local v22, "tu":Lxyzkwjbl/viris/service/TransactionUnit;
    move-object/from16 v0, v22

    iget-object v5, v0, Lxyzkwjbl/viris/service/TransactionUnit;->fieldType:Ljava/lang/String;

    const-string v6, "object"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2bc
    .catch Ljava/io/EOFException; {:try_start_24e .. :try_end_2bc} :catch_bb
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_2bc} :catch_116
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_2bc} :catch_148

    move-result v5

    if-eqz v5, :cond_2d2

    .line 227
    :try_start_2bf
    move-object/from16 v0, p0

    iget-object v5, v0, Lxyzkwjbl/viris/service/SocketService$ServerThread;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v5}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lxyzkwjbl/viris/service/TransactionUnit;->bshName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Lxyzkwjbl/viris/service/TransactionUnit;->ovalue:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_2d2} :catch_2d5
    .catch Ljava/io/EOFException; {:try_start_2bf .. :try_end_2d2} :catch_bb
    .catch Ljava/io/IOException; {:try_start_2bf .. :try_end_2d2} :catch_116

    .line 223
    :cond_2d2
    :goto_2d2
    add-int/lit8 v14, v14, 0x1

    goto :goto_26c

    .line 228
    :catch_2d5
    move-exception v13

    .line 229
    .local v13, "exception":Ljava/lang/Exception;
    :try_start_2d6
    const-string v5, "SocketService"

    new-instance v6, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Interpreter couldn\'t set value"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, v22

    iget-object v5, v0, Lxyzkwjbl/viris/service/TransactionUnit;->ovalue:Ljava/lang/Object;

    if-eqz v5, :cond_329

    .line 231
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    iget-object v8, v0, Lxyzkwjbl/viris/service/TransactionUnit;->bshName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v8, v0, Lxyzkwjbl/viris/service/TransactionUnit;->ovalue:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2d2

    .line 233
    :cond_329
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    iget-object v8, v0, Lxyzkwjbl/viris/service/TransactionUnit;->bshName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_345
    .catch Ljava/io/EOFException; {:try_start_2d6 .. :try_end_345} :catch_bb
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_345} :catch_116
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_345} :catch_148

    goto :goto_2d2
.end method
