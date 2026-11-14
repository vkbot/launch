package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Iterator;

/* renamed from: bl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0048bl implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;

    public /* synthetic */ RunnableC0048bl(int i, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.a) {
            case 0:
                Context context = C0357nk.a;
                if (C0357nk.f) {
                    long currentTimeMillis = System.currentTimeMillis();
                    C0279kk c0279kk = C0357nk.b;
                    if (c0279kk == null) {
                        AbstractC0348nb.j0("base");
                        throw null;
                    }
                    Long c = c0279kk.c();
                    if (c == null) {
                        C0279kk c0279kk2 = C0357nk.b;
                        if (c0279kk2 == null) {
                            AbstractC0348nb.j0("base");
                            throw null;
                        }
                        if (currentTimeMillis < c0279kk2.a()) {
                            C0357nk.e.execute(new RunnableC0492t3(3));
                        }
                    } else if (Math.abs(currentTimeMillis - c.longValue()) > 60000) {
                        Log.w("TimeKeeper", "clock drifted to " + new Date(currentTimeMillis) + " — restoring");
                        C0357nk.a("drift");
                    }
                }
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.b;
                TextView textView = topOverlayAccessibilityService2.j;
                if (textView != null) {
                    textView.setText(TopOverlayAccessibilityService.x());
                }
                topOverlayAccessibilityService2.k.postDelayed(this, 10000L);
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = this.b;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = TopOverlayAccessibilityService.n1;
                topOverlayAccessibilityService3.getClass();
                try {
                    Process exec = Runtime.getRuntime().exec(new String[]{"dumpsys", "input_method"});
                    InputStream inputStream = exec.getInputStream();
                    AbstractC0348nb.q(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, AbstractC0186h4.a), 8192);
                    Iterator it = new C0368o5(new C0401pc(0, bufferedReader)).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                        } else if (Si.H((String) it.next(), "mInputShown=true")) {
                            z = true;
                        }
                    }
                    bufferedReader.close();
                    exec.destroy();
                } catch (Exception unused) {
                    z = false;
                }
                if (z) {
                    this.b.w.postDelayed(this, 500L);
                    return;
                }
                TopOverlayAccessibilityService topOverlayAccessibilityService5 = this.b;
                topOverlayAccessibilityService5.w.removeCallbacks(topOverlayAccessibilityService5.o0);
                if (topOverlayAccessibilityService5.E) {
                    topOverlayAccessibilityService5.s0();
                    topOverlayAccessibilityService5.E = false;
                }
                if (topOverlayAccessibilityService5.F) {
                    if (topOverlayAccessibilityService5.y) {
                        Io io = topOverlayAccessibilityService5.J;
                        if (io == null) {
                            AbstractC0348nb.j0("windowLauncher");
                            throw null;
                        }
                        if (!io.g) {
                            topOverlayAccessibilityService5.o0(topOverlayAccessibilityService5.z, topOverlayAccessibilityService5.A, topOverlayAccessibilityService5.B);
                        }
                    }
                    topOverlayAccessibilityService5.F = false;
                    return;
                }
                return;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService6 = this.b;
                View view = topOverlayAccessibilityService6.e1;
                if (view == null) {
                    return;
                }
                topOverlayAccessibilityService6.G0(view);
                TopOverlayAccessibilityService.F0(view);
                topOverlayAccessibilityService6.w.postDelayed(this, 1000L);
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService7 = this.b;
                new Thread(new Jk(12, topOverlayAccessibilityService7)).start();
                topOverlayAccessibilityService7.k.postDelayed(this, topOverlayAccessibilityService7.t0);
                return;
        }
    }
}
