package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Vb {
    private static final /* synthetic */ Vb[] $VALUES;
    public static final Tb Companion;
    public static final Vb ON_ANY;
    public static final Vb ON_CREATE;
    public static final Vb ON_DESTROY;
    public static final Vb ON_PAUSE;
    public static final Vb ON_RESUME;
    public static final Vb ON_START;
    public static final Vb ON_STOP;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, Tb] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, Vb] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, Vb] */
    static {
        ?? r0 = new Enum("ON_CREATE", 0);
        ON_CREATE = r0;
        ?? r1 = new Enum("ON_START", 1);
        ON_START = r1;
        ?? r2 = new Enum("ON_RESUME", 2);
        ON_RESUME = r2;
        ?? r3 = new Enum("ON_PAUSE", 3);
        ON_PAUSE = r3;
        ?? r4 = new Enum("ON_STOP", 4);
        ON_STOP = r4;
        ?? r5 = new Enum("ON_DESTROY", 5);
        ON_DESTROY = r5;
        ?? r6 = new Enum("ON_ANY", 6);
        ON_ANY = r6;
        $VALUES = new Vb[]{r0, r1, r2, r3, r4, r5, r6};
        Companion = new Object();
    }

    public static Vb valueOf(String str) {
        return (Vb) Enum.valueOf(Vb.class, str);
    }

    public static Vb[] values() {
        return (Vb[]) $VALUES.clone();
    }

    public final Wb a() {
        switch (Ub.a[ordinal()]) {
            case 1:
            case 2:
                return Wb.c;
            case 3:
            case 4:
                return Wb.d;
            case 5:
                return Wb.e;
            case 6:
                return Wb.a;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
