package defpackage;

import java.util.ArrayList;
import java.util.Set;

/* renamed from: lf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0300lf extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ AbstractC0326mf e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0300lf(AbstractC0326mf abstractC0326mf, S5 s5) {
        super(s5);
        this.e = abstractC0326mf;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0300lf(this.e, s5);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.lang.Iterable] */
    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        ?? r5 = this.e.a;
        AbstractC0326mf abstractC0326mf = this.e;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : r5) {
            if (abstractC0326mf.a((EnumC0197hf) obj2)) {
                arrayList.add(obj2);
            }
        }
        Set F0 = L4.F0(arrayList);
        Boolean valueOf = Boolean.valueOf(!F0.equals(this.e.b));
        this.e.b = F0;
        return valueOf;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0300lf) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
