package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: on, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0386on extends AbstractC0224ih implements InterfaceC0192ha {
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ View e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0386on(View view, S5 s5) {
        super(s5);
        this.e = view;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        C0386on c0386on = new C0386on(this.e, s5);
        c0386on.d = obj;
        return c0386on;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [S5, java.util.Iterator, java.lang.Object, Mh] */
    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        Object obj2;
        Object obj3 = EnumC0291l6.a;
        int i = this.c;
        View view = this.e;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            Mh mh = (Mh) this.d;
            this.d = mh;
            this.c = 1;
            mh.b(view, this);
            return obj3;
        }
        Object obj4 = C0486sm.a;
        if (i == 1) {
            Mh mh2 = (Mh) this.d;
            AbstractC0171gf.v(obj);
            if (view instanceof ViewGroup) {
                C0308ln c0308ln = new C0308ln((ViewGroup) view, null);
                this.d = null;
                this.c = 2;
                mh2.getClass();
                ?? obj5 = new Object();
                obj5.d = C6.f(obj5, obj5, c0308ln);
                if (obj5.hasNext()) {
                    mh2.c = obj5;
                    mh2.a = 2;
                    mh2.d = this;
                    obj2 = obj3;
                } else {
                    obj2 = obj4;
                }
                if (obj2 != obj3) {
                    obj2 = obj4;
                }
                if (obj2 == obj3) {
                    return obj3;
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return obj4;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0386on) a((S5) obj2, (Mh) obj)).b(C0486sm.a);
    }
}
