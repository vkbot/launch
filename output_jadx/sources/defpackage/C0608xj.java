package defpackage;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: xj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0608xj extends AbstractC0098dj implements InterfaceC0192ha {
    public long e;
    public int f;
    public final /* synthetic */ C0658zj g;
    public final /* synthetic */ ArrayList h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0608xj(C0658zj c0658zj, ArrayList arrayList, S5 s5) {
        super(s5);
        this.g = c0658zj;
        this.h = arrayList;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0608xj(this.g, this.h, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        long j;
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.f;
        C0658zj c0658zj = this.g;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            long uptimeMillis = SystemClock.uptimeMillis();
            J6 j6 = AbstractC0546v7.b;
            C0583wj c0583wj = new C0583wj(c0658zj, this.h, null);
            this.e = uptimeMillis;
            this.f = 1;
            obj = AbstractC0348nb.l0(j6, c0583wj, this);
            if (obj == enumC0291l6) {
                return enumC0291l6;
            }
            j = uptimeMillis;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = this.e;
            AbstractC0171gf.v(obj);
        }
        Map map = (Map) obj;
        C0486sm c0486sm = C0486sm.a;
        if (map == null) {
            return c0486sm;
        }
        Log.i("TaskManagerPopup", "memory of " + map.size() + " apps: " + (SystemClock.uptimeMillis() - j) + " ms");
        c0658zj.r = map;
        c0658zj.p.a.c(0, c0658zj.n.size(), "memory");
        return c0486sm;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0608xj) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
