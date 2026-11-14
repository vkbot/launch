package defpackage;

import android.widget.TextView;

/* renamed from: gl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0177gl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0177gl(TextView textView, S5 s5) {
        super(s5);
        Ki ki = Ki.a;
        this.e = textView;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        TextView textView = this.e;
        Ki ki = Ki.a;
        return new C0177gl(textView, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Ki ki = Ki.a;
        this.e.setText(Ki.d().g);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0177gl c0177gl = (C0177gl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0177gl.b(c0486sm);
        return c0486sm;
    }
}
