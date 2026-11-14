package defpackage;

import java.util.Locale;

/* loaded from: classes.dex */
public final class Ic {
    public static final Ic b = new Ic(new Jc(Hc.a(new Locale[0])));
    public final Jc a;

    public Ic(Jc jc) {
        this.a = jc;
    }

    public static Ic a(String str) {
        if (str == null || str.isEmpty()) {
            return b;
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = Gc.a(split[i]);
        }
        return new Ic(new Jc(Hc.a(localeArr)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Ic) {
            if (this.a.equals(((Ic) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
