package defpackage;

import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.HomeActivity;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.R;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import com.omoda.launcher.ui.PresetGridLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class Fk implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;

    public /* synthetic */ Fk(int i, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = i;
        this.b = topOverlayAccessibilityService;
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v53, types: [Nb, S9] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WindowManager.LayoutParams layoutParams;
        PresetGridLayout presetGridLayout;
        int i = 0;
        int i2 = 2;
        EnumC0411pm enumC0411pm = null;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                topOverlayAccessibilityService2.p0++;
                Handler handler = topOverlayAccessibilityService2.w;
                Jk jk = topOverlayAccessibilityService2.q0;
                handler.removeCallbacks(jk);
                handler.postDelayed(jk, 400L);
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                C0658zj c0658zj = topOverlayAccessibilityService4.C0;
                if (c0658zj != null) {
                    c0658zj.d();
                }
                topOverlayAccessibilityService4.F();
                topOverlayAccessibilityService4.L();
                topOverlayAccessibilityService4.C();
                return;
            case 2:
                TopOverlayAccessibilityService topOverlayAccessibilityService5 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService6 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService6, "this$0");
                C0658zj c0658zj2 = topOverlayAccessibilityService6.C0;
                if (c0658zj2 != null) {
                    c0658zj2.d();
                }
                topOverlayAccessibilityService6.F();
                topOverlayAccessibilityService6.L();
                topOverlayAccessibilityService6.performGlobalAction(1);
                return;
            case 3:
                TopOverlayAccessibilityService topOverlayAccessibilityService7 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService8 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService8, "this$0");
                if (topOverlayAccessibilityService8.r0) {
                    topOverlayAccessibilityService8.M();
                    topOverlayAccessibilityService8.F();
                    topOverlayAccessibilityService8.L();
                    topOverlayAccessibilityService8.A0();
                    return;
                }
                C0658zj c0658zj3 = topOverlayAccessibilityService8.C0;
                if (c0658zj3 != null) {
                    c0658zj3.d();
                }
                topOverlayAccessibilityService8.M();
                topOverlayAccessibilityService8.L();
                topOverlayAccessibilityService8.z0();
                return;
            case 4:
                TopOverlayAccessibilityService topOverlayAccessibilityService9 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService10 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService10, "this$0");
                C0658zj c0658zj4 = topOverlayAccessibilityService10.C0;
                if (c0658zj4 != null) {
                    c0658zj4.d();
                }
                topOverlayAccessibilityService10.F();
                topOverlayAccessibilityService10.L();
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - topOverlayAccessibilityService10.N0 < 300) {
                    return;
                }
                topOverlayAccessibilityService10.N0 = currentTimeMillis;
                WindowManager.LayoutParams layoutParams2 = topOverlayAccessibilityService10.L0;
                if (layoutParams2 == null || layoutParams2.width != 0) {
                    topOverlayAccessibilityService10.M();
                    return;
                }
                Sb.a.getClass();
                if (Sb.a()) {
                    topOverlayAccessibilityService10.a0();
                    return;
                }
                View view2 = topOverlayAccessibilityService10.c;
                if (view2 == null || (layoutParams = topOverlayAccessibilityService10.L0) == null || (presetGridLayout = topOverlayAccessibilityService10.M0) == null) {
                    return;
                }
                topOverlayAccessibilityService10.D0();
                layoutParams.width = presetGridLayout.getPanelWidth();
                layoutParams.height = 720;
                layoutParams.flags = 264;
                try {
                    topOverlayAccessibilityService10.v().updateViewLayout(view2, layoutParams);
                } catch (Exception unused) {
                }
                topOverlayAccessibilityService10.w.removeCallbacks(topOverlayAccessibilityService10.O0);
                return;
            case 5:
                TopOverlayAccessibilityService topOverlayAccessibilityService11 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService12 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService12, "this$0");
                C0658zj c0658zj5 = topOverlayAccessibilityService12.C0;
                if (c0658zj5 != null) {
                    c0658zj5.d();
                }
                topOverlayAccessibilityService12.M();
                topOverlayAccessibilityService12.F();
                topOverlayAccessibilityService12.L();
                try {
                    topOverlayAccessibilityService12.startActivity(new Intent().setClassName(topOverlayAccessibilityService12.m0, topOverlayAccessibilityService12.n0).addFlags(268435456));
                    return;
                } catch (Exception e) {
                    Log.e("TopOverlayA11y", "Factory app menu launch failed", e);
                    return;
                }
            case 6:
                TopOverlayAccessibilityService topOverlayAccessibilityService13 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService14 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService14, "this$0");
                topOverlayAccessibilityService14.r0(true);
                return;
            case 7:
                TopOverlayAccessibilityService topOverlayAccessibilityService15 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService16 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService16, "this$0");
                topOverlayAccessibilityService16.o++;
                Handler handler2 = topOverlayAccessibilityService16.w;
                Jk jk2 = topOverlayAccessibilityService16.p;
                handler2.removeCallbacks(jk2);
                if (topOverlayAccessibilityService16.o < 5) {
                    handler2.postDelayed(jk2, 1500L);
                    return;
                }
                topOverlayAccessibilityService16.o = 0;
                if (topOverlayAccessibilityService16.n) {
                    topOverlayAccessibilityService16.n = false;
                    C0255jm c0255jm = C0255jm.a;
                    C0255jm.d().edit().putBoolean("service_mode", false).apply();
                    Log.i("TopOverlayA11y", "ТО mode OFF — restoring launcher (home)");
                    topOverlayAccessibilityService16.s0();
                    topOverlayAccessibilityService16.n0();
                    topOverlayAccessibilityService16.v0();
                    Handler handler3 = topOverlayAccessibilityService16.k;
                    RunnableC0048bl runnableC0048bl = topOverlayAccessibilityService16.w0;
                    handler3.removeCallbacks(runnableC0048bl);
                    handler3.post(runnableC0048bl);
                    Ii ii = topOverlayAccessibilityService16.x0;
                    if (ii == null) {
                        Ii ii2 = new Ii(topOverlayAccessibilityService16, topOverlayAccessibilityService16.a);
                        Handler handler4 = ii2.c;
                        J2 j2 = ii2.f;
                        handler4.removeCallbacks(j2);
                        handler4.postDelayed(j2, 60000L);
                        topOverlayAccessibilityService16.x0 = ii2;
                    } else {
                        Handler handler5 = ii.c;
                        J2 j22 = ii.f;
                        handler5.removeCallbacks(j22);
                        handler5.postDelayed(j22, 60000L);
                    }
                    topOverlayAccessibilityService16.C();
                    return;
                }
                topOverlayAccessibilityService16.n = true;
                C0255jm c0255jm2 = C0255jm.a;
                C0255jm.d().edit().putBoolean("service_mode", true).apply();
                Log.i("TopOverlayA11y", "ТО mode ON — hiding launcher, closing preset apps");
                String str = topOverlayAccessibilityService16.C;
                if (str != null) {
                    Io io = topOverlayAccessibilityService16.J;
                    if (io == null) {
                        AbstractC0348nb.j0("windowLauncher");
                        throw null;
                    }
                    Integer f = io.f(str);
                    if (f != null) {
                        io.p(f.intValue());
                        io.e.remove(str);
                    }
                    io.u(str);
                }
                topOverlayAccessibilityService16.C = null;
                C0307lm c0307lm = topOverlayAccessibilityService16.K;
                if (c0307lm == null) {
                    AbstractC0348nb.j0("uiVisibilityClient");
                    throw null;
                }
                c0307lm.a(false);
                topOverlayAccessibilityService16.J();
                Io io2 = topOverlayAccessibilityService16.J;
                if (io2 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                io2.n();
                topOverlayAccessibilityService16.E();
                topOverlayAccessibilityService16.K();
                topOverlayAccessibilityService16.G();
                Ii ii3 = topOverlayAccessibilityService16.x0;
                if (ii3 != null) {
                    ii3.c.removeCallbacks(ii3.f);
                    ii3.a();
                }
                TextView textView = topOverlayAccessibilityService16.l;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                HomeActivity homeActivity = HomeActivity.w;
                if (homeActivity != null) {
                    homeActivity.finish();
                }
                topOverlayAccessibilityService16.I0();
                topOverlayAccessibilityService16.performGlobalAction(2);
                return;
            case 8:
                TopOverlayAccessibilityService topOverlayAccessibilityService17 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService18 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService18, "this$0");
                topOverlayAccessibilityService18.s();
                return;
            case 9:
                TopOverlayAccessibilityService topOverlayAccessibilityService19 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService20 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService20, "this$0");
                topOverlayAccessibilityService20.L();
                String packageName = topOverlayAccessibilityService20.getPackageName();
                AbstractC0348nb.q(packageName, "getPackageName(...)");
                topOverlayAccessibilityService20.Q(packageName);
                return;
            case 10:
                TopOverlayAccessibilityService topOverlayAccessibilityService21 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService22 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService22, "this$0");
                C0255jm c0255jm3 = C0255jm.a;
                String string = C0255jm.d().getString("covers_mode", "with_bg");
                String str2 = string != null ? string : "with_bg";
                List<String> list = C0255jm.c;
                ArrayList arrayList = new ArrayList(N4.r0(list));
                for (String str3 : list) {
                    arrayList.add(new C0016af(str3, TopOverlayAccessibilityService.o(str3)));
                }
                Ki ki = Ki.a;
                topOverlayAccessibilityService22.t0(Ki.f().f, arrayList, str2, new C0125el(3, topOverlayAccessibilityService22));
                return;
            case 11:
                TopOverlayAccessibilityService topOverlayAccessibilityService23 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService24 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService24, "this$0");
                View view3 = topOverlayAccessibilityService24.e1;
                TextView textView2 = view3 != null ? (TextView) view3.findViewById(R.id.btnUpdateLauncher) : null;
                CharSequence text = textView2 != null ? textView2.getText() : null;
                if (textView2 != null) {
                    Ki ki2 = Ki.a;
                    textView2.setText(Ki.d().d);
                }
                if (textView2 != null) {
                    textView2.setEnabled(false);
                }
                AbstractC0348nb.M(topOverlayAccessibilityService24.x, AbstractC0546v7.b, new C0022al(textView2, text, topOverlayAccessibilityService24, null), 2);
                return;
            case 12:
                TopOverlayAccessibilityService topOverlayAccessibilityService25 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService26 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService26, "this$0");
                topOverlayAccessibilityService26.L();
                Xk xk = topOverlayAccessibilityService26.b1;
                if (xk == null || !((Boolean) xk.c.d()).booleanValue()) {
                    topOverlayAccessibilityService26.m0();
                    return;
                }
                return;
            case 13:
                TopOverlayAccessibilityService topOverlayAccessibilityService27 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService28 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService28, "this$0");
                topOverlayAccessibilityService28.L();
                return;
            case 14:
                TopOverlayAccessibilityService topOverlayAccessibilityService29 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService30 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService30, "this$0");
                topOverlayAccessibilityService30.d(-1);
                TopOverlayAccessibilityService.F0(topOverlayAccessibilityService30.e1);
                return;
            case 15:
                TopOverlayAccessibilityService topOverlayAccessibilityService31 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService32 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService32, "this$0");
                topOverlayAccessibilityService32.d(1);
                TopOverlayAccessibilityService.F0(topOverlayAccessibilityService32.e1);
                return;
            case 16:
                TopOverlayAccessibilityService topOverlayAccessibilityService33 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService34 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService34, "this$0");
                EnumC0411pm[] values = EnumC0411pm.values();
                Ki ki3 = Ki.a;
                Sh f2 = Ki.f();
                ArrayList arrayList2 = new ArrayList(values.length);
                for (EnumC0411pm enumC0411pm2 : values) {
                    arrayList2.add(new C0016af(enumC0411pm2.a, TopOverlayAccessibilityService.B0(enumC0411pm2)));
                }
                C0255jm c0255jm4 = C0255jm.a;
                String string2 = C0255jm.d().getString("unified_mode", null);
                if (string2 == null) {
                    EnumC0411pm enumC0411pm3 = EnumC0411pm.d;
                    string2 = "off";
                }
                EnumC0411pm[] values2 = EnumC0411pm.values();
                int length = values2.length;
                while (true) {
                    if (i < length) {
                        EnumC0411pm enumC0411pm4 = values2[i];
                        if (AbstractC0348nb.g(enumC0411pm4.a, string2)) {
                            enumC0411pm = enumC0411pm4;
                        } else {
                            i++;
                        }
                    }
                }
                if (enumC0411pm == null) {
                    enumC0411pm = EnumC0411pm.d;
                }
                topOverlayAccessibilityService34.t0(f2.b, arrayList2, enumC0411pm.a, new N2(values, 6, topOverlayAccessibilityService34));
                return;
            case 17:
                TopOverlayAccessibilityService topOverlayAccessibilityService35 = this.b;
                TopOverlayAccessibilityService topOverlayAccessibilityService36 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService35, "this$0");
                C0255jm c0255jm5 = C0255jm.a;
                String b = C0255jm.b();
                if (!T7.w) {
                    throw new IllegalStateException("UiConfig not initialized — call UiConfig.init(context) first");
                }
                ?? r0 = T7.z;
                if (r0 == 0) {
                    AbstractC0348nb.j0("presetVariants");
                    throw null;
                }
                List<String> C0 = L4.C0(r0.keySet());
                ArrayList arrayList3 = new ArrayList(N4.r0(C0));
                for (String str4 : C0) {
                    arrayList3.add(new C0016af(str4, TopOverlayAccessibilityService.U(str4)));
                }
                Ki ki4 = Ki.a;
                topOverlayAccessibilityService35.t0(Ki.f().d, arrayList3, b, new C0125el(4, topOverlayAccessibilityService35));
                return;
            case 18:
                TopOverlayAccessibilityService topOverlayAccessibilityService37 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService38 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService38, "this$0");
                ArrayList l = TopOverlayAccessibilityService.l();
                ArrayList arrayList4 = new ArrayList(N4.r0(l));
                Iterator it = l.iterator();
                while (it.hasNext()) {
                    String str5 = (String) it.next();
                    arrayList4.add(new C0016af(str5, TopOverlayAccessibilityService.k(str5)));
                }
                Ki ki5 = Ki.a;
                Sh f3 = Ki.f();
                String string3 = C0255jm.d().getString("autostart_mode", "presets");
                String str6 = string3 != null ? string3 : "presets";
                String str7 = TopOverlayAccessibilityService.l().contains(str6) ? str6 : null;
                if (str7 == null) {
                    str7 = "apps";
                }
                topOverlayAccessibilityService38.t0(f3.l, arrayList4, str7, new C0125el(i2, topOverlayAccessibilityService38));
                return;
            case 19:
                TopOverlayAccessibilityService topOverlayAccessibilityService39 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService40 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService40, "this$0");
                topOverlayAccessibilityService40.L = -1;
                Intent intent = new Intent(topOverlayAccessibilityService40, (Class<?>) MainActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("show_mode_selector", true);
                topOverlayAccessibilityService40.startActivity(intent);
                topOverlayAccessibilityService40.M();
                return;
            case 20:
                TopOverlayAccessibilityService topOverlayAccessibilityService41 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService42 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService42, "this$0");
                FrameLayout frameLayout = topOverlayAccessibilityService42.l1;
                if (frameLayout != null) {
                    try {
                        WindowManager windowManager = topOverlayAccessibilityService42.m1;
                        if (windowManager == null) {
                            windowManager = topOverlayAccessibilityService42.v();
                        }
                        windowManager.removeView(frameLayout);
                    } catch (Exception unused2) {
                    }
                }
                topOverlayAccessibilityService42.l1 = null;
                topOverlayAccessibilityService42.m1 = null;
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService43 = TopOverlayAccessibilityService.n1;
                TopOverlayAccessibilityService topOverlayAccessibilityService44 = this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService44, "this$0");
                LinearLayout linearLayout = topOverlayAccessibilityService44.Y0;
                if (linearLayout != null) {
                    try {
                        WindowManager windowManager2 = topOverlayAccessibilityService44.a;
                        if (windowManager2 != null) {
                            windowManager2.removeView(linearLayout);
                        }
                    } catch (Exception unused3) {
                    }
                }
                topOverlayAccessibilityService44.Y0 = null;
                return;
        }
    }

    public /* synthetic */ Fk(TopOverlayAccessibilityService topOverlayAccessibilityService, LinearLayout linearLayout) {
        this.a = 6;
        this.b = topOverlayAccessibilityService;
    }
}
