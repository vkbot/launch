package defpackage;

/* renamed from: h3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0185h3 extends AbstractC0444r5 {
    public int h;
    public int i;
    public C0211i3 j;

    public boolean getAllowsGoneWidget() {
        return this.j.t0;
    }

    public int getMargin() {
        return this.j.u0;
    }

    public int getType() {
        return this.h;
    }

    @Override // defpackage.AbstractC0444r5
    public final void h(D5 d5, boolean z) {
        int i = this.h;
        this.i = i;
        if (z) {
            if (i == 5) {
                this.i = 1;
            } else if (i == 6) {
                this.i = 0;
            }
        } else if (i == 5) {
            this.i = 0;
        } else if (i == 6) {
            this.i = 1;
        }
        if (d5 instanceof C0211i3) {
            ((C0211i3) d5).s0 = this.i;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.j.t0 = z;
    }

    public void setDpMargin(int i) {
        this.j.u0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.j.u0 = i;
    }

    public void setType(int i) {
        this.h = i;
    }
}
