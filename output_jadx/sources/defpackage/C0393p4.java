package defpackage;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* renamed from: p4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0393p4 extends AbstractC0171gf {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0393p4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    private final void x(int i) {
    }

    @Override // defpackage.AbstractC0171gf
    public final void m(int i) {
        switch (this.a) {
            case 0:
                return;
            default:
                Ij ij = (Ij) this.b;
                ij.d = true;
                Hj hj = (Hj) ij.e.get();
                if (hj != null) {
                    C0493t4 c0493t4 = (C0493t4) hj;
                    c0493t4.t();
                    c0493t4.invalidateSelf();
                    return;
                }
                return;
        }
    }

    @Override // defpackage.AbstractC0171gf
    public final void n(Typeface typeface, boolean z) {
        switch (this.a) {
            case 0:
                Chip chip = (Chip) this.b;
                C0493t4 c0493t4 = chip.e;
                chip.setText(c0493t4.A0 ? c0493t4.C : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                return;
            default:
                if (z) {
                    return;
                }
                Ij ij = (Ij) this.b;
                ij.d = true;
                Hj hj = (Hj) ij.e.get();
                if (hj != null) {
                    C0493t4 c0493t42 = (C0493t4) hj;
                    c0493t42.t();
                    c0493t42.invalidateSelf();
                    return;
                }
                return;
        }
    }
}
