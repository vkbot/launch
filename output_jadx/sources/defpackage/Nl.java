package defpackage;

import android.widget.TextView;

/* loaded from: classes.dex */
public final class Nl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Nl(TextView textView, S5 s5) {
        super(s5);
        this.e = textView;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Nl(this.e, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Ki ki = Ki.a;
        this.e.setText(Ki.e().e);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Nl nl = (Nl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        nl.b(c0486sm);
        return c0486sm;
    }
}
