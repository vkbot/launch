package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: mk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0331mk {
    public static final EnumC0331mk a;
    public static final EnumC0331mk b;
    public static final /* synthetic */ EnumC0331mk[] c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, mk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, mk] */
    static {
        ?? r0 = new Enum("A", 0);
        a = r0;
        ?? r1 = new Enum("B", 1);
        b = r1;
        c = new EnumC0331mk[]{r0, r1};
    }

    public static EnumC0331mk valueOf(String str) {
        return (EnumC0331mk) Enum.valueOf(EnumC0331mk.class, str);
    }

    public static EnumC0331mk[] values() {
        return (EnumC0331mk[]) c.clone();
    }
}
