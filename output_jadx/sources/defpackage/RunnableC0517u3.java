package defpackage;

import android.content.Context;
import android.os.Handler;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* renamed from: u3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0517u3 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ RunnableC0517u3(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        int i2 = 1;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                if (!AbstractC0171gf.j()) {
                    Context context = AbstractC0542v3.b;
                    if (context == null) {
                        AbstractC0348nb.j0("app");
                        throw null;
                    }
                    if (C6.t(context).contains(C6.d(context))) {
                        Context context2 = AbstractC0542v3.b;
                        if (context2 == null) {
                            AbstractC0348nb.j0("app");
                            throw null;
                        }
                        Handler handler = AbstractC0542v3.a;
                        C6.h(context2, handler);
                        handler.postDelayed(new RunnableC0517u3(i, i2), 2000L);
                        return;
                    }
                }
                AbstractC0542v3.a(i + 1);
                return;
            default:
                Handler handler2 = AbstractC0542v3.a;
                AbstractC0542v3.a(i + 1);
                return;
        }
    }
}
