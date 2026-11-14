package com.omoda.launcher;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.LastScreen;
import com.omoda.launcher.data.Preset;
import com.omoda.launcher.data.PresetRepository;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import defpackage.AbstractActivityC0028b1;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0171gf;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0528ue;
import defpackage.AbstractC0554vf;
import defpackage.B4;
import defpackage.C0014ad;
import defpackage.C0016af;
import defpackage.C0040bd;
import defpackage.C0255jm;
import defpackage.C0299le;
import defpackage.C0307lm;
import defpackage.C0491t2;
import defpackage.C0513u;
import defpackage.C0572w8;
import defpackage.C6;
import defpackage.Io;
import defpackage.J2;
import defpackage.Jk;
import defpackage.Ki;
import defpackage.L4;
import defpackage.M4;
import defpackage.Na;
import defpackage.O;
import defpackage.Q7;
import defpackage.RunnableC0061c8;
import defpackage.S4;
import defpackage.Sb;
import defpackage.T7;
import defpackage.Uc;
import defpackage.Vc;
import defpackage.Wc;
import defpackage.Wj;
import defpackage.Xc;
import defpackage.Yc;
import defpackage.Z2;
import defpackage.Zc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class MainActivity extends AbstractActivityC0028b1 {
    public static MainActivity O;
    public static final Set P = AbstractC0528ue.a;
    public boolean B;
    public volatile boolean C;
    public volatile boolean D;
    public volatile Preset E;
    public long G;
    public int H;
    public boolean I;
    public FrameLayout J;
    public C0491t2 v;
    public PresetRepository w;
    public Io x;
    public AppInfo y;
    public AppInfo z;
    public float A = 0.7f;
    public final Handler F = new Handler(Looper.getMainLooper());
    public final long K = 3000;
    public final J2 L = new J2(10, this);
    public int M = -1;
    public final Handler N = new Handler(Looper.getMainLooper());

    public static void H(View view, String str) {
        LinearLayout linearLayout = view instanceof LinearLayout ? (LinearLayout) view : null;
        if (linearLayout == null) {
            return;
        }
        View childAt = linearLayout.getChildAt(1);
        TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }

    public final void A(boolean z) {
        Sb.a.getClass();
        if (Sb.a()) {
            return;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        C0255jm c0255jm = C0255jm.a;
        if (C0255jm.c()) {
            I();
            C0491t2 c0491t2 = this.v;
            if (c0491t2 == null) {
                AbstractC0348nb.j0("binding");
                throw null;
            }
            ((FrameLayout) c0491t2.a).removeAllViews();
            moveTaskToBack(true);
            return;
        }
        PresetRepository presetRepository = this.w;
        if (presetRepository == null) {
            AbstractC0348nb.j0("presetRepository");
            throw null;
        }
        List<Preset> allPresets = presetRepository.getAllPresets();
        if (allPresets.isEmpty()) {
            K();
            return;
        }
        String string = C0255jm.d().getString("autostart_mode", "presets");
        if (string == null) {
            string = "presets";
        }
        int hashCode = string.hashCode();
        C0572w8 c0572w8 = C0572w8.a;
        switch (hashCode) {
            case -318277260:
                if (string.equals("presets")) {
                    t((Preset) L4.w0(allPresets), c0572w8);
                    return;
                }
                break;
            case 3000946:
                if (string.equals("apps")) {
                    z(true);
                    return;
                }
                break;
            case 3314326:
                if (string.equals("last")) {
                    if (!z) {
                        Preset lastPreset = LastScreen.Companion.getLastPreset();
                        if (lastPreset == null) {
                            lastPreset = (Preset) L4.w0(allPresets);
                        }
                        t(lastPreset, c0572w8);
                        return;
                    }
                    LastScreen atStart = LastScreen.Companion.getAtStart();
                    if (atStart instanceof LastScreen.PresetShown) {
                        LastScreen.PresetShown presetShown = (LastScreen.PresetShown) atStart;
                        ArrayList arrayList = (ArrayList) Z2.W(new String[]{presetShown.getPreset().getLeftApp(), presetShown.getPreset().getRightApp()});
                        if (!arrayList.isEmpty()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                if (getPackageManager().getLaunchIntentForPackage((String) it.next()) == null) {
                                    z(false);
                                    return;
                                }
                            }
                        }
                        t(presetShown.getPreset(), c0572w8);
                        return;
                    }
                    if (!(atStart instanceof LastScreen.AppFullscreen)) {
                        if (AbstractC0348nb.g(atStart, LastScreen.Home.INSTANCE) || atStart == null) {
                            z(false);
                            return;
                        }
                        return;
                    }
                    LastScreen.AppFullscreen appFullscreen = (LastScreen.AppFullscreen) atStart;
                    if (getPackageManager().getLaunchIntentForPackage(appFullscreen.getPackageName()) != null) {
                        E(appFullscreen.getPackageName());
                        return;
                    } else {
                        z(false);
                        return;
                    }
                }
                break;
            case 3373990:
                if (string.equals("navi")) {
                    if (getPackageManager().getLaunchIntentForPackage("ru.yandex.yandexnavi") != null) {
                        E("ru.yandex.yandexnavi");
                        return;
                    } else {
                        t((Preset) L4.w0(allPresets), c0572w8);
                        return;
                    }
                }
                break;
        }
        t((Preset) L4.w0(allPresets), c0572w8);
    }

    public final Na B(Drawable drawable) {
        Drawable newDrawable;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.selected_app_icon_size);
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.selected_app_icon_radius);
        Resources resources = getResources();
        AbstractC0348nb.q(resources, "getResources(...)");
        AbstractC0348nb.r(drawable, "drawable");
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null && (newDrawable = constantState.newDrawable(resources)) != null) {
            drawable = newDrawable;
        }
        return new Na(drawable, dimensionPixelSize, dimensionPixelSize2);
    }

    public final GradientDrawable C() {
        float f = getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setColor(wj.p);
        int i = (int) (2 * f);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setStroke(i, wj2.o);
        gradientDrawable.setCornerRadius(8 * f);
        return gradientDrawable;
    }

    public final void D(int i) {
        Log.i("MainActivity", "AccessibilityService recovery SUCCESS at attempt " + i);
        this.I = false;
        y();
        if (this.B) {
            return;
        }
        this.B = true;
        x(getIntent(), false);
    }

    public final void E(String str) {
        I();
        C0491t2 c0491t2 = this.v;
        Object obj = null;
        if (c0491t2 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t2.a).removeAllViews();
        C0491t2 c0491t22 = this.v;
        if (c0491t22 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t22.c).setBackgroundColor(-16777216);
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        AbstractC0348nb.r(str, "pkg");
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService2 == null) {
            return;
        }
        topOverlayAccessibilityService2.w.post(new RunnableC0061c8(topOverlayAccessibilityService2, str, obj, 1));
    }

    public final void F(FrameLayout frameLayout) {
        LinearLayout linearLayout;
        String str;
        Ki ki = Ki.a;
        C0513u c0513u = Ki.q;
        if (c0513u == null) {
            AbstractC0348nb.j0("accessibilityError");
            throw null;
        }
        TextView textView = (TextView) frameLayout.findViewById(R.id.errorOverlayReason);
        if (textView == null || (linearLayout = (LinearLayout) frameLayout.findViewById(R.id.errorOverlayDiagPanel)) == null) {
            return;
        }
        int ordinal = (this.H >= 12 ? Zc.d : !C6.t(this).contains(new ComponentName(this, (Class<?>) TopOverlayAccessibilityService.class)) ? Zc.a : !C6.y(this) ? Zc.b : Zc.c).ordinal();
        if (ordinal == 0) {
            str = c0513u.b;
        } else if (ordinal == 1) {
            str = c0513u.c;
        } else if (ordinal == 2) {
            str = c0513u.d;
        } else {
            if (ordinal != 3) {
                throw new RuntimeException();
            }
            str = c0513u.e;
        }
        textView.setText(str);
        boolean contains = C6.t(this).contains(new ComponentName(this, (Class<?>) TopOverlayAccessibilityService.class));
        boolean y = C6.y(this);
        int elapsedRealtime = (int) ((SystemClock.elapsedRealtime() - this.G) / 1000);
        H(linearLayout.getChildAt(0), String.valueOf(this.H));
        View childAt = linearLayout.getChildAt(1);
        String str2 = c0513u.k;
        String str3 = c0513u.j;
        H(childAt, contains ? str3 : str2);
        View childAt2 = linearLayout.getChildAt(2);
        if (y) {
            str2 = str3;
        }
        H(childAt2, str2);
        H(linearLayout.getChildAt(3), elapsedRealtime + ' ' + c0513u.l);
    }

    public final void G() {
        AppInfo appInfo;
        AppInfo appInfo2 = this.y;
        if (appInfo2 == null || (appInfo = this.z) == null) {
            return;
        }
        Preset preset = new Preset(this.M, appInfo2.getPackageName(), appInfo.getPackageName(), this.A);
        PresetRepository presetRepository = this.w;
        if (presetRepository == null) {
            AbstractC0348nb.j0("presetRepository");
            throw null;
        }
        presetRepository.savePreset(preset);
        this.M = -1;
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService != null) {
            topOverlayAccessibilityService.D0();
        }
        t(preset, C0572w8.a);
    }

    public final void I() {
        this.D = false;
        this.E = null;
    }

    public final void J(boolean z, Q7 q7) {
        C0040bd c0040bd = new C0040bd(this, q7, 0);
        B4 b4 = new B4(new C0014ad(z, this, q7, c0040bd));
        S4 s4 = new S4(c0040bd);
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService != null) {
            topOverlayAccessibilityService.w.post(new RunnableC0061c8(topOverlayAccessibilityService, b4, s4, 2));
        }
    }

    public final void K() {
        int i = 0;
        int i2 = 1;
        this.C = true;
        I();
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService != null) {
            topOverlayAccessibilityService.E();
        }
        View inflate = getLayoutInflater().inflate(R.layout.mode_selector, (ViewGroup) null, false);
        int i3 = R.id.dualAppIcon;
        ImageView imageView = (ImageView) AbstractC0145ff.m(inflate, R.id.dualAppIcon);
        if (imageView != null) {
            i3 = R.id.dualAppLabel;
            TextView textView = (TextView) AbstractC0145ff.m(inflate, R.id.dualAppLabel);
            if (textView != null) {
                i3 = R.id.dualAppOption;
                FrameLayout frameLayout = (FrameLayout) AbstractC0145ff.m(inflate, R.id.dualAppOption);
                if (frameLayout != null) {
                    i3 = R.id.singleAppIcon;
                    ImageView imageView2 = (ImageView) AbstractC0145ff.m(inflate, R.id.singleAppIcon);
                    if (imageView2 != null) {
                        i3 = R.id.singleAppLabel;
                        TextView textView2 = (TextView) AbstractC0145ff.m(inflate, R.id.singleAppLabel);
                        if (textView2 != null) {
                            i3 = R.id.singleAppOption;
                            FrameLayout frameLayout2 = (FrameLayout) AbstractC0145ff.m(inflate, R.id.singleAppOption);
                            if (frameLayout2 != null) {
                                LinearLayout linearLayout = (LinearLayout) inflate;
                                v(frameLayout2, imageView2, textView2);
                                v(frameLayout, imageView, textView);
                                Ki ki = Ki.a;
                                C0299le c0299le = Ki.f;
                                if (c0299le == null) {
                                    AbstractC0348nb.j0("modeSelector");
                                    throw null;
                                }
                                textView2.setText(c0299le.a);
                                C0299le c0299le2 = Ki.f;
                                if (c0299le2 == null) {
                                    AbstractC0348nb.j0("modeSelector");
                                    throw null;
                                }
                                textView.setText(c0299le2.b);
                                frameLayout2.setOnClickListener(new Uc(this, i));
                                frameLayout.setOnClickListener(new Uc(this, i2));
                                C0491t2 c0491t2 = this.v;
                                if (c0491t2 == null) {
                                    AbstractC0348nb.j0("binding");
                                    throw null;
                                }
                                FrameLayout frameLayout3 = (FrameLayout) c0491t2.c;
                                AbstractC0348nb.q(frameLayout3, "rootLayout");
                                C6.a(frameLayout3);
                                C0491t2 c0491t22 = this.v;
                                if (c0491t22 == null) {
                                    AbstractC0348nb.j0("binding");
                                    throw null;
                                }
                                ((FrameLayout) c0491t22.a).removeAllViews();
                                C0491t2 c0491t23 = this.v;
                                if (c0491t23 != null) {
                                    ((FrameLayout) c0491t23.a).addView(linearLayout);
                                    return;
                                } else {
                                    AbstractC0348nb.j0("binding");
                                    throw null;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
    }

    public final Preset L() {
        Preset preset = this.E;
        if (preset == null || !this.D || this.C) {
            return null;
        }
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        if ((topOverlayAccessibilityService != null ? topOverlayAccessibilityService.C : null) != null) {
            return null;
        }
        Io io = this.x;
        if (io == null) {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
        if (io.e.isEmpty()) {
            return null;
        }
        Io io2 = this.x;
        if (io2 == null) {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
        if (io2.f) {
            return null;
        }
        Io io3 = this.x;
        if (io3 == null) {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
        if (io3.g) {
            return null;
        }
        return preset;
    }

    public final void M(int i) {
        this.H = i;
        this.I = true;
        Log.d("MainActivity", "AccessibilityService recovery attempt " + i);
        C6.j(this);
        this.F.postDelayed(new Vc(this, i, 0), i != 0 ? i != 1 ? i != 2 ? i != 3 ? 15000L : 8000L : 4000L : 2000L : 1000L);
    }

    public final void N(Q7 q7) {
        int width = q7.a.getWidth();
        if (width == 0) {
            return;
        }
        float f = width;
        float f2 = (this.A * f) - (f / 2.0f);
        q7.m.setTranslationX(f2 - 2.0f);
        q7.b.setTranslationX(f2);
    }

    public final void O(Q7 q7) {
        int i = (int) (this.A * 100);
        q7.n.setText(i + "    " + (100 - i));
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, t2] */
    @Override // defpackage.AbstractActivityC0028b1, androidx.activity.a, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        O = this;
        View inflate = getLayoutInflater().inflate(R.layout.activity_main, (ViewGroup) null, false);
        int i = R.id.contentContainer;
        FrameLayout frameLayout = (FrameLayout) AbstractC0145ff.m(inflate, R.id.contentContainer);
        if (frameLayout != null) {
            i = R.id.debugBg;
            ImageView imageView = (ImageView) AbstractC0145ff.m(inflate, R.id.debugBg);
            if (imageView != null) {
                FrameLayout frameLayout2 = (FrameLayout) inflate;
                if (((FrameLayout) AbstractC0145ff.m(inflate, R.id.workArea)) != null) {
                    ?? obj = new Object();
                    obj.a = frameLayout;
                    obj.b = imageView;
                    obj.c = frameLayout2;
                    this.v = obj;
                    setContentView(frameLayout2);
                    this.w = new PresetRepository(this);
                    this.x = Io.q.b(this);
                    Window window = getWindow();
                    AbstractC0348nb.q(window, "getWindow(...)");
                    window.getDecorView().setSystemUiVisibility(5894);
                    TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                    if (AbstractC0171gf.j()) {
                        Log.d("MainActivity", "AccessibilityService already running");
                        y();
                        return;
                    }
                    if (this.I) {
                        Log.d("MainActivity", "Recovery already in progress (attempt=" + this.H + ')');
                        return;
                    }
                    this.G = SystemClock.elapsedRealtime();
                    this.H = 0;
                    Handler handler = this.F;
                    J2 j2 = this.L;
                    handler.removeCallbacks(j2);
                    handler.post(j2);
                    M(0);
                    return;
                }
                i = R.id.workArea;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // defpackage.AbstractActivityC0028b1, android.app.Activity
    public final void onDestroy() {
        O = null;
        super.onDestroy();
    }

    @Override // defpackage.AbstractActivityC0028b1, androidx.activity.a, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        x(intent, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        if (r0.g != false) goto L24;
     */
    @Override // defpackage.AbstractActivityC0028b1, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onResume() {
        /*
            r4 = this;
            super.onResume()
            android.view.Window r0 = r4.getWindow()
            java.lang.String r1 = "getWindow(...)"
            defpackage.AbstractC0348nb.q(r0, r1)
            android.view.View r0 = r0.getDecorView()
            r1 = 5894(0x1706, float:8.259E-42)
            r0.setSystemUiVisibility(r1)
            boolean r0 = r4.B
            r1 = 0
            if (r0 != 0) goto L2d
            com.omoda.launcher.service.TopOverlayAccessibilityService r0 = com.omoda.launcher.service.TopOverlayAccessibilityService.n1
            boolean r0 = defpackage.AbstractC0171gf.j()
            if (r0 == 0) goto L80
            r0 = 1
            r4.B = r0
            android.content.Intent r0 = r4.getIntent()
            r4.x(r0, r1)
            goto L80
        L2d:
            boolean r0 = r4.D
            if (r0 == 0) goto L79
            Io r0 = r4.x
            r2 = 0
            java.lang.String r3 = "windowLauncher"
            if (r0 == 0) goto L75
            boolean r0 = r0.f
            if (r0 != 0) goto L79
            Io r0 = r4.x
            if (r0 == 0) goto L71
            java.util.LinkedHashSet r0 = r0.e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L55
            Io r0 = r4.x
            if (r0 == 0) goto L51
            boolean r0 = r0.g
            if (r0 == 0) goto L79
            goto L55
        L51:
            defpackage.AbstractC0348nb.j0(r3)
            throw r2
        L55:
            Io r4 = r4.x
            if (r4 == 0) goto L6d
            r4.c()
            com.omoda.launcher.service.TopOverlayAccessibilityService r4 = com.omoda.launcher.service.TopOverlayAccessibilityService.n1
            if (r4 == 0) goto L80
            android.os.Handler r0 = r4.w
            Jk r1 = new Jk
            r2 = 10
            r1.<init>(r2, r4)
            r0.post(r1)
            goto L80
        L6d:
            defpackage.AbstractC0348nb.j0(r3)
            throw r2
        L71:
            defpackage.AbstractC0348nb.j0(r3)
            throw r2
        L75:
            defpackage.AbstractC0348nb.j0(r3)
            throw r2
        L79:
            boolean r0 = r4.C
            if (r0 != 0) goto L80
            r4.A(r1)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.MainActivity.onResume():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r3 != 5) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onUserLeaveHint() {
        /*
            r8 = this;
            super.onUserLeaveHint()
            Io r0 = r8.x
            r1 = 0
            if (r0 == 0) goto L8a
            Fo r2 = r0.r()
            int r3 = r2.ordinal()
            r4 = 1
            r5 = 4
            r6 = 2
            if (r3 == 0) goto L38
            if (r3 == r4) goto L38
            if (r3 == r6) goto L3b
            r7 = 3
            if (r3 == r7) goto L3b
            if (r3 == r5) goto L22
            r1 = 5
            if (r3 == r1) goto L38
            goto L3b
        L22:
            boolean r3 = r0.i
            if (r3 == 0) goto L28
            r0.j = r4
        L28:
            r3 = 0
            r0.i = r3
            android.os.Handler r3 = r0.b
            r3.removeCallbacksAndMessages(r1)
            java.util.LinkedHashMap r1 = r0.n
            r1.clear()
            r0.g = r4
            goto L3b
        L38:
            r0.i()
        L3b:
            int r0 = r2.ordinal()
            java.lang.String r1 = "MainActivity"
            if (r0 == r6) goto L84
            if (r0 == r5) goto L69
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "onUserLeaveHint — "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r2 = ", preset hidden, overlays hidden"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
            r8.I()
            com.omoda.launcher.service.TopOverlayAccessibilityService r0 = com.omoda.launcher.service.TopOverlayAccessibilityService.n1
            if (r0 == 0) goto L65
            r0.E()
        L65:
            r8.moveTaskToBack(r4)
            goto L89
        L69:
            java.lang.String r8 = "onUserLeaveHint — another app over the preset, preset kept"
            android.util.Log.d(r1, r8)
            com.omoda.launcher.service.TopOverlayAccessibilityService r8 = com.omoda.launcher.service.TopOverlayAccessibilityService.n1
            if (r8 == 0) goto L89
            boolean r0 = r8.y
            if (r0 != 0) goto L77
            goto L89
        L77:
            r8.I()
            r8.M()
            r8.F()
            r8.L()
            goto L89
        L84:
            java.lang.String r8 = "onUserLeaveHint — a preset app came forward, nothing to do"
            android.util.Log.d(r1, r8)
        L89:
            return
        L8a:
            java.lang.String r8 = "windowLauncher"
            defpackage.AbstractC0348nb.j0(r8)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.MainActivity.onUserLeaveHint():void");
    }

    public final void t(Preset preset, Map map) {
        this.C = false;
        this.D = true;
        this.E = preset;
        LastScreen.Companion.preset(preset);
        C0491t2 c0491t2 = this.v;
        if (c0491t2 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t2.a).removeAllViews();
        C0491t2 c0491t22 = this.v;
        if (c0491t22 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t22.c).setBackgroundColor(-16777216);
        boolean z = !preset.isSingle();
        String leftApp = preset.isSingle() ? preset.getLeftApp() : null;
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        float ratio = preset.getRatio();
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
        if (topOverlayAccessibilityService2 != null) {
            topOverlayAccessibilityService2.y = true;
            topOverlayAccessibilityService2.V = false;
            topOverlayAccessibilityService2.C = null;
            C0307lm c0307lm = topOverlayAccessibilityService2.K;
            if (c0307lm == null) {
                AbstractC0348nb.j0("uiVisibilityClient");
                throw null;
            }
            c0307lm.a(false);
            topOverlayAccessibilityService2.J();
            MainActivity mainActivity = O;
            if (mainActivity != null) {
                C0491t2 c0491t23 = mainActivity.v;
                if (c0491t23 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((ImageView) c0491t23.b).setVisibility(8);
            }
            topOverlayAccessibilityService2.o0(z, ratio, leftApp);
            topOverlayAccessibilityService2.z = z;
            topOverlayAccessibilityService2.A = ratio;
            topOverlayAccessibilityService2.B = leftApp;
        } else {
            Log.w("TopOverlayA11y", "showWorkOverlays called but service not available");
        }
        Io io = this.x;
        if (io != null) {
            io.b(preset, map);
        } else {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
    }

    public final void u(Q7 q7) {
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        ColorStateList valueOf = ColorStateList.valueOf(wj.q);
        AbstractC0348nb.q(valueOf, "valueOf(...)");
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        ColorStateList valueOf2 = ColorStateList.valueOf(wj2.r);
        AbstractC0348nb.q(valueOf2, "valueOf(...)");
        for (ImageView imageView : M4.p0(q7.j, q7.s)) {
            imageView.setBackground(C());
            imageView.setImageTintList(valueOf);
        }
        for (ImageView imageView2 : M4.p0(q7.c, q7.d)) {
            imageView2.setBackground(C());
            imageView2.setImageTintList(valueOf);
        }
        Wj wj3 = T7.r;
        if (wj3 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        q7.e.setBackgroundColor(wj3.o);
        q7.k.setImageTintList(valueOf2);
        q7.l.setImageTintList(valueOf2);
        Wj wj4 = T7.r;
        if (wj4 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        q7.n.setTextColor(wj4.a);
        Wj wj5 = T7.r;
        if (wj5 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        q7.g.setTextColor(wj5.f);
        Wj wj6 = T7.r;
        if (wj6 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        q7.p.setTextColor(wj6.f);
    }

    public final void v(FrameLayout frameLayout, ImageView imageView, TextView textView) {
        float f = getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setColor(wj.p);
        int i = (int) (1 * f);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        gradientDrawable.setStroke(i, wj2.o);
        gradientDrawable.setCornerRadius(getResources().getDimension(R.dimen.window_corner_radius));
        frameLayout.setBackground(gradientDrawable);
        Wj wj3 = T7.r;
        if (wj3 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        imageView.setImageTintList(ColorStateList.valueOf(wj3.q));
        Wj wj4 = T7.r;
        if (wj4 != null) {
            textView.setTextColor(wj4.f);
        } else {
            AbstractC0348nb.j0("color");
            throw null;
        }
    }

    public final LinearLayout w(String str, String str2) {
        float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int i = (int) (4 * f);
        linearLayout.setPadding(0, i, 0, i);
        TextView textView = new TextView(this);
        textView.setText(str);
        if (T7.s == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        textView.setTextSize(r9.e);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView.setTextColor(wj.b);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView2 = new TextView(this);
        textView2.setText(str2);
        if (T7.s == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        textView2.setTextSize(r8.e);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView2.setTextColor(wj2.a);
        textView2.setTypeface(null, 1);
        textView2.setGravity(8388613);
        linearLayout.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    public final void x(Intent intent, boolean z) {
        Drawable drawable;
        String leftApp;
        Drawable drawable2;
        String rightApp;
        if (intent != null && intent.getBooleanExtra("boot_watch", false)) {
            intent.removeExtra("boot_watch");
            Log.i("MainActivity", "AccessibilityService up after boot recovery — autostart=nothing, back to the stock launcher");
            I();
            C0491t2 c0491t2 = this.v;
            if (c0491t2 == null) {
                AbstractC0348nb.j0("binding");
                throw null;
            }
            ((FrameLayout) c0491t2.a).removeAllViews();
            moveTaskToBack(true);
            return;
        }
        if (intent != null && intent.getBooleanExtra("show_mode_selector", false)) {
            TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
            if (topOverlayAccessibilityService != null) {
                topOverlayAccessibilityService.E();
            }
            K();
            return;
        }
        C0572w8 c0572w8 = C0572w8.a;
        if (intent != null && intent.hasExtra("activate_preset_index")) {
            int intExtra = intent.getIntExtra("activate_preset_index", -1);
            PresetRepository presetRepository = this.w;
            if (presetRepository == null) {
                AbstractC0348nb.j0("presetRepository");
                throw null;
            }
            Preset preset = presetRepository.getPreset(intExtra);
            if (preset != null) {
                Log.d("MainActivity", "Activating preset from bottom sheet: index=" + intExtra);
                t(preset, c0572w8);
            } else {
                Log.w("MainActivity", "Preset not found at index=" + intExtra);
                A(false);
            }
            intent.removeExtra("activate_preset_index");
            return;
        }
        if (intent != null && intent.getBooleanExtra("reopen_live_preset", false)) {
            intent.removeExtra("reopen_live_preset");
            Io io = this.x;
            if (io == null) {
                AbstractC0348nb.j0("windowLauncher");
                throw null;
            }
            C0016af l = io.l();
            Preset preset2 = l != null ? (Preset) l.a : null;
            if (preset2 != null) {
                t(preset2, c0572w8);
                return;
            } else {
                A(false);
                return;
            }
        }
        if (intent == null || !intent.hasExtra("edit_preset_index")) {
            if (z && !this.C) {
                Log.d("MainActivity", "Ignoring empty onNewIntent — preset already active");
                return;
            }
            boolean z2 = intent != null && intent.getBooleanExtra("boot_autostart", false);
            if (intent != null) {
                intent.removeExtra("boot_autostart");
            }
            A(z2);
            return;
        }
        int intExtra2 = intent.getIntExtra("edit_preset_index", -1);
        PresetRepository presetRepository2 = this.w;
        if (presetRepository2 == null) {
            AbstractC0348nb.j0("presetRepository");
            throw null;
        }
        Preset preset3 = presetRepository2.getPreset(intExtra2);
        if (preset3 != null) {
            Log.d("MainActivity", "Editing preset: index=" + intExtra2);
            TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
            if (topOverlayAccessibilityService2 != null) {
                topOverlayAccessibilityService2.E();
            }
            this.M = preset3.getId();
            this.C = true;
            I();
            if (preset3.isSingle()) {
                K();
            } else {
                this.A = preset3.getRatio();
                Q7 a = Q7.a(getLayoutInflater());
                u(a);
                try {
                    drawable = getPackageManager().getApplicationIcon(preset3.getLeftApp());
                } catch (Exception unused) {
                    drawable = null;
                }
                try {
                    leftApp = getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(preset3.getLeftApp(), 0)).toString();
                } catch (Exception unused2) {
                    leftApp = preset3.getLeftApp();
                }
                String str = leftApp;
                if (drawable != null) {
                    this.y = new AppInfo(preset3.getLeftApp(), str, drawable, 0L, null, false, 56, null);
                    a.j.setVisibility(8);
                    a.h.setVisibility(0);
                    a.f.setImageDrawable(B(drawable));
                    a.g.setText(str);
                    a.h.setOnClickListener(new Xc(this, a, 2));
                }
                if (preset3.getRightApp() != null) {
                    try {
                        drawable2 = getPackageManager().getApplicationIcon(preset3.getRightApp());
                    } catch (Exception unused3) {
                        drawable2 = null;
                    }
                    try {
                        rightApp = getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(preset3.getRightApp(), 0)).toString();
                    } catch (Exception unused4) {
                        rightApp = preset3.getRightApp();
                    }
                    if (drawable2 != null) {
                        this.z = new AppInfo(preset3.getRightApp(), rightApp, drawable2, 0L, null, false, 56, null);
                        a.s.setVisibility(8);
                        a.q.setVisibility(0);
                        a.o.setImageDrawable(B(drawable2));
                        a.p.setText(rightApp);
                        a.q.setOnClickListener(new Xc(this, a, 3));
                    }
                }
                ViewGroup.LayoutParams layoutParams = a.i.getLayoutParams();
                AbstractC0348nb.p(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                ViewGroup.LayoutParams layoutParams3 = a.r.getLayoutParams();
                AbstractC0348nb.p(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
                float f = this.A;
                layoutParams2.weight = f;
                layoutParams4.weight = 1 - f;
                a.i.setLayoutParams(layoutParams2);
                a.r.setLayoutParams(layoutParams4);
                if (this.y != null && this.z != null) {
                    a.c.setAlpha(1.0f);
                }
                a.j.setOnClickListener(new Xc(this, a, 4));
                a.s.setOnClickListener(new Xc(this, a, 5));
                View view = a.e;
                view.post(new O(12, a));
                view.setOnTouchListener(new Wc(a, this));
                a.d.setOnClickListener(new Uc(this, 4));
                a.c.setOnClickListener(new Uc(this, 5));
                O(a);
                a.a.post(new Yc(this, a, 1));
                C0491t2 c0491t22 = this.v;
                if (c0491t22 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                FrameLayout frameLayout = (FrameLayout) c0491t22.c;
                AbstractC0348nb.q(frameLayout, "rootLayout");
                C6.a(frameLayout);
                C0491t2 c0491t23 = this.v;
                if (c0491t23 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((FrameLayout) c0491t23.a).removeAllViews();
                C0491t2 c0491t24 = this.v;
                if (c0491t24 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((FrameLayout) c0491t24.a).addView(a.a);
            }
        } else {
            A(false);
        }
        intent.removeExtra("edit_preset_index");
    }

    public final void y() {
        FrameLayout frameLayout = this.J;
        if (frameLayout == null) {
            return;
        }
        C0491t2 c0491t2 = this.v;
        if (c0491t2 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t2.a).removeView(frameLayout);
        this.J = null;
        this.F.removeCallbacks(this.L);
        Log.d("MainActivity", "Error overlay hidden");
    }

    public final void z(boolean z) {
        TopOverlayAccessibilityService topOverlayAccessibilityService;
        I();
        C0491t2 c0491t2 = this.v;
        if (c0491t2 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t2.a).removeAllViews();
        C0491t2 c0491t22 = this.v;
        if (c0491t22 == null) {
            AbstractC0348nb.j0("binding");
            throw null;
        }
        ((FrameLayout) c0491t22.c).setBackgroundColor(-16777216);
        moveTaskToBack(true);
        if (AbstractC0554vf.j()) {
            TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
            if (topOverlayAccessibilityService2 != null) {
                topOverlayAccessibilityService2.w.post(new Jk(9, topOverlayAccessibilityService2));
                return;
            }
            return;
        }
        if (!z || (topOverlayAccessibilityService = TopOverlayAccessibilityService.n1) == null) {
            return;
        }
        topOverlayAccessibilityService.w.post(new Jk(7, topOverlayAccessibilityService));
    }
}
