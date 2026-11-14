package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: sd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0477sd extends LinearLayoutManager {
    public final /* synthetic */ int E;
    public final /* synthetic */ C0552vd F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0477sd(C0552vd c0552vd, int i, int i2) {
        super(i);
        this.F = c0552vd;
        this.E = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void A0(Ag ag, int[] iArr) {
        int i = this.E;
        C0552vd c0552vd = this.F;
        if (i == 0) {
            iArr[0] = c0552vd.Y.getWidth();
            iArr[1] = c0552vd.Y.getWidth();
        } else {
            iArr[0] = c0552vd.Y.getHeight();
            iArr[1] = c0552vd.Y.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.AbstractC0353ng
    public final void x0(RecyclerView recyclerView, int i) {
        C0297lc c0297lc = new C0297lc(recyclerView.getContext());
        c0297lc.a = i;
        y0(c0297lc);
    }
}
