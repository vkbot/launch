package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Tk {
    public static final Tk a;
    public static final Tk b;
    public static final Tk c;
    public static final Tk d;
    public static final /* synthetic */ Tk[] e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Tk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Tk] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Tk] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, Tk] */
    static {
        ?? r0 = new Enum("TOP_LEFT", 0);
        a = r0;
        ?? r1 = new Enum("TOP_RIGHT", 1);
        b = r1;
        ?? r2 = new Enum("BOTTOM_LEFT", 2);
        c = r2;
        ?? r3 = new Enum("BOTTOM_RIGHT", 3);
        d = r3;
        e = new Tk[]{r0, r1, r2, r3};
    }

    public static Tk valueOf(String str) {
        return (Tk) Enum.valueOf(Tk.class, str);
    }

    public static Tk[] values() {
        return (Tk[]) e.clone();
    }
}
