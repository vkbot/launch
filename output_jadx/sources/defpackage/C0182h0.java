package defpackage;

import android.content.Context;
import android.view.View;
import com.omoda.launcher.R;

/* renamed from: h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0182h0 extends Xd {
    public final /* synthetic */ int l = 1;
    public final /* synthetic */ C0285l0 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0182h0(C0285l0 c0285l0, Context context, Ld ld, View view) {
        super(R.attr.actionOverflowMenuStyle, ld, context, view, true);
        this.m = c0285l0;
        this.f = 8388613;
        L l = c0285l0.w;
        this.h = l;
        Ud ud = this.i;
        if (ud != null) {
            ud.i(l);
        }
    }

    @Override // defpackage.Xd
    public final void c() {
        switch (this.l) {
            case 0:
                C0285l0 c0285l0 = this.m;
                c0285l0.t = null;
                c0285l0.getClass();
                super.c();
                return;
            default:
                C0285l0 c0285l02 = this.m;
                Ld ld = c0285l02.c;
                if (ld != null) {
                    ld.c(true);
                }
                c0285l02.s = null;
                super.c();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0182h0(C0285l0 c0285l0, Context context, Ti ti, View view) {
        super(R.attr.actionOverflowMenuStyle, ti, context, view, false);
        this.m = c0285l0;
        if (!ti.A.f()) {
            View view2 = c0285l0.i;
            this.e = view2 == null ? (View) c0285l0.h : view2;
        }
        L l = c0285l0.w;
        this.h = l;
        Ud ud = this.i;
        if (ud != null) {
            ud.i(l);
        }
    }
}
