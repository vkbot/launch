package defpackage;

import android.animation.TimeInterpolator;

/* renamed from: qe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0429qe {
    public long a;
    public long b;
    public TimeInterpolator c;
    public int d;
    public int e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.c;
        return timeInterpolator != null ? timeInterpolator : O0.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0429qe)) {
            return false;
        }
        C0429qe c0429qe = (C0429qe) obj;
        if (this.a == c0429qe.a && this.b == c0429qe.b && this.d == c0429qe.d && this.e == c0429qe.e) {
            return a().getClass().equals(c0429qe.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        long j2 = this.b;
        return ((((a().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31)) * 31) + this.d) * 31) + this.e;
    }

    public final String toString() {
        return "\n" + C0429qe.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.a + " duration: " + this.b + " interpolator: " + a().getClass() + " repeatCount: " + this.d + " repeatMode: " + this.e + "}\n";
    }
}
