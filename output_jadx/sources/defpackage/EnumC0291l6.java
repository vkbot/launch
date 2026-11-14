package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: l6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0291l6 {
    public static final EnumC0291l6 a;
    public static final /* synthetic */ EnumC0291l6[] b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, l6] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, l6] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, l6] */
    static {
        ?? r0 = new Enum("COROUTINE_SUSPENDED", 0);
        a = r0;
        b = new EnumC0291l6[]{r0, new Enum("UNDECIDED", 1), new Enum("RESUMED", 2)};
    }

    public static EnumC0291l6 valueOf(String str) {
        return (EnumC0291l6) Enum.valueOf(EnumC0291l6.class, str);
    }

    public static EnumC0291l6[] values() {
        return (EnumC0291l6[]) b.clone();
    }
}
