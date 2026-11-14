package defpackage;

/* renamed from: se, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0478se {
    public final int a;
    public final int b;

    public C0478se(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0478se)) {
            return false;
        }
        C0478se c0478se = (C0478se) obj;
        return this.a == c0478se.a && this.b == c0478se.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "NavPanelSizes(buttonSize=" + this.a + ", spacer=" + this.b + ')';
    }
}
