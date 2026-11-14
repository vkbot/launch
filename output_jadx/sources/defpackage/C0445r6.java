package defpackage;

import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: r6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0445r6 extends ContentObserver {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0445r6(TopOverlayAccessibilityService topOverlayAccessibilityService, Handler handler) {
        super(handler);
        this.b = topOverlayAccessibilityService;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.a) {
            case 0:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [Nb, S9] */
    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        Cursor cursor;
        int i;
        switch (this.a) {
            case 0:
                Vi vi = (Vi) this.b;
                if (!vi.b || (cursor = vi.c) == null || cursor.isClosed()) {
                    return;
                }
                vi.a = vi.c.requery();
                return;
            default:
                T7 t7 = T7.i;
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) this.b;
                synchronized (t7) {
                    AbstractC0348nb.r(topOverlayAccessibilityService, "context");
                    if (D3.b) {
                        i = 2;
                    } else {
                        try {
                            i = Settings.System.getInt(topOverlayAccessibilityService.getContentResolver(), "com.citos.setting.theme.mode");
                        } catch (Exception unused) {
                            i = -1;
                        }
                    }
                    if (i == T7.k) {
                        return;
                    }
                    T7.i(topOverlayAccessibilityService, i);
                    TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                    TopOverlayAccessibilityService topOverlayAccessibilityService3 = (TopOverlayAccessibilityService) this.b;
                    boolean z2 = topOverlayAccessibilityService3.i != null;
                    boolean z3 = topOverlayAccessibilityService3.j != null;
                    topOverlayAccessibilityService3.K();
                    ((TopOverlayAccessibilityService) this.b).G();
                    if (z2) {
                        ((TopOverlayAccessibilityService) this.b).s0();
                    }
                    if (z3) {
                        ((TopOverlayAccessibilityService) this.b).n0();
                    }
                    ((TopOverlayAccessibilityService) this.b).j();
                    TopOverlayAccessibilityService topOverlayAccessibilityService4 = (TopOverlayAccessibilityService) this.b;
                    View view = topOverlayAccessibilityService4.e1;
                    if (view != null) {
                        topOverlayAccessibilityService4.i(view);
                    }
                    TopOverlayAccessibilityService topOverlayAccessibilityService5 = (TopOverlayAccessibilityService) this.b;
                    Iterator it = ((ArrayList) Z2.W(new Xk[]{topOverlayAccessibilityService5.U0, topOverlayAccessibilityService5.b1})).iterator();
                    while (it.hasNext()) {
                        ((Xk) it.next()).a.a();
                    }
                    Xk xk = ((TopOverlayAccessibilityService) this.b).b1;
                    if (xk != null) {
                        if (!((Boolean) xk.c.d()).booleanValue()) {
                            xk = null;
                        }
                        if (xk != null) {
                            ((TopOverlayAccessibilityService) this.b).V(xk, false);
                        }
                    }
                    ((TopOverlayAccessibilityService) this.b).f();
                    ((TopOverlayAccessibilityService) this.b).D0();
                    return;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0445r6(Vi vi) {
        super(new Handler());
        this.b = vi;
    }
}
