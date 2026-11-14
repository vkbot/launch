package defpackage;

/* renamed from: mb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0322mb extends AbstractC0270kb {
    public static final C0322mb d = new AbstractC0270kb(1, 0, 1);

    public final boolean equals(Object obj) {
        if (obj instanceof C0322mb) {
            if (!isEmpty() || !((C0322mb) obj).isEmpty()) {
                C0322mb c0322mb = (C0322mb) obj;
                if (this.a == c0322mb.a) {
                    if (this.b == c0322mb.b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.b + (this.a * 31);
    }

    public final boolean isEmpty() {
        return this.a > this.b;
    }

    public final String toString() {
        return this.a + ".." + this.b;
    }
}
