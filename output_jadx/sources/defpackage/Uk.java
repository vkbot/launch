package defpackage;

import android.view.WindowManager;

/* loaded from: classes.dex */
public final class Uk {
    public final Vk a;
    public final WindowManager.LayoutParams b;

    public Uk(Vk vk, WindowManager.LayoutParams layoutParams) {
        this.a = vk;
        this.b = layoutParams;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uk)) {
            return false;
        }
        Uk uk = (Uk) obj;
        return this.a.equals(uk.a) && this.b.equals(uk.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CornerSlot(view=" + this.a + ", params=" + this.b + ')';
    }
}
