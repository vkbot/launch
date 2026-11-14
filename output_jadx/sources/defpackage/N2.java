package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.omoda.launcher.HomeActivity;
import com.omoda.launcher.data.PrefsAppOrderStore;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class N2 extends Nb implements InterfaceC0089da {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ N2(Object obj, int i, Object obj2) {
        super(1);
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Type inference failed for: r11v19, types: [Nb, S9] */
    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        EnumC0411pm enumC0411pm;
        C0486sm c0486sm = C0486sm.a;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (this.b) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                if (((AtomicBoolean) obj3).compareAndSet(false, true)) {
                    ((Gl) obj2).h(bool);
                }
                return c0486sm;
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                Set set = O8.a;
                return O8.a((Resources) obj3, ((M8) obj2).c, booleanValue);
            case 2:
                ((Ca) obj3).c.removeCallbacks((RunnableC0233j0) obj2);
                return c0486sm;
            case 3:
                int intValue = ((Number) obj).intValue();
                P5 p5 = ((TopOverlayAccessibilityService) obj3).x;
                T6 t6 = AbstractC0546v7.a;
                AbstractC0348nb.M(p5, AbstractC0066cd.a, new C0358nl((B4) obj2, intValue, null), 2);
                return c0486sm;
            case 4:
                String str = (String) obj;
                AbstractC0348nb.r(str, "key");
                Cif cif = (Cif) L4.x0(((C0378of) obj3).a, Integer.parseInt(str));
                if (cif != null) {
                    TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) obj2;
                    AbstractC0348nb.M(topOverlayAccessibilityService.x, null, new C0635yl(topOverlayAccessibilityService, cif, null), 3);
                }
                return c0486sm;
            case 5:
                int intValue2 = ((Number) obj).intValue();
                P5 p52 = ((TopOverlayAccessibilityService) obj3).x;
                T6 t62 = AbstractC0546v7.a;
                AbstractC0348nb.M(p52, AbstractC0066cd.a, new Ql((TextView) obj2, intValue2, null), 2);
                return c0486sm;
            default:
                String str2 = (String) obj;
                AbstractC0348nb.r(str2, "key");
                EnumC0411pm[] enumC0411pmArr = (EnumC0411pm[]) obj3;
                int length = enumC0411pmArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        enumC0411pm = enumC0411pmArr[i];
                        if (!AbstractC0348nb.g(enumC0411pm.a, str2)) {
                            i++;
                        }
                    } else {
                        enumC0411pm = null;
                    }
                }
                if (enumC0411pm != null) {
                    TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                    TopOverlayAccessibilityService topOverlayAccessibilityService3 = (TopOverlayAccessibilityService) obj2;
                    topOverlayAccessibilityService3.getClass();
                    EnumC0411pm h = AbstractC0554vf.h();
                    if (enumC0411pm != h) {
                        C0255jm c0255jm = C0255jm.a;
                        String str3 = enumC0411pm.a;
                        AbstractC0348nb.r(str3, "value");
                        C0255jm.d().edit().putString("unified_mode", str3).apply();
                        topOverlayAccessibilityService3.H0();
                        topOverlayAccessibilityService3.I0();
                        EnumC0411pm enumC0411pm2 = EnumC0411pm.d;
                        if ((enumC0411pm != enumC0411pm2) != (h != enumC0411pm2)) {
                            new PrefsAppOrderStore(topOverlayAccessibilityService3).clear();
                            View view = topOverlayAccessibilityService3.i;
                            if (view != null) {
                                topOverlayAccessibilityService3.g(view);
                            }
                            topOverlayAccessibilityService3.E0();
                            Ja w = topOverlayAccessibilityService3.w();
                            w.getClass();
                            if (AbstractC0554vf.j()) {
                                w.f = false;
                                w.g = 0;
                                if (w.b.j()) {
                                    w.b(false);
                                }
                            } else {
                                HomeActivity homeActivity = HomeActivity.w;
                                if (homeActivity != null) {
                                    homeActivity.finish();
                                }
                            }
                        }
                        Xk xk = topOverlayAccessibilityService3.b1;
                        if (xk != null) {
                            if (!((Boolean) xk.c.d()).booleanValue()) {
                                xk = null;
                            }
                            if (xk != null) {
                                topOverlayAccessibilityService3.V(xk, false);
                            }
                        }
                        AbstractC0348nb.M(topOverlayAccessibilityService3.x, null, new Al(topOverlayAccessibilityService3, null), 3);
                    }
                }
                return c0486sm;
        }
    }
}
