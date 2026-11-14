package defpackage;

import android.view.DisplayCutout;

/* renamed from: x7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0596x7 {
    public final DisplayCutout a;

    public C0596x7(DisplayCutout displayCutout) {
        this.a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0596x7.class != obj.getClass()) {
            return false;
        }
        return He.a(this.a, ((C0596x7) obj).a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.a + "}";
    }
}
