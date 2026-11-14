package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class Q8 extends Yl {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ Q8() {
        this.a = 2;
    }

    @Override // defpackage.Yl, defpackage.Wl
    public void c() {
        switch (this.a) {
            case 2:
                C0056c3 c0056c3 = (C0056c3) this.b;
                if (c0056c3.z) {
                    return;
                }
                c0056c3.D();
                c0056c3.z = true;
                return;
            default:
                return;
        }
    }

    @Override // defpackage.Wl
    public final void e(Xl xl) {
        switch (this.a) {
            case 0:
                C0057c4 c0057c4 = Cn.a;
                ((View) this.b).setTransitionAlpha(1.0f);
                xl.u(this);
                return;
            case 1:
                ((Xl) this.b).w();
                xl.u(this);
                return;
            default:
                C0056c3 c0056c3 = (C0056c3) this.b;
                int i = c0056c3.y - 1;
                c0056c3.y = i;
                if (i == 0) {
                    c0056c3.z = false;
                    c0056c3.l();
                }
                xl.u(this);
                return;
        }
    }

    public /* synthetic */ Q8(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }
}
