package defpackage;

import android.graphics.Insets;

/* renamed from: db, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0090db {
    public static final C0090db e = new C0090db(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public C0090db(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static C0090db a(C0090db c0090db, C0090db c0090db2) {
        return b(Math.max(c0090db.a, c0090db2.a), Math.max(c0090db.b, c0090db2.b), Math.max(c0090db.c, c0090db2.c), Math.max(c0090db.d, c0090db2.d));
    }

    public static C0090db b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new C0090db(i, i2, i3, i4);
    }

    public static C0090db c(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets d() {
        return AbstractC0064cb.a(this.a, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0090db.class != obj.getClass()) {
            return false;
        }
        C0090db c0090db = (C0090db) obj;
        return this.d == c0090db.d && this.a == c0090db.a && this.c == c0090db.c && this.b == c0090db.b;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + '}';
    }
}
