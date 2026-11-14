package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Jo {
    public static final Jo a;
    public static final Jo b;
    public static final Jo c;
    public static final /* synthetic */ Jo[] d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Jo] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Jo] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Jo] */
    static {
        ?? r0 = new Enum("SINGLE", 0);
        a = r0;
        ?? r1 = new Enum("LEFT", 1);
        b = r1;
        ?? r2 = new Enum("RIGHT", 2);
        c = r2;
        d = new Jo[]{r0, r1, r2};
    }

    public static Jo valueOf(String str) {
        return (Jo) Enum.valueOf(Jo.class, str);
    }

    public static Jo[] values() {
        return (Jo[]) d.clone();
    }
}
