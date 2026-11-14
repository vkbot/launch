package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Wb {
    public static final Wb a;
    public static final Wb b;
    public static final Wb c;
    public static final Wb d;
    public static final Wb e;
    public static final /* synthetic */ Wb[] f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Wb] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Wb] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Wb] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, Wb] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, Wb] */
    static {
        ?? r0 = new Enum("DESTROYED", 0);
        a = r0;
        ?? r1 = new Enum("INITIALIZED", 1);
        b = r1;
        ?? r2 = new Enum("CREATED", 2);
        c = r2;
        ?? r3 = new Enum("STARTED", 3);
        d = r3;
        ?? r4 = new Enum("RESUMED", 4);
        e = r4;
        f = new Wb[]{r0, r1, r2, r3, r4};
    }

    public static Wb valueOf(String str) {
        return (Wb) Enum.valueOf(Wb.class, str);
    }

    public static Wb[] values() {
        return (Wb[]) f.clone();
    }
}
