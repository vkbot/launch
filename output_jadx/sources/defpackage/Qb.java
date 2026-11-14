package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final class Qb extends AbstractC0145ff {
    public final /* synthetic */ int a;
    public final SideSheetBehavior b;

    public /* synthetic */ Qb(SideSheetBehavior sideSheetBehavior, int i) {
        this.a = i;
        this.b = sideSheetBehavior;
    }

    @Override // defpackage.AbstractC0145ff
    public final boolean E(View view, float f) {
        switch (this.a) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.b;
                float abs = Math.abs((f * sideSheetBehavior.k) + left);
                sideSheetBehavior.getClass();
                return abs > 0.5f;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.b;
                float abs2 = Math.abs((f * sideSheetBehavior2.k) + right);
                sideSheetBehavior2.getClass();
                return abs2 > 0.5f;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final void G(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        switch (this.a) {
            case 0:
                if (i <= this.b.m) {
                    marginLayoutParams.leftMargin = i2;
                    return;
                }
                return;
            default:
                int i3 = this.b.m;
                if (i <= i3) {
                    marginLayoutParams.rightMargin = i3 - i;
                    return;
                }
                return;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.a) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final float b(int i) {
        switch (this.a) {
            case 0:
                float o = o();
                return (i - o) / (n() - o);
            default:
                float f = this.b.m;
                return (f - i) / (f - n());
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int n() {
        switch (this.a) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.b;
                return Math.max(0, sideSheetBehavior.n + sideSheetBehavior.o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.b;
                return Math.max(0, (sideSheetBehavior2.m - sideSheetBehavior2.l) - sideSheetBehavior2.o);
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int o() {
        switch (this.a) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.b;
                return (-sideSheetBehavior.l) - sideSheetBehavior.o;
            default:
                return this.b.m;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int p() {
        switch (this.a) {
            case 0:
                return this.b.o;
            default:
                return this.b.m;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int q() {
        switch (this.a) {
            case 0:
                return -this.b.l;
            default:
                return n();
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int r(View view) {
        switch (this.a) {
            case 0:
                return view.getRight() + this.b.o;
            default:
                return view.getLeft() - this.b.o;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int s(CoordinatorLayout coordinatorLayout) {
        switch (this.a) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final int t() {
        switch (this.a) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final boolean u(float f) {
        switch (this.a) {
            case 0:
                return f > 0.0f;
            default:
                return f < 0.0f;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final boolean w(View view) {
        switch (this.a) {
            case 0:
                return view.getRight() < (n() - o()) / 2;
            default:
                return view.getLeft() > (n() + this.b.m) / 2;
        }
    }

    @Override // defpackage.AbstractC0145ff
    public final boolean x(float f, float f2) {
        switch (this.a) {
            case 0:
                if (Math.abs(f) > Math.abs(f2)) {
                    float abs = Math.abs(f);
                    this.b.getClass();
                    if (abs > 500) {
                        return true;
                    }
                }
                return false;
            default:
                if (Math.abs(f) > Math.abs(f2)) {
                    float abs2 = Math.abs(f);
                    this.b.getClass();
                    if (abs2 > 500) {
                        return true;
                    }
                }
                return false;
        }
    }
}
