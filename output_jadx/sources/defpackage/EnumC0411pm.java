package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'e' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: pm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0411pm {
    public static final EnumC0411pm d;
    public static final EnumC0411pm e;
    public static final /* synthetic */ EnumC0411pm[] f;
    public final String a;
    public final boolean b;
    public final boolean c;

    static {
        EnumC0411pm enumC0411pm = new EnumC0411pm("OFF", 0, "off", false, false, 6);
        d = enumC0411pm;
        boolean z = false;
        EnumC0411pm enumC0411pm2 = new EnumC0411pm("ON", 1, "on", z, false, 6);
        e = enumC0411pm2;
        f = new EnumC0411pm[]{enumC0411pm, enumC0411pm2, new EnumC0411pm("ANDROID_AUTO", 2, "android_auto", true, false, 4), new EnumC0411pm("CARPLAY", 3, "carplay", z, true, 2), new EnumC0411pm("BOTH", 4, "both", true, true)};
    }

    public EnumC0411pm(String str, int i, String str2, boolean z, boolean z2) {
        this.a = str2;
        this.b = z;
        this.c = z2;
    }

    public static EnumC0411pm valueOf(String str) {
        return (EnumC0411pm) Enum.valueOf(EnumC0411pm.class, str);
    }

    public static EnumC0411pm[] values() {
        return (EnumC0411pm[]) f.clone();
    }

    public /* synthetic */ EnumC0411pm(String str, int i, String str2, boolean z, boolean z2, int i2) {
        this(str, i, str2, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
    }
}
