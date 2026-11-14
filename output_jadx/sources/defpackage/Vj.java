package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class Vj {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;

    public Vj(String str, String str2, String str3, String str4, int i, int i2, int i3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    public final int a() {
        return this.g;
    }

    public final int b(Context context) {
        AbstractC0348nb.r(context, "context");
        return context.getResources().getIdentifier(this.a, "drawable", context.getPackageName());
    }

    public final int c(Context context) {
        AbstractC0348nb.r(context, "context");
        return context.getResources().getIdentifier(this.b, "drawable", context.getPackageName());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vj)) {
            return false;
        }
        Vj vj = (Vj) obj;
        return AbstractC0348nb.g(this.a, vj.a) && AbstractC0348nb.g(this.b, vj.b) && AbstractC0348nb.g(this.c, vj.c) && AbstractC0348nb.g(this.d, vj.d) && this.e == vj.e && this.f == vj.f && this.g == vj.g;
    }

    public final int hashCode() {
        return Integer.hashCode(this.g) + AbstractC0407pi.d(this.f, AbstractC0407pi.d(this.e, AbstractC0407pi.e(this.d, AbstractC0407pi.e(this.c, AbstractC0407pi.e(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ThemeButton(primaryName=" + this.a + ", shortName=" + this.b + ", longName=" + this.c + ", arrowName=" + this.d + ", primaryFillColor=" + this.e + ", primaryTextColor=" + this.f + ", textColor=" + this.g + ')';
    }
}
