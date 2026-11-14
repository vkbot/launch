package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class Yj {
    public final String a;
    public final String b;

    public Yj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final int a(Context context) {
        AbstractC0348nb.r(context, "context");
        return context.getResources().getIdentifier(this.a, "drawable", context.getPackageName());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Yj)) {
            return false;
        }
        Yj yj = (Yj) obj;
        return AbstractC0348nb.g(this.a, yj.a) && AbstractC0348nb.g(this.b, yj.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThemeDialog(bgName=");
        sb.append(this.a);
        sb.append(", checkName=");
        return AbstractC0407pi.k(sb, this.b, ')');
    }
}
