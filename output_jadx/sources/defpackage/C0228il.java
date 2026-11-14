package defpackage;

import android.widget.TextView;

/* renamed from: il, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0228il extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0228il(TextView textView, int i, S5 s5) {
        super(s5);
        Ki ki = Ki.a;
        this.e = textView;
        this.f = i;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        Ki ki = Ki.a;
        return new C0228il(this.e, this.f, s5);
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
        C0228il c0228il = (C0228il) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0228il.b(c0486sm);
        return c0486sm;
    }
}
