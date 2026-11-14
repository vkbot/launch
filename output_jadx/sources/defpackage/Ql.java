package defpackage;

import android.widget.TextView;

/* loaded from: classes.dex */
public final class Ql extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ql(TextView textView, int i, S5 s5) {
        super(s5);
        this.e = textView;
        this.f = i;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Ql(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        StringBuilder sb = new StringBuilder();
        Ki ki = Ki.a;
        sb.append(Ki.e().c);
        sb.append(this.f);
        sb.append(Ki.e().d);
        this.e.setText(sb.toString());
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Ql ql = (Ql) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        ql.b(c0486sm);
        return c0486sm;
    }
}
