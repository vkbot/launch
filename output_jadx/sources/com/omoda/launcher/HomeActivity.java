package com.omoda.launcher;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.omoda.launcher.data.LastScreen;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import defpackage.AbstractActivityC0028b1;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0554vf;
import defpackage.Al;
import defpackage.Io;
import defpackage.Ja;
import defpackage.O;
import defpackage.Xk;

/* loaded from: classes.dex */
public final class HomeActivity extends AbstractActivityC0028b1 {
    public static HomeActivity w;
    public View v;

    @Override // androidx.activity.a, android.app.Activity
    public final void onBackPressed() {
    }

    @Override // defpackage.AbstractActivityC0028b1, androidx.activity.a, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        w = this;
        View inflate = LayoutInflater.from(this).inflate(R.layout.app_list_popup, (ViewGroup) null);
        AbstractC0348nb.q(inflate, "inflate(...)");
        this.v = inflate;
        setContentView(inflate);
        Window window = getWindow();
        AbstractC0348nb.q(window, "getWindow(...)");
        window.getDecorView().setSystemUiVisibility(5894);
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        View view = this.v;
        if (view == null) {
            AbstractC0348nb.j0("listView");
            throw null;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService2 != null) {
            topOverlayAccessibilityService2.b1 = topOverlayAccessibilityService2.q(view, true);
            topOverlayAccessibilityService2.f();
        }
    }

    @Override // defpackage.AbstractActivityC0028b1, android.app.Activity
    public final void onDestroy() {
        if (w == this) {
            w = null;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        View view = this.v;
        if (view == null) {
            AbstractC0348nb.j0("listView");
            throw null;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService2 != null) {
            Xk xk = topOverlayAccessibilityService2.b1;
            if ((xk != null ? xk.a.a : null) == view) {
                topOverlayAccessibilityService2.b1 = null;
                topOverlayAccessibilityService2.c1 = false;
            }
        }
        super.onDestroy();
    }

    @Override // defpackage.AbstractActivityC0028b1, android.app.Activity
    public final void onPause() {
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService != null) {
            topOverlayAccessibilityService.c1 = false;
            Xk xk = topOverlayAccessibilityService.b1;
            if (xk != null) {
                xk.a.c(false);
            }
            Ja w2 = topOverlayAccessibilityService.w();
            Handler handler = w2.c;
            O o = w2.h;
            handler.removeCallbacks(o);
            handler.postDelayed(o, 500L);
        }
        super.onPause();
    }

    @Override // defpackage.AbstractActivityC0028b1, android.app.Activity
    public final void onResume() {
        TopOverlayAccessibilityService topOverlayAccessibilityService;
        super.onResume();
        Window window = getWindow();
        AbstractC0348nb.q(window, "getWindow(...)");
        window.getDecorView().setSystemUiVisibility(5894);
        if (!AbstractC0554vf.j() || (topOverlayAccessibilityService = TopOverlayAccessibilityService.n1) == null) {
            finish();
            return;
        }
        Ja w2 = topOverlayAccessibilityService.w();
        w2.d.edit().remove("opening_at").apply();
        w2.g = 0;
        topOverlayAccessibilityService.c1 = true;
        LastScreen.Companion.home();
        topOverlayAccessibilityService.F();
        if (topOverlayAccessibilityService.C != null) {
            topOverlayAccessibilityService.t();
        }
        if (topOverlayAccessibilityService.y) {
            Io io = topOverlayAccessibilityService.J;
            if (io == null) {
                AbstractC0348nb.j0("windowLauncher");
                throw null;
            }
            if (io.g) {
                topOverlayAccessibilityService.n();
            } else {
                Io io2 = topOverlayAccessibilityService.J;
                if (io2 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io2.e.isEmpty()) {
                    topOverlayAccessibilityService.T();
                }
            }
        }
        Xk xk = topOverlayAccessibilityService.b1;
        if (xk != null) {
            topOverlayAccessibilityService.V(xk, false);
        }
        topOverlayAccessibilityService.I0();
        AbstractC0348nb.M(topOverlayAccessibilityService.x, null, new Al(topOverlayAccessibilityService, null), 3);
    }
}
