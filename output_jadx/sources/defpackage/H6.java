package defpackage;

/* loaded from: classes.dex */
public abstract class H6 {
    public static final InterfaceC0034b7 a;

    static {
        String str;
        Ca ca;
        int i = AbstractC0175gj.a;
        try {
            str = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null ? Boolean.parseBoolean(str) : false) {
            T6 t6 = AbstractC0546v7.a;
            Ca ca2 = AbstractC0066cd.a;
            Ca ca3 = ca2.f;
            ca = !(ca2 instanceof InterfaceC0034b7) ? G6.i : ca2;
        } else {
            ca = G6.i;
        }
        a = ca;
    }
}
