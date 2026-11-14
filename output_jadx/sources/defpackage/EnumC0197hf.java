package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: hf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0197hf {
    public static final EnumC0197hf a;
    public static final EnumC0197hf b;
    public static final /* synthetic */ EnumC0197hf[] c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, hf] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, hf] */
    static {
        ?? r0 = new Enum("ANDROID_AUTO", 0);
        a = r0;
        ?? r1 = new Enum("CARPLAY", 1);
        b = r1;
        c = new EnumC0197hf[]{r0, r1};
    }

    public static EnumC0197hf valueOf(String str) {
        return (EnumC0197hf) Enum.valueOf(EnumC0197hf.class, str);
    }

    public static EnumC0197hf[] values() {
        return (EnumC0197hf[]) c.clone();
    }
}
