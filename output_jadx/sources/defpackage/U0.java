package defpackage;

import android.content.SharedPreferences;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class U0 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ U0(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putBoolean;
        switch (this.a) {
            case 0:
                Y0 y0 = (Y0) this.b;
                AbstractC0348nb.r(y0, "this$0");
                C0516u2 c0516u2 = (C0516u2) this.c;
                AbstractC0348nb.r(c0516u2, "$item");
                y0.d.h(c0516u2.a);
                return;
            case 1:
                Y0 y02 = (Y0) this.b;
                AbstractC0348nb.r(y02, "this$0");
                C0541v2 c0541v2 = (C0541v2) this.c;
                AbstractC0348nb.r(c0541v2, "$item");
                C0125el c0125el = y02.e;
                if (c0125el != null) {
                    c0125el.h(c0541v2.a);
                    return;
                }
                return;
            case 2:
                C0658zj c0658zj = (C0658zj) this.b;
                AbstractC0348nb.r(c0658zj, "this$0");
                C0434qj c0434qj = (C0434qj) this.c;
                AbstractC0348nb.r(c0434qj, "this$1");
                C0356nj c0356nj = (C0356nj) L4.x0(c0658zj.n, c0434qj.c());
                if (c0356nj == null) {
                    return;
                }
                c0658zj.d();
                C0508tj c0508tj = c0356nj.d;
                if (c0508tj != null) {
                    c0658zj.f.h(c0508tj);
                    return;
                } else {
                    c0658zj.e.h((String) L4.w0(c0356nj.a));
                    return;
                }
            case 3:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = (TopOverlayAccessibilityService) this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                EditText editText = (EditText) this.c;
                Object systemService = topOverlayAccessibilityService2.getSystemService("input_method");
                AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                ((InputMethodManager) systemService).hideSoftInputFromWindow(editText.getWindowToken(), 0);
                return;
            case 4:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = (TopOverlayAccessibilityService) this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                AbstractC0348nb.o((View) this.c);
                topOverlayAccessibilityService4.r0(false);
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService5 = (TopOverlayAccessibilityService) this.b;
                String str = (String) this.c;
                TopOverlayAccessibilityService topOverlayAccessibilityService6 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService5, "this$0");
                FrameLayout frameLayout = topOverlayAccessibilityService5.l1;
                if (frameLayout != null) {
                    try {
                        WindowManager windowManager = topOverlayAccessibilityService5.m1;
                        if (windowManager == null) {
                            windowManager = topOverlayAccessibilityService5.v();
                        }
                        windowManager.removeView(frameLayout);
                    } catch (Exception unused) {
                    }
                }
                topOverlayAccessibilityService5.l1 = null;
                topOverlayAccessibilityService5.m1 = null;
                C0255jm c0255jm = C0255jm.a;
                if (str.equals(C0255jm.a())) {
                    return;
                }
                C0255jm.d().edit().putString("lang_code", str).apply();
                Sb.a.getClass();
                SharedPreferences sharedPreferences = Sb.c;
                if (sharedPreferences != null && (edit = sharedPreferences.edit()) != null && (putBoolean = edit.putBoolean(C6.r(6028912049955763840L), true)) != null) {
                    putBoolean.apply();
                }
                Io io = topOverlayAccessibilityService5.J;
                if (io == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io.f) {
                    Io io2 = topOverlayAccessibilityService5.J;
                    if (io2 == null) {
                        AbstractC0348nb.j0("windowLauncher");
                        throw null;
                    }
                    io2.n();
                }
                topOverlayAccessibilityService5.w.postDelayed(new Jk(5, topOverlayAccessibilityService5), 200L);
                return;
        }
    }
}
