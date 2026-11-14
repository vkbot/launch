package defpackage;

import android.util.Log;
import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: kf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0274kf extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ AbstractC0326mf e;
    public final /* synthetic */ EnumC0197hf f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0274kf(AbstractC0326mf abstractC0326mf, EnumC0197hf enumC0197hf, S5 s5) {
        super(s5);
        this.e = abstractC0326mf;
        this.f = enumC0197hf;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0274kf(this.e, this.f, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        LinkedHashSet linkedHashSet;
        boolean z;
        AbstractC0171gf.v(obj);
        boolean a = this.e.a(this.f);
        AbstractC0326mf abstractC0326mf = this.e;
        if (a) {
            Set set = abstractC0326mf.b;
            EnumC0197hf enumC0197hf = this.f;
            linkedHashSet = new LinkedHashSet(AbstractC0221id.p0(set.size() + 1));
            linkedHashSet.addAll(set);
            linkedHashSet.add(enumC0197hf);
        } else {
            Set set2 = abstractC0326mf.b;
            EnumC0197hf enumC0197hf2 = this.f;
            linkedHashSet = new LinkedHashSet(AbstractC0221id.p0(set2.size()));
            boolean z2 = false;
            for (Object obj2 : set2) {
                if (z2 || !AbstractC0348nb.g(obj2, enumC0197hf2)) {
                    z = true;
                } else {
                    z2 = true;
                    z = false;
                }
                if (z) {
                    linkedHashSet.add(obj2);
                }
            }
        }
        abstractC0326mf.b = linkedHashSet;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f);
        sb.append(" tapped, session ");
        sb.append(a ? "on" : "off");
        Log.i("PhoneProjection", sb.toString());
        return a ? this.e.d(this.f) : this.e.c(this.f);
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0274kf) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
