package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class Wk {
    public final List a;
    public final String b;
    public final int c;

    public Wk(List list, String str, int i) {
        AbstractC0348nb.r(list, "presets");
        this.a = list;
        this.b = str;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Wk)) {
            return false;
        }
        Wk wk = (Wk) obj;
        return AbstractC0348nb.g(this.a, wk.a) && AbstractC0348nb.g(this.b, wk.b) && this.c == wk.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "PresetBarKey(presets=" + this.a + ", size=" + this.b + ", themeMode=" + this.c + ')';
    }
}
