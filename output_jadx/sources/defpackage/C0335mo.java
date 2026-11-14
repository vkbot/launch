package defpackage;

import android.os.Build;
import android.view.animation.Interpolator;

/* renamed from: mo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0335mo {
    public AbstractC0309lo a;

    public C0335mo(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new C0283ko(AbstractC0638z.i(i, interpolator, j));
        } else {
            this.a = new AbstractC0309lo(i, interpolator, j);
        }
    }
}
