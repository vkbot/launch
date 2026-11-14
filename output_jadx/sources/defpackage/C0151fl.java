package defpackage;

import android.widget.TextView;

/* renamed from: fl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0151fl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TextView e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ TextView g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0151fl(TextView textView, TextView textView2, TextView textView3, S5 s5) {
        super(s5);
        Ki ki = Ki.a;
        this.e = textView;
        this.f = textView2;
        this.g = textView3;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        TextView textView = this.f;
        TextView textView2 = this.g;
        TextView textView3 = this.e;
        Ki ki = Ki.a;
        return new C0151fl(textView3, textView, textView2, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Ki ki = Ki.a;
        this.e.setText(Ki.d().f);
        this.f.setVisibility(0);
        this.g.setVisibility(0);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        C0151fl c0151fl = (C0151fl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        c0151fl.b(c0486sm);
        return c0486sm;
    }
}
