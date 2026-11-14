package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Fo {
    public static final Fo a;
    public static final Fo b;
    public static final Fo c;
    public static final Fo d;
    public static final Fo e;
    public static final Fo f;
    public static final /* synthetic */ Fo[] g;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Fo] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Fo] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Fo] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, Fo] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, Fo] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, Fo] */
    static {
        ?? r0 = new Enum("HOME", 0);
        a = r0;
        ?? r1 = new Enum("LAUNCHER", 1);
        b = r1;
        ?? r2 = new Enum("PRESET", 2);
        c = r2;
        ?? r3 = new Enum("FULLSCREEN_APP", 3);
        d = r3;
        ?? r4 = new Enum("OTHER_APP", 4);
        e = r4;
        ?? r5 = new Enum("UNKNOWN", 5);
        f = r5;
        g = new Fo[]{r0, r1, r2, r3, r4, r5};
    }

    public static Fo valueOf(String str) {
        return (Fo) Enum.valueOf(Fo.class, str);
    }

    public static Fo[] values() {
        return (Fo[]) g.clone();
    }
}
