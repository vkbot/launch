package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: ln, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0308ln extends AbstractC0224ih implements InterfaceC0192ha {
    public ViewGroup c;
    public View d;
    public int e;
    public int f;
    public int g;
    public /* synthetic */ Object h;
    public final /* synthetic */ ViewGroup i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0308ln(ViewGroup viewGroup, S5 s5) {
        super(s5);
        this.i = viewGroup;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        C0308ln c0308ln = new C0308ln(this.i, s5);
        c0308ln.h = obj;
        return c0308ln;
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [S5, java.util.Iterator, java.lang.Object, Mh] */
    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        Mh mh;
        ViewGroup viewGroup;
        int childCount;
        int i;
        int i2;
        Object obj2;
        int i3;
        ViewGroup viewGroup2;
        Mh mh2;
        Object obj3 = EnumC0291l6.a;
        int i4 = this.g;
        Object obj4 = C0486sm.a;
        if (i4 != 0) {
            if (i4 == 1) {
                childCount = this.f;
                i2 = this.e;
                View view = this.d;
                viewGroup = this.c;
                mh = (Mh) this.h;
                AbstractC0171gf.v(obj);
                if (view instanceof ViewGroup) {
                    C0308ln c0308ln = new C0308ln((ViewGroup) view, null);
                    this.h = mh;
                    this.c = viewGroup;
                    this.d = null;
                    this.e = i2;
                    this.f = childCount;
                    this.g = 2;
                    mh.getClass();
                    ?? obj5 = new Object();
                    obj5.d = C6.f(obj5, obj5, c0308ln);
                    if (obj5.hasNext()) {
                        mh.c = obj5;
                        mh.a = 2;
                        mh.d = this;
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
                    i3 = i2;
                    viewGroup2 = viewGroup;
                    mh2 = mh;
                }
                i = i2 + 1;
            } else {
                if (i4 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                childCount = this.f;
                i3 = this.e;
                viewGroup2 = this.c;
                mh2 = (Mh) this.h;
                AbstractC0171gf.v(obj);
            }
            viewGroup = viewGroup2;
            mh = mh2;
            i2 = i3;
            i = i2 + 1;
        } else {
            AbstractC0171gf.v(obj);
            mh = (Mh) this.h;
            viewGroup = this.i;
            childCount = viewGroup.getChildCount();
            i = 0;
        }
        if (i >= childCount) {
            return obj4;
        }
        View childAt = viewGroup.getChildAt(i);
        this.h = mh;
        this.c = viewGroup;
        this.d = childAt;
        this.e = i;
        this.f = childCount;
        this.g = 1;
        mh.b(childAt, this);
        return obj3;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0308ln) a((S5) obj2, (Mh) obj)).b(C0486sm.a);
    }
}
