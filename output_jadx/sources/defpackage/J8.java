package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class J8 extends L {
    public final /* synthetic */ C0443r4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J8(C0443r4 c0443r4) {
        super(0);
        this.d = c0443r4;
    }

    @Override // defpackage.L
    public final J u(int i) {
        return new J(AccessibilityNodeInfo.obtain(this.d.n(i).a));
    }

    @Override // defpackage.L
    public final J v(int i) {
        C0443r4 c0443r4 = this.d;
        int i2 = i == 2 ? c0443r4.k : c0443r4.l;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return u(i2);
    }

    @Override // defpackage.L
    public final boolean x(int i, int i2, Bundle bundle) {
        int i3;
        C0443r4 c0443r4 = this.d;
        Chip chip = c0443r4.i;
        if (i == -1) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            return Rm.j(chip, i2, bundle);
        }
        boolean z = true;
        if (i2 == 1) {
            return c0443r4.o(i);
        }
        if (i2 == 2) {
            return c0443r4.j(i);
        }
        boolean z2 = false;
        if (i2 == 64) {
            AccessibilityManager accessibilityManager = c0443r4.h;
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i3 = c0443r4.k) != i) {
                if (i3 != Integer.MIN_VALUE) {
                    c0443r4.k = Integer.MIN_VALUE;
                    c0443r4.i.invalidate();
                    c0443r4.p(i3, 65536);
                }
                c0443r4.k = i;
                chip.invalidate();
                c0443r4.p(i, 32768);
            }
            z = false;
        } else {
            if (i2 != 128) {
                if (i2 != 16) {
                    return false;
                }
                Chip chip2 = c0443r4.n;
                if (i == 0) {
                    return chip2.performClick();
                }
                if (i != 1) {
                    return false;
                }
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z2 = true;
                }
                if (!chip2.s) {
                    return z2;
                }
                chip2.r.p(1, 1);
                return z2;
            }
            if (c0443r4.k == i) {
                c0443r4.k = Integer.MIN_VALUE;
                chip.invalidate();
                c0443r4.p(i, 65536);
            }
            z = false;
        }
        return z;
    }
}
