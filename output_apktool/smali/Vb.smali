.class public final enum LVb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LVb;

.field public static final Companion:LTb;

.field public static final enum ON_ANY:LVb;

.field public static final enum ON_CREATE:LVb;

.field public static final enum ON_DESTROY:LVb;

.field public static final enum ON_PAUSE:LVb;

.field public static final enum ON_RESUME:LVb;

.field public static final enum ON_START:LVb;

.field public static final enum ON_STOP:LVb;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LVb;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVb;->ON_CREATE:LVb;

    new-instance v1, LVb;

    const-string v2, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LVb;->ON_START:LVb;

    new-instance v2, LVb;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LVb;->ON_RESUME:LVb;

    new-instance v3, LVb;

    const-string v4, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LVb;->ON_PAUSE:LVb;

    new-instance v4, LVb;

    const-string v5, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LVb;->ON_STOP:LVb;

    new-instance v5, LVb;

    const-string v6, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LVb;->ON_DESTROY:LVb;

    new-instance v6, LVb;

    const-string v7, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LVb;->ON_ANY:LVb;

    filled-new-array/range {v0 .. v6}, [LVb;

    move-result-object v0

    sput-object v0, LVb;->$VALUES:[LVb;

    new-instance v0, LTb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LVb;->Companion:LTb;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LVb;
    .locals 1

    const-class v0, LVb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVb;

    return-object p0
.end method

.method public static values()[LVb;
    .locals 1

    sget-object v0, LVb;->$VALUES:[LVb;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVb;

    return-object v0
.end method


# virtual methods
.method public final a()LWb;
    .locals 2

    sget-object v0, LUb;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has no target state"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, LWb;->a:LWb;

    return-object p0

    :pswitch_1
    sget-object p0, LWb;->e:LWb;

    return-object p0

    :pswitch_2
    sget-object p0, LWb;->d:LWb;

    return-object p0

    :pswitch_3
    sget-object p0, LWb;->c:LWb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
