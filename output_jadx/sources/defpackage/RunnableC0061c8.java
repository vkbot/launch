package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: c8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0061c8 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ RunnableC0061c8(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                L l = (L) this.b;
                AbstractC0152fm abstractC0152fm = (AbstractC0152fm) this.c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.d;
                l.getClass();
                try {
                    C0191h9 y = AbstractC0348nb.y((Context) l.b);
                    if (y == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    C0165g9 c0165g9 = (C0165g9) ((InterfaceC0009a8) y.b);
                    synchronized (c0165g9.d) {
                        c0165g9.f = threadPoolExecutor;
                    }
                    ((InterfaceC0009a8) y.b).f(new C0087d8(abstractC0152fm, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    abstractC0152fm.y(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService, "$svc");
                String str = (String) this.c;
                AbstractC0348nb.r(str, "$pkg");
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService.P(str, (Intent) this.d);
                return;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = (TopOverlayAccessibilityService) this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService3, "$it");
                B4 b4 = (B4) this.c;
                S4 s4 = (S4) this.d;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = TopOverlayAccessibilityService.n1;
                View view = topOverlayAccessibilityService3.R0;
                if (view != null) {
                    try {
                        topOverlayAccessibilityService3.v().removeView(view);
                    } catch (Exception unused) {
                    }
                }
                topOverlayAccessibilityService3.R0 = null;
                topOverlayAccessibilityService3.S0 = null;
                topOverlayAccessibilityService3.U0 = null;
                topOverlayAccessibilityService3.V0 = b4;
                topOverlayAccessibilityService3.W0 = s4;
                topOverlayAccessibilityService3.m0();
                return;
            default:
                Io io = (Io) this.b;
                AbstractC0348nb.r(io, "this$0");
                Qn qn = (Qn) this.c;
                AbstractC0348nb.r(qn, "$launch");
                io.k(qn.a, qn.b, (Intent) this.d);
                return;
        }
    }
}
