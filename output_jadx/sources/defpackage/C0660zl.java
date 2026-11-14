package defpackage;

import android.util.Log;
import android.widget.Toast;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* renamed from: zl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0660zl extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ EnumC0197hf g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0660zl(TopOverlayAccessibilityService topOverlayAccessibilityService, EnumC0197hf enumC0197hf, String str, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = enumC0197hf;
        this.h = str;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new C0660zl(this.f, this.g, this.h, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        EnumC0197hf enumC0197hf = this.g;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.f;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
            AbstractC0326mf y = topOverlayAccessibilityService.y();
            this.e = 1;
            y.getClass();
            obj = AbstractC0348nb.l0(AbstractC0546v7.b, new C0274kf(y, enumC0197hf, null), this);
            if (obj == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        AbstractC0454rf abstractC0454rf = (AbstractC0454rf) obj;
        if (!(abstractC0454rf instanceof C0352nf)) {
            if (abstractC0454rf instanceof C0430qf) {
                try {
                    topOverlayAccessibilityService.startActivity(((C0430qf) abstractC0454rf).a);
                } catch (Exception e) {
                    Log.e("TopOverlayA11y", enumC0197hf + ": stock screen failed", e);
                }
            } else if (abstractC0454rf instanceof C0404pf) {
                Set set = O8.a;
                C0255jm c0255jm = C0255jm.a;
                String a = C0255jm.a();
                AbstractC0348nb.r(topOverlayAccessibilityService, "context");
                String j = O8.j(O8.i(topOverlayAccessibilityService, a), "aa_no_connected");
                if (j != null) {
                    Toast.makeText(topOverlayAccessibilityService, j, 1).show();
                }
            } else if (abstractC0454rf instanceof C0378of) {
                List list = ((C0378of) abstractC0454rf).a;
                ArrayList arrayList = new ArrayList(N4.r0(list));
                int i2 = 0;
                for (Object obj2 : list) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        M4.q0();
                        throw null;
                    }
                    arrayList.add(new C0016af(String.valueOf(i2), ((Cif) obj2).a));
                    i2 = i3;
                }
                N2 n2 = new N2((C0378of) abstractC0454rf, 4, topOverlayAccessibilityService);
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.t0(this.h, arrayList, "", n2);
            }
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0660zl) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
