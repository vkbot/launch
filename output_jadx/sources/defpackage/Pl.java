package defpackage;

import android.widget.TextView;

/* loaded from: classes.dex */
public final class Pl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ TextView f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pl(TextView textView, TextView textView2, S5 s5) {
        super(s5);
        this.e = textView;
        this.f = textView2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Pl(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Ki ki = Ki.a;
        this.e.setText(Ki.e().h);
        this.f.setVisibility(0);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Pl pl = (Pl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        pl.b(c0486sm);
        return c0486sm;
    }
}
