package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Zc {
    public static final Zc a;
    public static final Zc b;
    public static final Zc c;
    public static final Zc d;
    public static final /* synthetic */ Zc[] e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Zc] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Zc] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Zc] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, Zc] */
    static {
        ?? r0 = new Enum("NOT_INSTALLED", 0);
        a = r0;
        ?? r1 = new Enum("NOT_ENABLED", 1);
        b = r1;
        ?? r2 = new Enum("NOT_BINDING", 2);
        c = r2;
        ?? r3 = new Enum("GAVE_UP", 3);
        d = r3;
        e = new Zc[]{r0, r1, r2, r3};
    }

    public static Zc valueOf(String str) {
        return (Zc) Enum.valueOf(Zc.class, str);
    }

    public static Zc[] values() {
        return (Zc[]) e.clone();
    }
}
