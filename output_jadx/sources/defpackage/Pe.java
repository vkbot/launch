package defpackage;

import android.util.Log;
import androidx.activity.b;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final /* synthetic */ class Pe extends AbstractC0449ra implements S9 {
    public final /* synthetic */ int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Pe(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2);
        this.i = i2;
    }

    @Override // defpackage.S9
    public final Object d() {
        List list;
        C0486sm c0486sm = C0486sm.a;
        Object obj = this.b;
        switch (this.i) {
            case 0:
                ((b) obj).d();
                return c0486sm;
            case 1:
                ((b) obj).d();
                return c0486sm;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) obj;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.getClass();
                Set set = O8.a;
                Lm B = topOverlayAccessibilityService.B();
                C0255jm c0255jm = C0255jm.a;
                String a = C0255jm.a();
                A4 a4 = new A4(1, topOverlayAccessibilityService.y(), AbstractC0326mf.class, "isConnected", "isConnected(Lcom/omoda/launcher/factory/Phone;)Z", 2);
                AbstractC0348nb.r(B, "vhal");
                try {
                    boolean z = D3.b;
                    list = z ? O8.g(topOverlayAccessibilityService, B, a, a4) : O8.f(topOverlayAccessibilityService, B, a, a4);
                    String y0 = L4.y0(list, null, null, null, C0643z4.g, 31);
                    if (!y0.equals(O8.m)) {
                        O8.m = y0;
                        StringBuilder sb = new StringBuilder("programs (");
                        sb.append(z ? "Fun" : "classic");
                        sb.append("): ");
                        sb.append(y0);
                        Log.i("FactoryPrograms", sb.toString());
                    }
                } catch (Exception e) {
                    Log.e("FactoryPrograms", "stock programs failed", e);
                    list = C0547v8.a;
                }
                return L4.z0(list, topOverlayAccessibilityService.A());
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                return ((TopOverlayAccessibilityService) obj).A();
        }
    }
}
