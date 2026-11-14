package defpackage;

import android.util.Log;
import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class El extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ TextView g;
    public final /* synthetic */ TextView h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public El(TopOverlayAccessibilityService topOverlayAccessibilityService, TextView textView, TextView textView2, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = textView;
        this.h = textView2;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new El(this.f, this.g, this.h, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        Q0 q0;
        String optString;
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
            String d = T0.d("https://omoda-c5-launcher.ru/api/activate", T0.a(this.f.B().b()));
            if (d == null) {
                q0 = new Q0(false, "network", null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(d);
                    boolean optBoolean = jSONObject.optBoolean("activated", false);
                    String optString2 = jSONObject.optString("status", "");
                    AbstractC0348nb.q(optString2, "optString(...)");
                    if (!jSONObject.isNull("license_key")) {
                        optString = jSONObject.optString("license_key", "");
                        if (Si.M(optString)) {
                        }
                        q0 = new Q0(optBoolean, optString2, optString);
                    }
                    optString = null;
                    q0 = new Q0(optBoolean, optString2, optString);
                } catch (Exception e) {
                    Log.w("ApiClient", "activateOnline parse failed: " + e.getMessage());
                    q0 = new Q0(false, "parse", null);
                }
            }
            Q0 q02 = q0;
            T6 t6 = AbstractC0546v7.a;
            Ca ca = AbstractC0066cd.a;
            Dl dl = new Dl(q02, this.f, this.g, this.h, null);
            this.e = 1;
            if (AbstractC0348nb.l0(ca, dl, this) == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((El) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
