package com.omoda.launcher.service;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.provider.Settings;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import com.omoda.launcher.HomeActivity;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.R;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.data.LastScreen;
import com.omoda.launcher.data.PrefsAppOrderStore;
import com.omoda.launcher.data.Preset;
import com.omoda.launcher.data.PresetRepository;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import com.omoda.launcher.ui.PresetGridLayout;
import defpackage.AbstractC0066cd;
import defpackage.AbstractC0145ff;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0171gf;
import defpackage.AbstractC0326mf;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.AbstractC0546v7;
import defpackage.AbstractC0554vf;
import defpackage.B4;
import defpackage.Bb;
import defpackage.BinderC0281km;
import defpackage.C0016af;
import defpackage.C0021ak;
import defpackage.C0047bk;
import defpackage.C0073ck;
import defpackage.C0074cl;
import defpackage.C0082d3;
import defpackage.C0099dk;
import defpackage.C0100dl;
import defpackage.C0115eb;
import defpackage.C0125el;
import defpackage.C0149fj;
import defpackage.C0203hl;
import defpackage.C0255jm;
import defpackage.C0279kk;
import defpackage.C0307lm;
import defpackage.C0357nk;
import defpackage.C0369o6;
import defpackage.C0384ol;
import defpackage.C0409pk;
import defpackage.C0435qk;
import defpackage.C0437qm;
import defpackage.C0445r6;
import defpackage.C0460rl;
import defpackage.C0478se;
import defpackage.C0491t2;
import defpackage.C0497t8;
import defpackage.C0547v8;
import defpackage.C0560vl;
import defpackage.C0572w8;
import defpackage.C0597x8;
import defpackage.C0641z2;
import defpackage.C0658zj;
import defpackage.C6;
import defpackage.Ca;
import defpackage.ChoreographerFrameCallbackC0330mj;
import defpackage.Ci;
import defpackage.D3;
import defpackage.Df;
import defpackage.Ef;
import defpackage.EnumC0197hf;
import defpackage.EnumC0411pm;
import defpackage.Fk;
import defpackage.Fo;
import defpackage.G0;
import defpackage.Gk;
import defpackage.H4;
import defpackage.Hb;
import defpackage.Hl;
import defpackage.Ia;
import defpackage.Ii;
import defpackage.Ik;
import defpackage.InterfaceC0089da;
import defpackage.InterfaceC0110e6;
import defpackage.InterfaceC0625yb;
import defpackage.Io;
import defpackage.J2;
import defpackage.Ja;
import defpackage.Ji;
import defpackage.Jk;
import defpackage.Jl;
import defpackage.Kg;
import defpackage.Ki;
import defpackage.L;
import defpackage.L4;
import defpackage.Lm;
import defpackage.M4;
import defpackage.Ml;
import defpackage.N4;
import defpackage.Na;
import defpackage.Nb;
import defpackage.O8;
import defpackage.P5;
import defpackage.Pe;
import defpackage.Ph;
import defpackage.R2;
import defpackage.Rh;
import defpackage.RunnableC0048bl;
import defpackage.RunnableC0215i7;
import defpackage.RunnableC0492t3;
import defpackage.S4;
import defpackage.Sb;
import defpackage.Sh;
import defpackage.Si;
import defpackage.T6;
import defpackage.T7;
import defpackage.Tk;
import defpackage.U0;
import defpackage.Uk;
import defpackage.V4;
import defpackage.ViewOnClickListenerC0408pj;
import defpackage.Vj;
import defpackage.Vk;
import defpackage.Wj;
import defpackage.Wk;
import defpackage.X0;
import defpackage.Xk;
import defpackage.Yj;
import defpackage.Yk;
import defpackage.Z2;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class TopOverlayAccessibilityService extends AccessibilityService {
    public static TopOverlayAccessibilityService n1;
    public float A;
    public final int A0;
    public String B;
    public final String B0;
    public String C;
    public C0658zj C0;
    public Nb D;
    public boolean D0;
    public boolean E;
    public final int E0;
    public boolean F;
    public final int F0;
    public LinearLayout G;
    public final Set G0;
    public WindowManager.LayoutParams H;
    public View H0;
    public PresetRepository I;
    public WindowManager.LayoutParams I0;
    public Io J;
    public final ArrayList J0;
    public C0307lm K;
    public boolean K0;
    public int L;
    public WindowManager.LayoutParams L0;
    public Jk M;
    public PresetGridLayout M0;
    public boolean N;
    public long N0;
    public float O;
    public final RunnableC0492t3 O0;
    public float P;
    public Wk P0;
    public int Q;
    public final HashMap Q0;
    public int R;
    public View R0;
    public RunnableC0215i7 S;
    public WindowManager.LayoutParams S0;
    public final long T;
    public boolean T0;
    public final float U;
    public Xk U0;
    public boolean V;
    public B4 V0;
    public C0445r6 W;
    public S4 W0;
    public boolean X;
    public final List X0;
    public final C0149fj Y;
    public LinearLayout Y0;
    public final C0460rl Z;
    public FrameLayout Z0;
    public WindowManager a;
    public final C0460rl a0;
    public final C0149fj a1;
    public final C0149fj b;
    public FrameLayout b0;
    public Xk b1;
    public View c;
    public final int c0;
    public boolean c1;
    public final int d0;
    public final C0149fj d1;
    public List e;
    public final int e0;
    public View e1;
    public boolean f;
    public final int f0;
    public WindowManager.LayoutParams f1;
    public Ci g;
    public final int g0;
    public boolean g1;
    public final int h0;
    public final C0149fj h1;
    public View i;
    public final int i0;
    public final C0149fj i1;
    public TextView j;
    public final int j0;
    public final RunnableC0048bl j1;
    public final int k0;
    public FrameLayout k1;
    public TextView l;
    public final int l0;
    public FrameLayout l1;
    public FrameLayout m;
    public final String m0;
    public WindowManager m1;
    public boolean n;
    public final String n0;
    public int o;
    public final RunnableC0048bl o0;
    public final Jk p;
    public int p0;
    public final Jk q0;
    public C0409pk r;
    public boolean r0;
    public volatile boolean s;
    public final RunnableC0048bl s0;
    public final Jk t;
    public final long t0;
    public final int u0;
    public final int v0;
    public final RunnableC0048bl w0;
    public final P5 x;
    public Ii x0;
    public boolean y;
    public final int y0;
    public boolean z;
    public final int z0;
    public final LinkedHashMap d = new LinkedHashMap();
    public final C0149fj h = new C0149fj(new Yk(11, this));
    public final Handler k = new Handler(Looper.getMainLooper());
    public final C0149fj q = new C0149fj(new Yk(17, this));
    public final long u = 120000;
    public final C0149fj v = new C0149fj(new Yk(5, this));
    public final Handler w = new Handler(Looper.getMainLooper());

    public TopOverlayAccessibilityService() {
        int i = 2;
        int i2 = 12;
        int i3 = 8;
        int i4 = 1;
        int i5 = 0;
        this.b = new C0149fj(new Yk(i5, this));
        this.p = new Jk(i5, this);
        this.t = new Jk(i4, this);
        InterfaceC0110e6 bb = new Bb(null);
        T6 t6 = AbstractC0546v7.a;
        Ca ca = AbstractC0066cd.a;
        AbstractC0348nb.r(ca, "context");
        bb = ca != C0497t8.a ? (InterfaceC0110e6) ca.e(bb, V4.d) : bb;
        this.x = new P5(bb.b(T7.f) == null ? bb.f(new Bb(null)) : bb);
        this.A = 0.5f;
        this.L = -1;
        this.Q = -1;
        this.R = -1;
        this.T = 400L;
        this.U = 30.0f;
        this.Y = new C0149fj(new Yk(i2, this));
        this.Z = new C0460rl(i4, this);
        this.a0 = new C0460rl(i5, this);
        this.c0 = 120;
        this.d0 = 310;
        this.e0 = 400;
        this.f0 = 235;
        this.g0 = 410;
        this.h0 = 180;
        this.i0 = 100;
        this.j0 = 87;
        this.k0 = 80;
        this.l0 = 690;
        this.m0 = "com.chery.launcher";
        this.n0 = "com.chery.appmenu.activity.AppMenuActivity";
        this.o0 = new RunnableC0048bl(i4, this);
        this.q0 = new Jk(i, this);
        this.s0 = new RunnableC0048bl(i5, this);
        this.t0 = 180000L;
        this.u0 = 12;
        this.v0 = 8;
        this.w0 = new RunnableC0048bl(3, this);
        this.y0 = 80;
        this.z0 = 20;
        this.A0 = 20;
        this.B0 = "floating_back";
        this.E0 = 42;
        this.F0 = 64;
        Set singleton = Collections.singleton("ru.rutube.app");
        AbstractC0348nb.q(singleton, "singleton(...)");
        this.G0 = singleton;
        this.J0 = new ArrayList();
        this.O0 = new RunnableC0492t3(i3);
        this.Q0 = new HashMap();
        this.X0 = M4.p0(1000L, 2000L);
        this.a1 = new C0149fj(new Yk(6, this));
        this.d1 = new C0149fj(new Yk(i3, this));
        this.h1 = new C0149fj(Ph.j);
        this.i1 = new C0149fj(Ph.k);
        this.j1 = new RunnableC0048bl(i, this);
    }

    public static String B0(EnumC0411pm enumC0411pm) {
        C0437qm c0437qm = Ki.k;
        if (c0437qm == null) {
            AbstractC0348nb.j0("unifiedMode");
            throw null;
        }
        int ordinal = enumC0411pm.ordinal();
        if (ordinal == 0) {
            return c0437qm.a;
        }
        if (ordinal == 1) {
            return c0437qm.b;
        }
        if (ordinal == 2) {
            return c0437qm.c;
        }
        if (ordinal == 3) {
            return c0437qm.d;
        }
        if (ordinal == 4) {
            return c0437qm.e;
        }
        throw new RuntimeException();
    }

    public static void F0(View view) {
        int i;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.settingsClockOffset) : null;
        if (textView == null) {
            return;
        }
        if (C0357nk.f) {
            C0279kk c0279kk = C0357nk.b;
            if (c0279kk == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            i = c0279kk.d;
        } else {
            i = 0;
        }
        int i2 = i / 60;
        String str = i2 > 0 ? "+" : "";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i2);
        sb.append(' ');
        Ki ki = Ki.a;
        sb.append(Ki.f().o);
        textView.setText(sb.toString());
    }

    public static RemoteApp O(List list, Integer num, String str) {
        Object obj;
        Object obj2;
        Iterator it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            int id = ((RemoteApp) obj2).getId();
            if (num != null && id == num.intValue()) {
                break;
            }
        }
        RemoteApp remoteApp = (RemoteApp) obj2;
        if (remoteApp != null) {
            return remoteApp;
        }
        Iterator it2 = list.iterator();
        boolean z = false;
        Object obj3 = null;
        while (true) {
            if (it2.hasNext()) {
                Object next = it2.next();
                if (AbstractC0348nb.g(Si.R(((RemoteApp) next).getVersion()).toString(), Si.R(str).toString())) {
                    if (z) {
                        break;
                    }
                    z = true;
                    obj3 = next;
                }
            } else if (z) {
                obj = obj3;
            }
        }
        return (RemoteApp) obj;
    }

    public static String U(String str) {
        Df df = Ki.h;
        if (df != null) {
            int hashCode = str.hashCode();
            return hashCode != -1078030475 ? hashCode != 102742843 ? (hashCode == 109548807 && str.equals("small")) ? df.a : str : !str.equals("large") ? str : df.c : !str.equals("medium") ? str : df.b;
        }
        AbstractC0348nb.j0("presetSize");
        throw null;
    }

    public static void W(FrameLayout frameLayout) {
        int childCount = frameLayout.getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                return;
            }
            View childAt = frameLayout.getChildAt(childCount);
            if (childAt.getId() != R.id.appIconFront && childAt.getId() != R.id.appIconBack) {
                frameLayout.removeViewAt(childCount);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:12|13|14|15|(2:17|18)(3:20|(4:22|(1:31)(1:26)|27|(1:30)(2:29|10))|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0081, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
    
        android.util.Log.w("TopOverlayA11y", "fetchApps attempt " + r9 + '/' + r11 + " failed: " + android.util.Log.getStackTraceString(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d8, code lost:
    
        if (r9 >= r11) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[Catch: Exception -> 0x0081, TRY_LEAVE, TryCatch #0 {Exception -> 0x0081, blocks: (B:15:0x0052, B:20:0x0063), top: B:14:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00d4 -> B:10:0x00d6). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.omoda.launcher.service.TopOverlayAccessibilityService r9, int r10, defpackage.T5 r11) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.service.TopOverlayAccessibilityService.a(com.omoda.launcher.service.TopOverlayAccessibilityService, int, T5):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4 A[LOOP:1: B:26:0x009e->B:28:0x00a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(com.omoda.launcher.service.TopOverlayAccessibilityService r7, defpackage.T5 r8) {
        /*
            r7.getClass()
            boolean r0 = r8 instanceof defpackage.C0585wl
            if (r0 == 0) goto L16
            r0 = r8
            wl r0 = (defpackage.C0585wl) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.g = r1
            goto L1b
        L16:
            wl r0 = new wl
            r0.<init>(r7, r8)
        L1b:
            java.lang.Object r8 = r0.e
            l6 r1 = defpackage.EnumC0291l6.a
            int r2 = r0.g
            sm r3 = defpackage.C0486sm.a
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2e
            com.omoda.launcher.service.TopOverlayAccessibilityService r7 = r0.d
            defpackage.AbstractC0171gf.v(r8)
            goto L5e
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L36:
            defpackage.AbstractC0171gf.v(r8)
            java.util.List r8 = r7.e
            if (r8 == 0) goto L40
        L3d:
            r1 = r3
            goto Lae
        L40:
            android.content.res.Resources r8 = r7.getResources()
            r2 = 2131099736(0x7f060058, float:1.7811834E38)
            int r8 = r8.getDimensionPixelSize(r2)
            J6 r2 = defpackage.AbstractC0546v7.b
            xl r5 = new xl
            r6 = 0
            r5.<init>(r7, r8, r6)
            r0.d = r7
            r0.g = r4
            java.lang.Object r8 = defpackage.AbstractC0348nb.l0(r2, r5, r0)
            if (r8 != r1) goto L5e
            goto Lae
        L5e:
            af r8 = (defpackage.C0016af) r8
            if (r8 != 0) goto L63
            goto L3d
        L63:
            java.util.List r0 = r7.e
            if (r0 == 0) goto L68
            goto L3d
        L68:
            java.lang.Object r0 = r8.a
            java.util.List r0 = (java.util.List) r0
            r7.e = r0
            java.lang.Object r8 = r8.b
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        L76:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L96
            java.lang.Object r1 = r8.next()
            af r1 = (defpackage.C0016af) r1
            java.lang.Object r2 = r1.a
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.b
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            java.util.LinkedHashMap r4 = r7.d
            java.lang.Object r5 = r4.get(r2)
            if (r5 != 0) goto L76
            r4.put(r2, r1)
            goto L76
        L96:
            java.util.ArrayList r8 = r7.w0()
            java.util.Iterator r8 = r8.iterator()
        L9e:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L3d
            java.lang.Object r1 = r8.next()
            Xk r1 = (defpackage.Xk) r1
            r7.u0(r1, r0)
            goto L9e
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.service.TopOverlayAccessibilityService.b(com.omoda.launcher.service.TopOverlayAccessibilityService, T5):java.lang.Object");
    }

    public static final TextView c0(TopOverlayAccessibilityService topOverlayAccessibilityService, R2 r2, float f) {
        TextView textView = new TextView(topOverlayAccessibilityService, null, 0, R.style.SettingsValue);
        textView.setText(r2.d);
        topOverlayAccessibilityService.getClass();
        if (T7.s == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        textView.setTextSize(r4.f);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView.setTextColor(wj.e);
        textView.setGravity(17);
        int i = (int) (16 * f);
        int i2 = (int) (12 * f);
        textView.setPadding(i, i2, i, i2);
        return textView;
    }

    public static final void d0(TopOverlayAccessibilityService topOverlayAccessibilityService, ArrayList arrayList, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, ArrayList arrayList2, float f, LinearLayout linearLayout, RemoteApp remoteApp) {
        f0(arrayList, textView, textView2, textView3, textView4, textView5);
        Ki ki = Ki.a;
        String concat = Ki.e().c.concat("0%...");
        textView6.setVisibility(8);
        textView7.setText(concat);
        B4 b4 = new B4(3, textView7);
        Jl jl = new Jl(textView, textView2, arrayList2, textView3, textView7, f, topOverlayAccessibilityService, textView6, linearLayout);
        AbstractC0348nb.M(topOverlayAccessibilityService.x, AbstractC0546v7.b, new C0384ol(topOverlayAccessibilityService, remoteApp, topOverlayAccessibilityService, b4, new C0203hl(textView7, topOverlayAccessibilityService, linearLayout, 2), jl, null), 2);
    }

    public static final SpannableStringBuilder e0(TopOverlayAccessibilityService topOverlayAccessibilityService, String str, String str2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        topOverlayAccessibilityService.getClass();
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        SpannableStringBuilder append = spannableStringBuilder.append(str, new ForegroundColorSpan(wj.b), 33).append((CharSequence) str2);
        AbstractC0348nb.q(append, "append(...)");
        return append;
    }

    public static final void f0(ArrayList arrayList, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Hl hl = (Hl) it.next();
            hl.a.setEnabled(false);
            hl.a.setAlpha(0.4f);
        }
        textView.setEnabled(false);
        textView2.setEnabled(false);
        textView3.setEnabled(false);
        h0(textView4, false);
        h0(textView5, false);
    }

    public static final void g0(R2 r2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppInfo appInfo, TopOverlayAccessibilityService topOverlayAccessibilityService, TopOverlayAccessibilityService topOverlayAccessibilityService2) {
        textView.setText(e0(topOverlayAccessibilityService, r2.a, "…"));
        textView2.setText(e0(topOverlayAccessibilityService, r2.b, "…"));
        textView3.setText(e0(topOverlayAccessibilityService, r2.c, "…"));
        h0(textView4, false);
        h0(textView5, false);
        AbstractC0348nb.M(topOverlayAccessibilityService.x, AbstractC0546v7.b, new Ml(topOverlayAccessibilityService2, appInfo, textView, r2, textView2, textView3, textView4, textView5, topOverlayAccessibilityService, null), 2);
    }

    public static final void h0(TextView textView, boolean z) {
        textView.setEnabled(z);
        textView.setAlpha(z ? 1.0f : 0.4f);
    }

    public static final void i0(ArrayList arrayList, TextView textView, TextView textView2, float f, TopOverlayAccessibilityService topOverlayAccessibilityService, TextView textView3, TextView textView4, TextView textView5, String str) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(8);
        }
        textView.setVisibility(8);
        textView2.setMaxWidth((int) (900 * f));
        topOverlayAccessibilityService.getClass();
        if (T7.s == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        textView2.setTextSize(r2.d);
        textView5.setVisibility(8);
        textView2.setText(str);
        Ki ki = Ki.a;
        textView3.setText(Ki.c().b);
        textView3.setEnabled(true);
        textView4.setEnabled(true);
    }

    public static final TextView j0(TopOverlayAccessibilityService topOverlayAccessibilityService) {
        TextView textView = new TextView(topOverlayAccessibilityService);
        textView.setTextSize(28.0f);
        topOverlayAccessibilityService.getClass();
        Wj wj = T7.r;
        if (wj != null) {
            textView.setTextColor(wj.f);
            return textView;
        }
        AbstractC0348nb.j0("color");
        throw null;
    }

    public static String k(String str) {
        C0082d3 c0082d3 = Ki.i;
        if (c0082d3 == null) {
            AbstractC0348nb.j0("autostart");
            throw null;
        }
        switch (str.hashCode()) {
            case -318277260:
                return !str.equals("presets") ? str : c0082d3.b;
            case 3000946:
                return !str.equals("apps") ? str : c0082d3.d;
            case 3314326:
                return !str.equals("last") ? str : c0082d3.a;
            case 3373990:
                return !str.equals("navi") ? str : c0082d3.e;
            case 2129323981:
                return !str.equals("nothing") ? str : c0082d3.c;
            default:
                return str;
        }
    }

    public static float k0(TextView textView) {
        CharSequence text = textView.getText();
        AbstractC0348nb.q(text, "getText(...)");
        return textView.getPaint().measureText(text.toString());
    }

    public static ArrayList l() {
        List list = C0255jm.b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!AbstractC0348nb.g((String) obj, "nothing") || !AbstractC0554vf.j()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final String l0(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder("v");
        sb.append(str);
        if (str2 == null || (str3 = "  ·  mod ".concat(str2)) == null) {
            str3 = "";
        }
        sb.append(str3);
        return sb.toString();
    }

    public static String o(String str) {
        C0369o6 c0369o6 = Ki.j;
        if (c0369o6 != null) {
            int hashCode = str.hashCode();
            return hashCode != 93818879 ? hashCode != 104988547 ? (hashCode == 1355137630 && str.equals("with_bg")) ? c0369o6.a : str : !str.equals("no_bg") ? str : c0369o6.b : !str.equals("black") ? str : c0369o6.c;
        }
        AbstractC0348nb.j0("coversMode");
        throw null;
    }

    public static final FrameLayout q0(TopOverlayAccessibilityService topOverlayAccessibilityService, int i, int i2) {
        FrameLayout frameLayout = new FrameLayout(topOverlayAccessibilityService);
        frameLayout.setBackgroundResource(R.drawable.floating_back_bg);
        ImageView imageView = new ImageView(topOverlayAccessibilityService);
        imageView.setImageResource(i2);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
        layoutParams.gravity = 17;
        frameLayout.addView(imageView, layoutParams);
        return frameLayout;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, java.lang.Object] */
    public static Ef r() {
        C0255jm c0255jm = C0255jm.a;
        String b = C0255jm.b();
        if (!T7.w) {
            throw new IllegalStateException("UiConfig not initialized — call UiConfig.init(context) first");
        }
        ?? r1 = T7.z;
        if (r1 == 0) {
            AbstractC0348nb.j0("presetVariants");
            throw null;
        }
        Ef ef = (Ef) r1.get(b);
        if (ef != null) {
            return ef;
        }
        ?? r0 = T7.z;
        if (r0 == 0) {
            AbstractC0348nb.j0("presetVariants");
            throw null;
        }
        Object obj = r0.get("small");
        AbstractC0348nb.o(obj);
        return (Ef) obj;
    }

    public static int u(String str) {
        int hashCode = str.hashCode();
        if (hashCode == 3241) {
            return !str.equals("en") ? R.drawable.flag_ru : R.drawable.flag_en;
        }
        if (hashCode == 3246) {
            return !str.equals("es") ? R.drawable.flag_ru : R.drawable.flag_es;
        }
        if (hashCode == 3276) {
            return !str.equals("fr") ? R.drawable.flag_ru : R.drawable.flag_fr;
        }
        if (hashCode == 3424) {
            return !str.equals("kk") ? R.drawable.flag_ru : R.drawable.flag_kk;
        }
        if (hashCode == 3494) {
            return !str.equals("ms") ? R.drawable.flag_ru : R.drawable.flag_ms;
        }
        if (hashCode == 3588) {
            return !str.equals("pt") ? R.drawable.flag_ru : R.drawable.flag_pt;
        }
        if (hashCode != 3651) {
            return hashCode != 3710 ? (hashCode == 3886 && str.equals("zh")) ? R.drawable.flag_zh : R.drawable.flag_ru : !str.equals("tr") ? R.drawable.flag_ru : R.drawable.flag_tr;
        }
        str.equals("ru");
        return R.drawable.flag_ru;
    }

    public static String x() {
        Long l = null;
        if (C0357nk.f) {
            C0279kk c0279kk = C0357nk.b;
            if (c0279kk == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            Long c = c0279kk.c();
            if (c != null) {
                l = Long.valueOf((c0279kk.d * 60000) + c.longValue());
            }
        }
        if (l == null) {
            Calendar calendar = Calendar.getInstance();
            return calendar.get(1) < 1980 ? "--:--" : String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12))}, 2));
        }
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar2.setTimeInMillis(l.longValue());
        return String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(calendar2.get(11)), Integer.valueOf(calendar2.get(12))}, 2));
    }

    public final ArrayList A() {
        long j;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> queryIntentActivities = getPackageManager().queryIntentActivities(intent, 0);
        AbstractC0348nb.q(queryIntentActivities, "queryIntentActivities(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : queryIntentActivities) {
            if (!AbstractC0348nb.g(((ResolveInfo) obj).activityInfo.packageName, getPackageName())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if ((((ResolveInfo) next).activityInfo.applicationInfo.flags & 1) == 0) {
                arrayList2.add(next);
            }
        }
        ArrayList arrayList3 = new ArrayList(N4.r0(arrayList2));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ResolveInfo resolveInfo = (ResolveInfo) it2.next();
            String str = resolveInfo.activityInfo.packageName;
            AbstractC0348nb.q(str, "packageName");
            String obj2 = resolveInfo.loadLabel(getPackageManager()).toString();
            Drawable loadIcon = resolveInfo.loadIcon(getPackageManager());
            AbstractC0348nb.q(loadIcon, "loadIcon(...)");
            try {
                j = getPackageManager().getPackageInfo(resolveInfo.activityInfo.packageName, 0).lastUpdateTime;
            } catch (Exception unused) {
                j = 0;
            }
            arrayList3.add(new AppInfo(str, obj2, loadIcon, j, null, false, 48, null));
        }
        return arrayList3;
    }

    public final void A0() {
        boolean z;
        C0658zj c0658zj = this.C0;
        if (c0658zj == null) {
            c0658zj = new C0658zj(this, v(), new Yk(13, this), new Yk(14, this), new C0125el(5, this), new C0125el(6, this), new C0125el(7, this), new C0125el(8, this), new C0125el(9, this), new Yk(15, this), new Yk(16, this));
            this.C0 = c0658zj;
        }
        View view = c0658zj.l;
        if (view != null || (z = c0658zj.m)) {
            c0658zj.d();
            return;
        }
        this.D0 = this.T0;
        if (view == null && !z) {
            c0658zj.m = true;
            Choreographer.getInstance().postFrameCallback(new ChoreographerFrameCallbackC0330mj(3, new S4(5, c0658zj), c0658zj));
        }
        Y(false);
        F();
    }

    public final Lm B() {
        return (Lm) this.q.a();
    }

    public final void C() {
        if (w().a()) {
            w().b(false);
        } else {
            performGlobalAction(2);
        }
    }

    public final void C0() {
        String str = this.C;
        this.C = null;
        C0307lm c0307lm = this.K;
        if (c0307lm == null) {
            AbstractC0348nb.j0("uiVisibilityClient");
            throw null;
        }
        c0307lm.a(false);
        J();
        if (str != null) {
            Io io = this.J;
            if (io == null) {
                AbstractC0348nb.j0("windowLauncher");
                throw null;
            }
            Integer f = io.f(str);
            if (f != null) {
                io.p(f.intValue());
                io.e.remove(str);
            }
            io.g(str);
        }
        C();
    }

    public final void D() {
        FrameLayout frameLayout = this.Z0;
        if (frameLayout != null) {
            try {
                WindowManager windowManager = this.a;
                if (windowManager != null) {
                    windowManager.removeView(frameLayout);
                }
            } catch (Exception unused) {
            }
            this.Z0 = null;
        }
    }

    public final void D0() {
        int i;
        int i2;
        RunnableC0215i7 runnableC0215i7 = this.S;
        if (runnableC0215i7 != null) {
            this.w.removeCallbacks(runnableC0215i7);
        }
        this.S = null;
        PresetGridLayout presetGridLayout = this.M0;
        if (presetGridLayout == null) {
            return;
        }
        PresetRepository presetRepository = this.I;
        if (presetRepository == null) {
            AbstractC0348nb.j0("presetRepository");
            throw null;
        }
        List<Preset> allPresets = presetRepository.getAllPresets();
        C0255jm c0255jm = C0255jm.a;
        Wk wk = new Wk(allPresets, C0255jm.b(), T7.k);
        if (!wk.equals(this.P0)) {
            Ef r = r();
            presetGridLayout.removeAllViews();
            int i3 = r.g;
            presetGridLayout.a = i3 < 1 ? 1 : i3;
            presetGridLayout.b = r.f;
            presetGridLayout.c = r.e;
            presetGridLayout.requestLayout();
            int i4 = i3 * 5;
            if (i4 < 0) {
                throw new IllegalArgumentException(("Requested element count " + i4 + " is less than zero.").toString());
            }
            List list = C0547v8.a;
            if (i4 != 0) {
                if (i4 >= allPresets.size()) {
                    list = L4.C0(allPresets);
                } else if (i4 == 1) {
                    list = AbstractC0348nb.N(L4.w0(allPresets));
                } else {
                    ArrayList arrayList = new ArrayList(i4);
                    Iterator<T> it = allPresets.iterator();
                    int i5 = 0;
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                        i5++;
                        if (i5 == i4) {
                            break;
                        }
                    }
                    int size = arrayList.size();
                    if (size != 0) {
                        list = size != 1 ? arrayList : AbstractC0348nb.N(arrayList.get(0));
                    }
                }
            }
            Iterator it2 = list.iterator();
            final int i6 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                int i7 = i6 + 1;
                if (i6 < 0) {
                    M4.q0();
                    throw null;
                }
                Preset preset = (Preset) next;
                final int size2 = list.size();
                View N = N();
                ImageView imageView = (ImageView) N.findViewById(R.id.appIconFront);
                ImageView imageView2 = (ImageView) N.findViewById(R.id.appIconBack);
                Drawable R = R(preset.getLeftApp());
                Iterator it3 = it2;
                if (R == null) {
                    i2 = i7;
                    R = getResources().getDrawable(android.R.drawable.sym_def_app_icon, null);
                    AbstractC0348nb.q(R, "getDrawable(...)");
                } else {
                    i2 = i7;
                }
                imageView.setImageDrawable(R);
                if (!preset.isSingle() && preset.getRightApp() != null) {
                    Drawable R2 = R(preset.getRightApp());
                    if (R2 == null) {
                        R2 = getResources().getDrawable(android.R.drawable.sym_def_app_icon, null);
                        AbstractC0348nb.q(R2, "getDrawable(...)");
                    }
                    imageView2.setImageDrawable(R2);
                    imageView2.setVisibility(0);
                    int i8 = r().d;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams.gravity = 8388691;
                    imageView.setLayoutParams(layoutParams);
                }
                N.setOnTouchListener(new View.OnTouchListener() { // from class: Hk
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        int i9;
                        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                        TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.this;
                        AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                        int action = motionEvent.getAction();
                        Handler handler = topOverlayAccessibilityService2.w;
                        int i10 = i6;
                        if (action == 0) {
                            topOverlayAccessibilityService2.O = motionEvent.getRawX();
                            topOverlayAccessibilityService2.P = motionEvent.getRawY();
                            RunnableC0215i7 runnableC0215i72 = new RunnableC0215i7(topOverlayAccessibilityService2, i10, view, 1);
                            topOverlayAccessibilityService2.S = runnableC0215i72;
                            handler.postDelayed(runnableC0215i72, topOverlayAccessibilityService2.T);
                            return true;
                        }
                        if (action != 1) {
                            if (action == 2) {
                                boolean z = topOverlayAccessibilityService2.N;
                                if (!z || topOverlayAccessibilityService2.Q < 0) {
                                    if (z || Math.max(Math.abs(motionEvent.getRawX() - topOverlayAccessibilityService2.O), Math.abs(motionEvent.getRawY() - topOverlayAccessibilityService2.P)) <= topOverlayAccessibilityService2.U) {
                                        return true;
                                    }
                                    RunnableC0215i7 runnableC0215i73 = topOverlayAccessibilityService2.S;
                                    if (runnableC0215i73 != null) {
                                        handler.removeCallbacks(runnableC0215i73);
                                    }
                                    topOverlayAccessibilityService2.S = null;
                                    return true;
                                }
                                float rawX = motionEvent.getRawX() - topOverlayAccessibilityService2.O;
                                float rawY = motionEvent.getRawY() - topOverlayAccessibilityService2.P;
                                view.setTranslationX(rawX);
                                view.setTranslationY(rawY);
                                PresetGridLayout presetGridLayout2 = topOverlayAccessibilityService2.M0;
                                if (presetGridLayout2 == null) {
                                    return true;
                                }
                                int i11 = topOverlayAccessibilityService2.R;
                                int i12 = presetGridLayout2.b;
                                if (i12 != 0 && presetGridLayout2.d != 0) {
                                    i11 = (AbstractC0554vf.f(C6.P(rawX / i12) + (i11 / presetGridLayout2.a), 0, presetGridLayout2.getColumns() - 1) * presetGridLayout2.a) + AbstractC0554vf.f(C6.P(rawY / presetGridLayout2.d) + (i11 % presetGridLayout2.a), 0, presetGridLayout2.a - 1);
                                }
                                int i13 = size2;
                                int f = AbstractC0554vf.f(i11, 0, i13 - 1);
                                while (true) {
                                    int i14 = topOverlayAccessibilityService2.Q;
                                    if (i14 == f) {
                                        int i15 = 0;
                                        while (i15 < i13) {
                                            int i16 = topOverlayAccessibilityService2.R;
                                            if (i15 != i16) {
                                                int i17 = topOverlayAccessibilityService2.Q;
                                                if (i16 < i17) {
                                                    int i18 = i16 + 1;
                                                    if (i15 <= i17 && i18 <= i15) {
                                                        i9 = -1;
                                                        View childAt = presetGridLayout2.getChildAt(i15);
                                                        AbstractC0348nb.q(childAt, "getChildAt(...)");
                                                        int i19 = i9 + i15;
                                                        int i20 = presetGridLayout2.a;
                                                        childAt.setTranslationX(((i19 / i20) - (i15 / i20)) * presetGridLayout2.b);
                                                        int i21 = presetGridLayout2.a;
                                                        childAt.setTranslationY(((i19 % i21) - (i15 % i21)) * presetGridLayout2.d);
                                                    }
                                                }
                                                i9 = (i16 <= i17 || i15 >= i16 || i17 > i15) ? 0 : 1;
                                                View childAt2 = presetGridLayout2.getChildAt(i15);
                                                AbstractC0348nb.q(childAt2, "getChildAt(...)");
                                                int i192 = i9 + i15;
                                                int i202 = presetGridLayout2.a;
                                                childAt2.setTranslationX(((i192 / i202) - (i15 / i202)) * presetGridLayout2.b);
                                                int i212 = presetGridLayout2.a;
                                                childAt2.setTranslationY(((i192 % i212) - (i15 % i212)) * presetGridLayout2.d);
                                            }
                                            i15++;
                                        }
                                        return true;
                                    }
                                    int i22 = (f > i14 ? 1 : -1) + i14;
                                    PresetRepository presetRepository2 = topOverlayAccessibilityService2.I;
                                    if (presetRepository2 == null) {
                                        AbstractC0348nb.j0("presetRepository");
                                        throw null;
                                    }
                                    presetRepository2.swapPresets(i14, i22);
                                    topOverlayAccessibilityService2.Q = i22;
                                }
                            } else if (action != 3) {
                                return false;
                            }
                        }
                        RunnableC0215i7 runnableC0215i74 = topOverlayAccessibilityService2.S;
                        if (runnableC0215i74 != null) {
                            handler.removeCallbacks(runnableC0215i74);
                        }
                        topOverlayAccessibilityService2.S = null;
                        if (!topOverlayAccessibilityService2.N) {
                            if (motionEvent.getAction() != 1) {
                                return true;
                            }
                            if (topOverlayAccessibilityService2.L < 0) {
                                topOverlayAccessibilityService2.c(i10);
                                return true;
                            }
                            topOverlayAccessibilityService2.L = -1;
                            topOverlayAccessibilityService2.D0();
                            return true;
                        }
                        topOverlayAccessibilityService2.N = false;
                        topOverlayAccessibilityService2.L = topOverlayAccessibilityService2.Q;
                        topOverlayAccessibilityService2.Q = -1;
                        topOverlayAccessibilityService2.R = -1;
                        topOverlayAccessibilityService2.D0();
                        Jk jk = topOverlayAccessibilityService2.M;
                        if (jk != null) {
                            handler.removeCallbacks(jk);
                        }
                        topOverlayAccessibilityService2.M = null;
                        if (topOverlayAccessibilityService2.L < 0) {
                            return true;
                        }
                        Jk jk2 = new Jk(6, topOverlayAccessibilityService2);
                        topOverlayAccessibilityService2.M = jk2;
                        handler.postDelayed(jk2, 3000L);
                        return true;
                    }
                });
                presetGridLayout.addView(N);
                it2 = it3;
                i6 = i2;
            }
            if (list.size() < i4) {
                PresetRepository presetRepository2 = this.I;
                if (presetRepository2 == null) {
                    AbstractC0348nb.j0("presetRepository");
                    throw null;
                }
                if (presetRepository2.canAddPreset()) {
                    View N2 = N();
                    ImageView imageView3 = (ImageView) N2.findViewById(R.id.appIconFront);
                    imageView3.setImageResource(R.drawable.ic_add_app);
                    float f = getResources().getDisplayMetrics().density;
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    Wj wj = T7.r;
                    if (wj == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    gradientDrawable.setColor(wj.p);
                    int i9 = (int) (2 * f);
                    Wj wj2 = T7.r;
                    if (wj2 == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    gradientDrawable.setStroke(i9, wj2.o);
                    gradientDrawable.setCornerRadius(8 * f);
                    imageView3.setBackground(gradientDrawable);
                    Wj wj3 = T7.r;
                    if (wj3 == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    imageView3.setImageTintList(ColorStateList.valueOf(wj3.q));
                    ((ImageView) N2.findViewById(R.id.appIconBack)).setVisibility(8);
                    N2.setOnClickListener(new Fk(19, this));
                    presetGridLayout.addView(N2);
                }
            }
            this.P0 = wk;
        }
        int childCount = presetGridLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = presetGridLayout.getChildAt(i10);
            childAt.setAlpha(1.0f);
            childAt.setScaleX(1.0f);
            childAt.setScaleY(1.0f);
            childAt.setTranslationX(0.0f);
            childAt.setTranslationY(0.0f);
            childAt.setTranslationZ(0.0f);
            FrameLayout frameLayout = (FrameLayout) childAt.findViewById(R.id.iconContainer);
            if (i10 == this.L) {
                AbstractC0348nb.o(frameLayout);
                p0(frameLayout, i10, false);
            } else {
                AbstractC0348nb.o(frameLayout);
                W(frameLayout);
            }
        }
        WindowManager.LayoutParams layoutParams2 = this.L0;
        if (layoutParams2 == null || (i = layoutParams2.width) == 0 || i == presetGridLayout.getPanelWidth()) {
            return;
        }
        layoutParams2.width = presetGridLayout.getPanelWidth();
        try {
            v().updateViewLayout(this.c, layoutParams2);
        } catch (Exception unused) {
        }
    }

    public final void E() {
        this.y = false;
        Jk jk = this.M;
        if (jk != null) {
            this.w.removeCallbacks(jk);
        }
        this.M = null;
        MainActivity mainActivity = MainActivity.O;
        if (mainActivity != null) {
            C0491t2 c0491t2 = mainActivity.v;
            if (c0491t2 == null) {
                AbstractC0348nb.j0("binding");
                throw null;
            }
            ((ImageView) c0491t2.b).setVisibility(8);
        }
        I();
        M();
        F();
        L();
    }

    public final void E0() {
        View view = this.e1;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.settingsAutostartValue) : null;
        if (textView == null) {
            return;
        }
        String string = C0255jm.d().getString("autostart_mode", "presets");
        String str = string != null ? string : "presets";
        String str2 = l().contains(str) ? str : null;
        if (str2 == null) {
            str2 = "apps";
        }
        textView.setText(k(str2));
    }

    public final void F() {
        WindowManager.LayoutParams layoutParams;
        if (this.T0 && (layoutParams = this.S0) != null) {
            Xk xk = this.U0;
            if (xk != null) {
                xk.a.c(false);
            }
            layoutParams.width = 0;
            layoutParams.height = 0;
            try {
                v().updateViewLayout(this.R0, layoutParams);
            } catch (Exception unused) {
            }
            this.T0 = false;
            if (this.V0 != null) {
                this.V0 = null;
                this.W0 = null;
                View view = this.R0;
                if (view != null) {
                    try {
                        v().removeView(view);
                    } catch (Exception unused2) {
                    }
                }
                this.R0 = null;
                this.S0 = null;
                this.U0 = null;
            }
            y0();
        }
    }

    public final void G() {
        this.k.removeCallbacks(this.s0);
        TextView textView = this.j;
        if (textView != null) {
            try {
                v().removeView(textView);
            } catch (Exception unused) {
            }
        }
        this.j = null;
    }

    public final void G0(View view) {
        TextView textView = (TextView) view.findViewById(R.id.lblTimeZoneDesc);
        if (textView == null) {
            return;
        }
        Date date = new Date(System.currentTimeMillis() + TimeZone.getDefault().getOffset(r0));
        textView.setText(((SimpleDateFormat) this.h1.a()).format(date) + ' ' + ((SimpleDateFormat) this.i1.a()).format(date));
    }

    public final void H(int i) {
        ArrayList arrayList = this.J0;
        if (i >= arrayList.size()) {
            return;
        }
        Uk uk = (Uk) arrayList.get(i);
        WindowManager.LayoutParams layoutParams = uk.b;
        if (layoutParams.width == 0) {
            return;
        }
        layoutParams.width = 0;
        layoutParams.height = 0;
        try {
            v().updateViewLayout(uk.a, uk.b);
        } catch (Exception unused) {
        }
    }

    public final void H0() {
        View view = this.e1;
        EnumC0411pm enumC0411pm = null;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.settingsUnifiedValue) : null;
        if (textView == null) {
            return;
        }
        C0255jm c0255jm = C0255jm.a;
        String string = C0255jm.d().getString("unified_mode", null);
        if (string == null) {
            EnumC0411pm enumC0411pm2 = EnumC0411pm.d;
            string = "off";
        }
        EnumC0411pm[] values = EnumC0411pm.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            EnumC0411pm enumC0411pm3 = values[i];
            if (AbstractC0348nb.g(enumC0411pm3.a, string)) {
                enumC0411pm = enumC0411pm3;
                break;
            }
            i++;
        }
        if (enumC0411pm == null) {
            enumC0411pm = EnumC0411pm.d;
        }
        textView.setText(B0(enumC0411pm));
    }

    public final void I() {
        int size = this.J0.size();
        for (int i = 0; i < size; i++) {
            H(i);
        }
        WindowManager.LayoutParams layoutParams = this.I0;
        if (layoutParams == null || layoutParams.width == 0) {
            return;
        }
        layoutParams.width = 0;
        layoutParams.height = 0;
        try {
            v().updateViewLayout(this.H0, layoutParams);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, java.lang.Iterable] */
    public final void I0() {
        Collection<?> collection;
        Set<Rh> set;
        boolean z;
        boolean j = AbstractC0554vf.j();
        AbstractC0326mf y = y();
        if (j) {
            Set set2 = O8.a;
            collection = O8.k();
        } else {
            collection = C0597x8.a;
        }
        y.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.addAll(y.b((EnumC0197hf) it.next()));
        }
        Set<Rh> F0 = L4.F0(arrayList);
        ?? r2 = y.a;
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = r2.iterator();
        while (it2.hasNext()) {
            arrayList2.addAll(y.b((EnumC0197hf) it2.next()));
        }
        Set F02 = L4.F0(arrayList2);
        if (F0.isEmpty()) {
            set = L4.F0(F02);
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : F02) {
                if (!F0.contains(obj)) {
                    linkedHashSet.add(obj);
                }
            }
            set = linkedHashSet;
        }
        for (Rh rh : set) {
            if (rh.f) {
                rh.f = false;
                rh.e = null;
                try {
                    rh.a.unbindService(rh.g);
                } catch (Exception unused) {
                }
            }
        }
        for (Rh rh2 : F0) {
            Intent intent = rh2.b;
            if (!rh2.f) {
                try {
                    z = rh2.a.bindService(intent, rh2.g, 1);
                } catch (Exception e) {
                    Log.w("ServiceLink", "bind " + intent.getAction() + ": " + e.getMessage());
                    z = false;
                }
                rh2.f = z;
                if (!z) {
                    rh2.e = null;
                    try {
                        rh2.a.unbindService(rh2.g);
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        y.a = collection;
        Set E0 = L4.E0(y.b);
        E0.retainAll(collection);
        y.b = E0;
    }

    public final void J() {
        C0658zj c0658zj = this.C0;
        if (c0658zj != null) {
            c0658zj.d();
        }
        LinearLayout linearLayout = this.G;
        if (linearLayout != null) {
            try {
                WindowManager windowManager = this.a;
                if (windowManager != null) {
                    windowManager.removeView(linearLayout);
                }
            } catch (Exception unused) {
            }
        }
        this.G = null;
        this.H = null;
    }

    public final void K() {
        FrameLayout frameLayout = this.b0;
        if (frameLayout != null) {
            try {
                v().removeView(frameLayout);
            } catch (Exception unused) {
            }
        }
        this.b0 = null;
        View view = this.i;
        if (view != null) {
            try {
                v().removeView(view);
            } catch (Exception unused2) {
            }
        }
        this.i = null;
    }

    public final void L() {
        WindowManager.LayoutParams layoutParams;
        if (this.g1 && (layoutParams = this.f1) != null) {
            layoutParams.width = 0;
            layoutParams.height = 0;
            try {
                v().updateViewLayout(this.e1, layoutParams);
            } catch (Exception unused) {
            }
            this.g1 = false;
            y0();
            this.w.removeCallbacks(this.j1);
        }
    }

    public final void M() {
        WindowManager.LayoutParams layoutParams;
        Handler handler = this.w;
        handler.removeCallbacks(this.O0);
        Jk jk = this.M;
        if (jk != null) {
            handler.removeCallbacks(jk);
        }
        this.M = null;
        RunnableC0215i7 runnableC0215i7 = this.S;
        if (runnableC0215i7 != null) {
            handler.removeCallbacks(runnableC0215i7);
        }
        this.S = null;
        this.L = -1;
        this.N = false;
        this.Q = -1;
        this.R = -1;
        View view = this.c;
        if (view == null || (layoutParams = this.L0) == null) {
            return;
        }
        layoutParams.width = 0;
        layoutParams.height = 0;
        layoutParams.flags = 280;
        try {
            v().updateViewLayout(view, layoutParams);
        } catch (Exception unused) {
        }
    }

    public final View N() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.item_preset, (ViewGroup) null);
        Ef r = r();
        inflate.setLayoutParams(new ViewGroup.LayoutParams(r.a, -2));
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.iconContainer);
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        int i = r.c;
        layoutParams.width = i;
        layoutParams.height = i;
        frameLayout.setLayoutParams(layoutParams);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.appIconFront);
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        int i2 = r.b;
        layoutParams2.width = i2;
        layoutParams2.height = i2;
        imageView.setLayoutParams(layoutParams2);
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.appIconBack);
        ViewGroup.LayoutParams layoutParams3 = imageView2.getLayoutParams();
        int i3 = r.d;
        layoutParams3.width = i3;
        layoutParams3.height = i3;
        imageView2.setLayoutParams(layoutParams3);
        ((TextView) inflate.findViewById(R.id.presetLabel)).setVisibility(8);
        return inflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0131  */
    /* JADX WARN: Type inference failed for: r12v3, types: [G1] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r16v0, types: [java.lang.Object, Jg] */
    /* JADX WARN: Type inference failed for: r17v3, types: [java.lang.Object, Jg] */
    /* JADX WARN: Type inference failed for: r1v17, types: [Io] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object, Hg] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object, Hg] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, Ig] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, Ig] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, Ig] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void P(java.lang.String r21, android.content.Intent r22) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.service.TopOverlayAccessibilityService.P(java.lang.String, android.content.Intent):void");
    }

    public final void Q(String str) {
        try {
            startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + str)).addFlags(268435456));
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "ACTION_DELETE failed for " + str, e);
        }
    }

    public final Drawable R(String str) {
        Drawable newDrawable;
        HashMap hashMap = this.Q0;
        Drawable drawable = (Drawable) hashMap.get(str);
        if (drawable != null) {
            return drawable;
        }
        try {
            Drawable applicationIcon = getPackageManager().getApplicationIcon(str);
            AbstractC0348nb.q(applicationIcon, "getApplicationIcon(...)");
            int i = r().b;
            float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.icon_corner_radius);
            Resources resources = getResources();
            AbstractC0348nb.q(resources, "getResources(...)");
            Drawable.ConstantState constantState = applicationIcon.getConstantState();
            if (constantState != null && (newDrawable = constantState.newDrawable(resources)) != null) {
                applicationIcon = newDrawable;
            }
            Na na = new Na(applicationIcon, i, dimensionPixelSize);
            hashMap.put(str, na);
            return na;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final void S(int i, int i2, int i3) {
        ArrayList arrayList = this.J0;
        if (i >= arrayList.size()) {
            return;
        }
        Uk uk = (Uk) arrayList.get(i);
        WindowManager.LayoutParams layoutParams = uk.b;
        layoutParams.x = i2;
        layoutParams.y = i3;
        layoutParams.width = 24;
        layoutParams.height = 24;
        try {
            v().updateViewLayout(uk.a, uk.b);
        } catch (Exception unused) {
        }
    }

    public final void T() {
        if (this.V) {
            return;
        }
        this.V = true;
        this.C = null;
        C0307lm c0307lm = this.K;
        if (c0307lm == null) {
            AbstractC0348nb.j0("uiVisibilityClient");
            throw null;
        }
        c0307lm.a(false);
        J();
        E();
        Io io = this.J;
        if (io != null) {
            io.i();
        } else {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
    }

    public final void V(Xk xk, boolean z) {
        Ci ci;
        xk.a.b(null);
        if (!z) {
            u0(xk, this.e);
        }
        if (z || this.e == null || !this.f) {
            if (z || (ci = this.g) == null || !ci.a()) {
                Ci ci2 = this.g;
                if (ci2 != null) {
                    ci2.m(null);
                }
                this.g = AbstractC0348nb.M(this.x, null, new C0560vl(this, z, null), 3);
            }
        }
    }

    public final GradientDrawable X() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(3 * getResources().getDisplayMetrics().density);
        Wj wj = T7.r;
        if (wj != null) {
            gradientDrawable.setColor(wj.b);
            return gradientDrawable;
        }
        AbstractC0348nb.j0("color");
        throw null;
    }

    public final void Y(boolean z) {
        WindowManager.LayoutParams layoutParams;
        LinearLayout linearLayout = this.G;
        if (linearLayout == null || (layoutParams = this.H) == null) {
            return;
        }
        linearLayout.setVisibility(z ? 0 : 8);
        layoutParams.flags = z ? layoutParams.flags & (-17) : layoutParams.flags | 16;
        try {
            WindowManager windowManager = this.a;
            if (windowManager != null) {
                windowManager.updateViewLayout(linearLayout, layoutParams);
            }
        } catch (Exception unused) {
        }
    }

    public final void Z(int i) {
        try {
            Settings.System.putInt(getContentResolver(), "steering_key_function", i);
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "steering_key_function write failed", e);
        }
    }

    /* JADX WARN: Type inference failed for: r13v32, types: [java.util.Map, java.lang.Object] */
    public final void a0() {
        if (this.Z0 != null) {
            return;
        }
        Sb.a.getClass();
        String str = Sb.d;
        SharedPreferences sharedPreferences = Sb.c;
        int i = 13 - (sharedPreferences != null ? sharedPreferences.getInt(C6.r(6028912243229292160L), 0) : 0);
        if (i < 0) {
            i = 0;
        }
        FrameLayout frameLayout = new FrameLayout(this);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        frameLayout.setBackgroundColor(wj.n);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(64, 48, 64, 48);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        linearLayout.setBackgroundColor(wj2.k);
        TextView textView = new TextView(this);
        Ki ki = Ki.a;
        textView.setText(Ki.a().a);
        if (T7.s == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        textView.setTextSize(r14.c);
        Wj wj3 = T7.r;
        if (wj3 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView.setTextColor(wj3.c);
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = 32;
        linearLayout.addView(textView, layoutParams);
        AbstractC0348nb.r(str, "<this>");
        AbstractC0171gf.b(4, 4);
        int length = str.length();
        ArrayList arrayList = new ArrayList((length / 4) + (length % 4 == 0 ? 0 : 1));
        int i2 = 0;
        while (i2 >= 0 && i2 < length) {
            int i3 = i2 + 4;
            CharSequence subSequence = str.subSequence(i2, (i3 < 0 || i3 > length) ? length : i3);
            AbstractC0348nb.r(subSequence, "it");
            arrayList.add(subSequence.toString());
            i2 = i3;
        }
        String y0 = L4.y0(arrayList, "-", null, null, null, 62);
        TextView textView2 = new TextView(this);
        Ki ki2 = Ki.a;
        textView2.setText(Ki.a().b.concat(y0));
        textView2.setTextSize(T7.f().b);
        textView2.setTextColor(T7.e().a);
        textView2.setGravity(17);
        textView2.setTypeface(null, 1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.bottomMargin = 32;
        linearLayout.addView(textView2, layoutParams2);
        TextView textView3 = new TextView(this);
        textView3.setText(Ki.a().c);
        textView3.setTextSize(T7.f().f);
        textView3.setTextColor(T7.e().c);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.bottomMargin = 8;
        linearLayout.addView(textView3, layoutParams3);
        EditText editText = new EditText(this);
        editText.setTextSize(T7.f().e);
        editText.setTextColor(T7.e().c);
        editText.setHintTextColor(T7.e().b);
        editText.setHint("XXXXXX");
        editText.setInputType(4097);
        editText.setBackgroundColor(T7.e().l);
        editText.setPadding(24, 16, 24, 16);
        editText.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(7)});
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.addView(editText, new LinearLayout.LayoutParams(0, -2, 1.0f));
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_keyboard_hide);
        imageView.setPadding(12, 12, 12, 12);
        imageView.setOnClickListener(new U0(this, 3, editText));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(56, 56);
        layoutParams4.setMarginStart(12);
        linearLayout2.addView(imageView, layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.bottomMargin = 16;
        linearLayout.addView(linearLayout2, layoutParams5);
        TextView textView4 = new TextView(this);
        textView4.setText(Ki.a().d);
        textView4.setTextSize(T7.f().f);
        textView4.setTextColor(T7.e().j);
        textView4.setGravity(17);
        textView4.setVisibility(8);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams6.bottomMargin = 16;
        linearLayout.addView(textView4, layoutParams6);
        TextView textView5 = new TextView(this);
        StringBuilder sb = new StringBuilder();
        sb.append(Ki.a().f);
        boolean z = D3.a;
        C0255jm c0255jm = C0255jm.a;
        sb.append(!C0255jm.a().equals("ru") ? "https://omoda5.com" : D3.a ? "https://cherryl.ru" : "https://omoda-c5-launcher.ru");
        textView5.setText(sb.toString());
        textView5.setTextSize(T7.f().f);
        textView5.setTextColor(T7.e().h);
        textView5.setGravity(17);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams7.bottomMargin = 32;
        linearLayout.addView(textView5, layoutParams7);
        float f = getResources().getDisplayMetrics().density;
        int i4 = (int) (64 * f);
        int i5 = (int) (6 * f);
        int identifier = getResources().getIdentifier(T7.d().c, "drawable", getPackageName());
        TextView textView6 = new TextView(this);
        textView6.setText(Ki.a().l);
        textView6.setTextSize(T7.f().e);
        textView6.setTextColor(T7.d().f);
        textView6.setGravity(17);
        textView6.setBackground(textView6.getResources().getDrawable(identifier, null));
        TextView textView7 = new TextView(this);
        textView7.setText(Ki.a().n);
        textView7.setTextSize(T7.f().e);
        textView7.setTextColor(T7.d().f);
        textView7.setGravity(17);
        textView7.setBackground(textView7.getResources().getDrawable(identifier, null));
        textView7.setOnClickListener(new ViewOnClickListenerC0408pj(textView7, this, textView4, 1));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(17);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, i4, 1.0f);
        layoutParams8.setMarginEnd(i5);
        linearLayout3.addView(textView6, layoutParams8);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, i4, 1.0f);
        layoutParams9.setMarginStart(i5);
        linearLayout3.addView(textView7, layoutParams9);
        linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
        TextView textView8 = new TextView(this);
        textView8.setTextSize(T7.f().e);
        textView8.setGravity(17);
        textView8.setBackground(textView8.getResources().getDrawable(identifier, null));
        if (i > 0) {
            textView8.setText(Ki.a().g + " (" + Ki.a().h + ' ' + i + ' ' + (i == 1 ? Ki.a().i : (2 > i || i >= 5) ? Ki.a().k : Ki.a().j) + ')');
            textView8.setTextColor(T7.d().f);
            textView8.setAlpha(0.55f);
        } else {
            textView8.setText(Ki.a().m);
            textView8.setTextColor(T7.d().f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setColor((T7.e().j & 16777215) | Integer.MIN_VALUE);
            gradientDrawable.setCornerRadius(i4 / 2.0f);
            textView8.setForeground(gradientDrawable);
        }
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setGravity(17);
        linearLayout4.setBackground(linearLayout4.getResources().getDrawable(identifier, null));
        String a = C0255jm.a();
        ImageView imageView2 = new ImageView(this);
        imageView2.setImageResource(u(a));
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams((int) (48 * f), (int) (34 * f));
        int i6 = (int) (12 * f);
        layoutParams10.setMarginEnd(i6);
        linearLayout4.addView(imageView2, layoutParams10);
        TextView textView9 = new TextView(this);
        String str2 = (String) Ki.c.get(a);
        if (str2 != null) {
            a = str2;
        }
        textView9.setText(a);
        textView9.setTextSize(T7.f().e);
        textView9.setTextColor(T7.d().f);
        linearLayout4.addView(textView9, new LinearLayout.LayoutParams(-2, -2));
        linearLayout4.setOnClickListener(new Fk(this, linearLayout4));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        linearLayout5.setGravity(17);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, i4, 1.0f);
        layoutParams11.setMarginEnd(i5);
        linearLayout5.addView(textView8, layoutParams11);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, i4, 1.0f);
        layoutParams12.setMarginStart(i5);
        linearLayout5.addView(linearLayout4, layoutParams12);
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams13.topMargin = i6;
        linearLayout.addView(linearLayout5, layoutParams13);
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(800, -2);
        layoutParams14.gravity = 17;
        frameLayout.addView(linearLayout, layoutParams14);
        WindowManager.LayoutParams layoutParams15 = new WindowManager.LayoutParams();
        layoutParams15.type = 2032;
        layoutParams15.flags = 256;
        layoutParams15.format = -3;
        layoutParams15.width = -1;
        layoutParams15.height = -1;
        layoutParams15.softInputMode = 32;
        WindowManager windowManager = this.a;
        if (windowManager != null) {
            windowManager.addView(frameLayout, layoutParams15);
        }
        this.Z0 = frameLayout;
        textView8.setOnClickListener(new Gk(i, this));
        textView6.setOnClickListener(new ViewOnClickListenerC0408pj(editText, textView4, this, 2));
    }

    public final void b0(final AppInfo appInfo, boolean z) {
        String str;
        LinearLayout linearLayout;
        int i;
        TextView textView;
        float f;
        LinearLayout linearLayout2;
        float f2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 4;
        try {
            float f3 = getResources().getDisplayMetrics().density;
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(1);
            Yj yj = T7.q;
            String str2 = "dialog";
            if (yj == null) {
                AbstractC0348nb.j0("dialog");
                throw null;
            }
            linearLayout3.setBackgroundResource(yj.a(this));
            int i7 = (int) (40 * f3);
            float f4 = 24 * f3;
            int i8 = (int) f4;
            linearLayout3.setPadding(i7, (int) (28 * f3), i7, i8);
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(0);
            linearLayout4.setGravity(17);
            final TextView textView2 = new TextView(this);
            textView2.setText(appInfo.getLabel());
            textView2.setTextSize(36.0f);
            Wj wj = T7.r;
            if (wj == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            textView2.setTextColor(wj.f);
            textView2.setGravity(17);
            linearLayout4.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            int i9 = (int) (20 * f3);
            layoutParams.bottomMargin = i9;
            linearLayout3.addView(linearLayout4, layoutParams);
            C0115eb r = AbstractC0152fm.r(this, appInfo.getPackageName());
            try {
                str = getPackageManager().getPackageInfo(appInfo.getPackageName(), 0).versionName;
            } catch (Exception unused) {
                str = null;
            }
            if (str == null) {
                str = "?";
            }
            List x0 = z ? x0(appInfo.getPackageName()) : C0547v8.a;
            RemoteApp O = O(x0, r != null ? Integer.valueOf(r.a) : null, str);
            List A0 = L4.A0(x0, new X0(i6, O));
            final RemoteApp remoteApp = (RemoteApp) (A0.size() == 1 ? A0.get(0) : null);
            TextView textView3 = new TextView(this);
            String l0 = l0(str, r != null ? r.c : null);
            if (remoteApp != null) {
                l0 = l0 + "  →  " + l0(remoteApp.getVersion(), remoteApp.getModVersion());
            }
            textView3.setText(l0);
            textView3.setTextSize(T7.f().d);
            textView3.setTextColor(T7.e().b);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.setMarginStart(i8);
            linearLayout4.addView(textView3, layoutParams2);
            LinearLayout linearLayout5 = new LinearLayout(this);
            linearLayout5.setOrientation(0);
            linearLayout5.setGravity(17);
            int i10 = (int) (220 * f3);
            int i11 = (int) (64 * f3);
            final TextView textView4 = new TextView(this);
            Ki ki = Ki.a;
            textView4.setText(Ki.c().d);
            textView4.setTextSize(T7.f().e);
            textView4.setTextColor(T7.d().f);
            textView4.setGravity(17);
            textView4.setBackground(textView4.getResources().getDrawable(T7.d().b(this), null));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setColor((T7.e().j & 16777215) | Integer.MIN_VALUE);
            gradientDrawable.setCornerRadius(i11 / 2.0f);
            textView4.setForeground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i10, i11);
            float f5 = 12 * f3;
            int i12 = (int) f5;
            layoutParams3.setMarginEnd(i12);
            linearLayout5.addView(textView4, layoutParams3);
            if (!z) {
                textView4.setVisibility(8);
            }
            final TextView textView5 = new TextView(this);
            textView5.setText(Ki.c().f);
            textView5.setTextSize(T7.f().e);
            textView5.setTextColor(T7.d().f);
            textView5.setGravity(17);
            textView5.setBackground(textView5.getResources().getDrawable(T7.d().b(this), null));
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i10, i11);
            layoutParams4.setMarginEnd(i12);
            linearLayout5.addView(textView5, layoutParams4);
            if (remoteApp == null) {
                textView5.setVisibility(8);
            }
            final TextView textView6 = new TextView(this);
            textView6.setText(Ki.c().a);
            textView6.setTextSize(T7.f().e);
            textView6.setTextColor(T7.d().a());
            textView6.setGravity(17);
            textView6.setBackground(textView6.getResources().getDrawable(T7.d().c(this), null));
            linearLayout5.addView(textView6, new LinearLayout.LayoutParams(i10, i11));
            if (!z) {
                textView6.setText(Ki.c().a());
            }
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (A0.size() > 1) {
                int i13 = ((int) (16 * f3)) + i11;
                LinearLayout linearLayout6 = new LinearLayout(this);
                linearLayout6.setOrientation(1);
                textView = textView3;
                if (A0.size() > 3) {
                    int i14 = (int) (14 * f3);
                    ScrollView scrollView = new ScrollView(this);
                    scrollView.addView(linearLayout6);
                    linearLayout = linearLayout5;
                    scrollView.setPadding(0, 0, i14, 0);
                    scrollView.setScrollBarStyle(33554432);
                    scrollView.setScrollbarFadingEnabled(false);
                    scrollView.setScrollBarSize((int) (6 * f3));
                    scrollView.setVerticalScrollbarThumbDrawable(X());
                    scrollView.setVerticalFadingEdgeEnabled(true);
                    scrollView.setFadingEdgeLength(i13 / 2);
                    i3 = i9;
                    linearLayout3.addView(scrollView, new LinearLayout.LayoutParams(-1, (i13 + 1) * 3));
                    arrayList2.add(scrollView);
                    i4 = i14;
                } else {
                    linearLayout = linearLayout5;
                    i3 = i9;
                    linearLayout3.addView(linearLayout6, new LinearLayout.LayoutParams(-1, -2));
                    arrayList2.add(linearLayout6);
                    i4 = 0;
                }
                Iterator it = A0.iterator();
                float f6 = 0.0f;
                int i15 = 0;
                LinearLayout linearLayout7 = linearLayout3;
                while (it.hasNext()) {
                    Object next = it.next();
                    int i16 = i15 + 1;
                    if (i15 < 0) {
                        M4.q0();
                        throw null;
                    }
                    Iterator it2 = it;
                    RemoteApp remoteApp2 = (RemoteApp) next;
                    ArrayList arrayList3 = arrayList2;
                    LinearLayout linearLayout8 = linearLayout7;
                    int i17 = i4;
                    View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_select_item, (ViewGroup) linearLayout6, false);
                    TextView textView7 = (TextView) inflate.findViewById(R.id.dialogSelectItemLabel);
                    StringBuilder sb = new StringBuilder();
                    float f7 = f3;
                    sb.append(remoteApp2.getName());
                    sb.append("     ");
                    String str3 = str2;
                    sb.append(l0(remoteApp2.getVersion(), remoteApp2.getModVersion()));
                    textView7.setText(sb.toString());
                    Wj wj2 = T7.r;
                    if (wj2 == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    textView7.setTextColor(wj2.f);
                    float max = Math.max(f6, textView7.getPaint().measureText(textView7.getText().toString()));
                    ImageView imageView = (ImageView) inflate.findViewById(R.id.dialogSelectItemCheck);
                    Yj yj2 = T7.q;
                    if (yj2 == null) {
                        AbstractC0348nb.j0(str3);
                        throw null;
                    }
                    imageView.setImageResource(getResources().getIdentifier(yj2.b, "drawable", getPackageName()));
                    imageView.setVisibility((O == null || remoteApp2.getId() != O.getId()) ? 4 : 0);
                    View findViewById = inflate.findViewById(R.id.dialogSelectItemDivider);
                    findViewById.setVisibility(i15 == M4.o0(A0) ? 8 : 0);
                    Wj wj3 = T7.r;
                    if (wj3 == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    findViewById.setBackgroundColor(wj3.m);
                    TextView textView8 = new TextView(this);
                    Ki ki2 = Ki.a;
                    textView8.setText(Ki.c().f);
                    if (T7.s == null) {
                        AbstractC0348nb.j0("size");
                        throw null;
                    }
                    textView8.setTextSize(r4.e);
                    Vj vj = T7.p;
                    if (vj == null) {
                        AbstractC0348nb.j0("button");
                        throw null;
                    }
                    textView8.setTextColor(vj.f);
                    textView8.setGravity(17);
                    Resources resources = textView8.getResources();
                    Vj vj2 = T7.p;
                    if (vj2 == null) {
                        AbstractC0348nb.j0("button");
                        throw null;
                    }
                    textView8.setBackground(resources.getDrawable(vj2.b(this), null));
                    LinearLayout linearLayout9 = (LinearLayout) inflate.findViewById(R.id.dialogSelectItemRow);
                    ViewGroup.LayoutParams layoutParams5 = linearLayout9.getLayoutParams();
                    layoutParams5.height = i13;
                    linearLayout9.setLayoutParams(layoutParams5);
                    linearLayout9.addView(textView8, new LinearLayout.LayoutParams(i10, i11));
                    linearLayout6.addView(inflate, new LinearLayout.LayoutParams(-1, -2));
                    arrayList.add(new Hl(inflate, textView8, remoteApp2));
                    arrayList2 = arrayList3;
                    i15 = i16;
                    it = it2;
                    linearLayout7 = linearLayout8;
                    i4 = i17;
                    f3 = f7;
                    str2 = str3;
                    f6 = max;
                }
                ArrayList arrayList4 = arrayList2;
                LinearLayout linearLayout10 = linearLayout7;
                f = f3;
                float f8 = (72 * f) + f6 + i10 + i4;
                View view = new View(this);
                Wj wj4 = T7.r;
                if (wj4 == null) {
                    AbstractC0348nb.j0("color");
                    throw null;
                }
                view.setBackgroundColor(wj4.m);
                int i18 = (int) (1 * f);
                if (i18 < 1) {
                    i5 = -1;
                    i18 = 1;
                } else {
                    i5 = -1;
                }
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(i5, i18);
                i = i3;
                layoutParams6.bottomMargin = i;
                LinearLayout linearLayout11 = linearLayout10;
                linearLayout11.addView(view, layoutParams6);
                arrayList2 = arrayList4;
                arrayList2.add(view);
                f2 = f8;
                linearLayout2 = linearLayout11;
            } else {
                linearLayout = linearLayout5;
                i = i9;
                textView = textView3;
                f = f3;
                linearLayout2 = linearLayout3;
                f2 = 0.0f;
            }
            linearLayout2.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
            Ki ki3 = Ki.a;
            final R2 b = Ki.b();
            final TextView j0 = j0(this);
            final TextView j02 = j0(this);
            final TextView j03 = j0(this);
            final float f9 = f;
            final TextView c0 = c0(this, b, f9);
            final TextView c02 = c0(this, b, f9);
            if (!z) {
                c0.setVisibility(8);
                c02.setVisibility(8);
            }
            LinearLayout linearLayout12 = new LinearLayout(this);
            linearLayout12.setOrientation(0);
            linearLayout12.setGravity(16);
            int i19 = (int) (16 * f9);
            float f10 = f2;
            linearLayout12.addView(j0, new LinearLayout.LayoutParams(0, -2, 1.0f));
            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams7.setMarginStart(i19 * 2);
            linearLayout12.addView(j02, layoutParams7);
            linearLayout12.addView(c0, new LinearLayout.LayoutParams(-2, -2));
            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams8.setMarginStart(i19 * 3);
            linearLayout12.addView(j03, layoutParams8);
            linearLayout12.addView(c02, new LinearLayout.LayoutParams(-2, -2));
            View view2 = new View(this);
            Wj wj5 = T7.r;
            if (wj5 == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            view2.setBackgroundColor(wj5.m);
            int i20 = (int) (1 * f9);
            if (i20 < 1) {
                i2 = -1;
                i20 = 1;
            } else {
                i2 = -1;
            }
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(i2, i20);
            layoutParams9.topMargin = i;
            linearLayout2.addView(view2, layoutParams9);
            arrayList2.add(view2);
            LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(i2, -2);
            layoutParams10.topMargin = i19;
            linearLayout2.addView(linearLayout12, layoutParams10);
            arrayList2.add(linearLayout12);
            final ArrayList arrayList5 = arrayList2;
            g0(b, j0, j02, j03, c0, c02, appInfo, this, this);
            float k0 = z ? (32 * f9) + k0(c0) : 0.0f;
            float k02 = k0(textView2) + f4 + k0(textView);
            int f11 = AbstractC0554vf.f((int) ((80 * f9) + AbstractC0152fm.u(k02, ((i10 + f5) * (((z ? 1 : 0) + 1) + (remoteApp != null ? 1 : 0))) - f5, (48 * f9) + (32 * f9) + j0.getPaint().measureText((b.c() + "999.9 MB").toString()) + j02.getPaint().measureText((b.a() + "999.9 MB").toString()) + k0 + j03.getPaint().measureText((b.b() + "999.9 MB").toString()) + k0, f10)), (int) (560 * f9), (int) (1500 * f9));
            WindowManager.LayoutParams layoutParams11 = new WindowManager.LayoutParams();
            layoutParams11.type = 2032;
            layoutParams11.flags = 256;
            layoutParams11.format = -3;
            layoutParams11.width = f11;
            layoutParams11.height = -2;
            layoutParams11.gravity = 17;
            WindowManager windowManager = this.a;
            if (windowManager != null) {
                windowManager.addView(linearLayout2, layoutParams11);
            }
            textView6.setOnClickListener(new Ik(this, linearLayout2, 0));
            final TextView textView9 = textView;
            final TextView textView10 = textView;
            final LinearLayout linearLayout13 = linearLayout2;
            textView4.setOnClickListener(new View.OnClickListener() { // from class: Lk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                    TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.this;
                    AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                    AppInfo appInfo2 = appInfo;
                    AbstractC0348nb.r(appInfo2, "$app");
                    ArrayList arrayList6 = arrayList;
                    TextView textView11 = textView4;
                    TextView textView12 = textView6;
                    TextView textView13 = textView5;
                    TextView textView14 = c0;
                    TextView textView15 = c02;
                    TextView textView16 = textView9;
                    TextView textView17 = textView2;
                    LinearLayout linearLayout14 = linearLayout13;
                    TopOverlayAccessibilityService.f0(arrayList6, textView11, textView12, textView13, textView14, textView15);
                    Ki ki4 = Ki.a;
                    String concat = Ki.c().d.concat("…");
                    textView16.setVisibility(8);
                    textView17.setText(concat);
                    Handler handler = C0244jb.a;
                    C0244jb.c(new C0040bd(topOverlayAccessibilityService2, linearLayout14, 1), new C0203hl(topOverlayAccessibilityService2, linearLayout14, appInfo2, 1), topOverlayAccessibilityService2, appInfo2.getPackageName());
                }
            });
            final int i21 = 0;
            final LinearLayout linearLayout14 = linearLayout2;
            TextView textView11 = textView5;
            textView11.setOnClickListener(new View.OnClickListener() { // from class: Mk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    Object obj = remoteApp;
                    switch (i21) {
                        case 0:
                            TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                            TopOverlayAccessibilityService topOverlayAccessibilityService2 = this;
                            AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                            ArrayList arrayList6 = arrayList;
                            TextView textView12 = textView4;
                            TextView textView13 = textView6;
                            TextView textView14 = textView5;
                            TextView textView15 = c0;
                            TextView textView16 = c02;
                            TextView textView17 = textView10;
                            TextView textView18 = textView2;
                            ArrayList arrayList7 = arrayList5;
                            LinearLayout linearLayout15 = linearLayout14;
                            RemoteApp remoteApp3 = (RemoteApp) obj;
                            if (remoteApp3 != null) {
                                TopOverlayAccessibilityService.d0(topOverlayAccessibilityService2, arrayList6, textView12, textView13, textView14, textView15, textView16, textView17, textView18, arrayList7, f9, linearLayout15, remoteApp3);
                                return;
                            }
                            return;
                        default:
                            TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                            TopOverlayAccessibilityService topOverlayAccessibilityService4 = this;
                            AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                            TopOverlayAccessibilityService.d0(topOverlayAccessibilityService4, arrayList, textView4, textView6, textView5, c0, c02, textView10, textView2, arrayList5, f9, linearLayout14, ((Hl) obj).b);
                            return;
                    }
                }
            });
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                final Hl hl = (Hl) it3.next();
                final int i22 = 1;
                final TextView textView12 = textView11;
                hl.a().setOnClickListener(new View.OnClickListener() { // from class: Mk
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        Object obj = hl;
                        switch (i22) {
                            case 0:
                                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this;
                                AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                                ArrayList arrayList6 = arrayList;
                                TextView textView122 = textView4;
                                TextView textView13 = textView6;
                                TextView textView14 = textView12;
                                TextView textView15 = c0;
                                TextView textView16 = c02;
                                TextView textView17 = textView10;
                                TextView textView18 = textView2;
                                ArrayList arrayList7 = arrayList5;
                                LinearLayout linearLayout15 = linearLayout14;
                                RemoteApp remoteApp3 = (RemoteApp) obj;
                                if (remoteApp3 != null) {
                                    TopOverlayAccessibilityService.d0(topOverlayAccessibilityService2, arrayList6, textView122, textView13, textView14, textView15, textView16, textView17, textView18, arrayList7, f9, linearLayout15, remoteApp3);
                                    return;
                                }
                                return;
                            default:
                                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                                TopOverlayAccessibilityService topOverlayAccessibilityService4 = this;
                                AbstractC0348nb.r(topOverlayAccessibilityService4, "this$0");
                                TopOverlayAccessibilityService.d0(topOverlayAccessibilityService4, arrayList, textView4, textView6, textView12, c0, c02, textView10, textView2, arrayList5, f9, linearLayout14, ((Hl) obj).b);
                                return;
                        }
                    }
                });
                it3 = it3;
                textView11 = textView11;
            }
            final TextView textView13 = textView11;
            c0.setOnClickListener(new View.OnClickListener() { // from class: Qk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                    TextView textView14 = c0;
                    TopOverlayAccessibilityService topOverlayAccessibilityService2 = this;
                    AbstractC0348nb.r(topOverlayAccessibilityService2, "$ctx");
                    AppInfo appInfo2 = appInfo;
                    AbstractC0348nb.r(appInfo2, "$app");
                    TextView textView15 = j0;
                    R2 r2 = b;
                    TextView textView16 = j02;
                    TextView textView17 = j03;
                    TextView textView18 = c02;
                    TopOverlayAccessibilityService topOverlayAccessibilityService3 = this;
                    AbstractC0348nb.r(topOverlayAccessibilityService3, "this$0");
                    TopOverlayAccessibilityService.h0(textView14, false);
                    Handler handler = Q2.a;
                    String packageName = appInfo2.getPackageName();
                    Fl fl = new Fl(r2, textView15, textView16, textView17, textView14, textView18, appInfo2, topOverlayAccessibilityService3, topOverlayAccessibilityService2);
                    AbstractC0348nb.r(packageName, "packageName");
                    try {
                        PackageManager.class.getMethod("deleteApplicationCacheFiles", String.class, IPackageDataObserver.class).invoke(topOverlayAccessibilityService2.getPackageManager(), packageName, new P2(fl));
                    } catch (Exception e) {
                        Log.e("AppStorage", "clearCache(" + packageName + ") failed", e);
                        Q2.a.post(new O(2, fl));
                    }
                }
            });
            c02.setOnClickListener(new View.OnClickListener() { // from class: Rk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                    R2 r2 = R2.this;
                    final AppInfo appInfo2 = appInfo;
                    AbstractC0348nb.r(appInfo2, "$app");
                    final TextView textView14 = textView6;
                    final TextView textView15 = textView4;
                    ArrayList arrayList6 = arrayList5;
                    TextView textView16 = textView13;
                    TextView textView17 = textView2;
                    final TopOverlayAccessibilityService topOverlayAccessibilityService2 = this;
                    AbstractC0348nb.r(topOverlayAccessibilityService2, "this$0");
                    TextView textView18 = textView10;
                    final LinearLayout linearLayout15 = linearLayout14;
                    final TopOverlayAccessibilityService topOverlayAccessibilityService3 = this;
                    AbstractC0348nb.r(topOverlayAccessibilityService3, "$ctx");
                    TopOverlayAccessibilityService.i0(arrayList6, textView16, textView17, f9, topOverlayAccessibilityService2, textView15, textView14, textView18, String.format(r2.e, Arrays.copyOf(new Object[]{appInfo2.getLabel()}, 1)));
                    textView14.setOnClickListener(new ViewOnClickListenerC0408pj(topOverlayAccessibilityService2, linearLayout15, appInfo2, 4));
                    textView15.setOnClickListener(new View.OnClickListener() { // from class: Ok
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            final int i23 = 0;
                            TopOverlayAccessibilityService topOverlayAccessibilityService4 = TopOverlayAccessibilityService.n1;
                            TextView textView19 = textView15;
                            TextView textView20 = textView14;
                            TopOverlayAccessibilityService topOverlayAccessibilityService5 = topOverlayAccessibilityService3;
                            AbstractC0348nb.r(topOverlayAccessibilityService5, "$ctx");
                            AppInfo appInfo3 = appInfo2;
                            AbstractC0348nb.r(appInfo3, "$app");
                            TopOverlayAccessibilityService topOverlayAccessibilityService6 = topOverlayAccessibilityService2;
                            AbstractC0348nb.r(topOverlayAccessibilityService6, "this$0");
                            LinearLayout linearLayout16 = linearLayout15;
                            textView19.setEnabled(false);
                            textView20.setEnabled(false);
                            Handler handler = Q2.a;
                            String packageName = appInfo3.getPackageName();
                            Gl gl = new Gl(topOverlayAccessibilityService6, linearLayout16, appInfo3);
                            Handler handler2 = Q2.a;
                            AbstractC0348nb.r(packageName, "packageName");
                            final N2 n2 = new N2(new AtomicBoolean(false), i23, gl);
                            try {
                                Object systemService = topOverlayAccessibilityService5.getSystemService("activity");
                                AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                                Object invoke = ActivityManager.class.getMethod("clearApplicationUserData", String.class, IPackageDataObserver.class).invoke((ActivityManager) systemService, packageName, new P2(n2));
                                Boolean bool = invoke instanceof Boolean ? (Boolean) invoke : null;
                                if (bool != null ? bool.booleanValue() : false) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: L2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i23) {
                                            case 0:
                                                n2.h(Boolean.FALSE);
                                                return;
                                            default:
                                                n2.h(Boolean.FALSE);
                                                return;
                                        }
                                    }
                                });
                            } catch (Exception e) {
                                Log.e("AppStorage", "clearData(" + packageName + ") failed", e);
                                final int i24 = 1;
                                handler2.post(new Runnable() { // from class: L2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i24) {
                                            case 0:
                                                n2.h(Boolean.FALSE);
                                                return;
                                            default:
                                                n2.h(Boolean.FALSE);
                                                return;
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            });
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "showAppDialog failed", e);
        }
    }

    public final void c(int i) {
        PresetRepository presetRepository = this.I;
        if (presetRepository == null) {
            AbstractC0348nb.j0("presetRepository");
            throw null;
        }
        if (presetRepository.getPreset(i) == null) {
            return;
        }
        M();
        F();
        L();
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.addFlags(268566528);
        intent.putExtra("activate_preset_index", i);
        startActivity(intent);
    }

    public final void d(int i) {
        Context context = C0357nk.a;
        C0279kk c0279kk = C0357nk.b;
        if (c0279kk == null) {
            AbstractC0348nb.j0("base");
            throw null;
        }
        C0357nk.f((i * 60) + c0279kk.d);
        TextView textView = this.j;
        if (textView == null) {
            return;
        }
        textView.setText(x());
    }

    public final void e(View view, boolean z) {
        C0478se c0478se;
        C0478se c0478se2;
        int i = 0;
        if (D3.b) {
            view.findViewById(R.id.btnNavBack).setVisibility(z ? 8 : 0);
            List p0 = M4.p0(Integer.valueOf(R.id.btnNavPresets), Integer.valueOf(R.id.btnNavBack), Integer.valueOf(R.id.btnNavApps), Integer.valueOf(R.id.btnNavFactoryApps), Integer.valueOf(R.id.btnNavHome));
            ArrayList arrayList = new ArrayList();
            for (Object obj : p0) {
                if (view.findViewById(((Number) obj).intValue()).getVisibility() == 0) {
                    arrayList.add(obj);
                }
            }
            if (!T7.w) {
                throw new IllegalStateException("UiConfig not initialized — call UiConfig.init(context) first");
            }
            if (z) {
                c0478se2 = T7.y;
                if (c0478se2 == null) {
                    AbstractC0348nb.j0("navPanelBackHidden");
                    throw null;
                }
            } else {
                c0478se2 = T7.x;
                if (c0478se2 == null) {
                    AbstractC0348nb.j0("navPanelDefault");
                    throw null;
                }
            }
            int i2 = (int) (c0478se2.a * getResources().getDisplayMetrics().density);
            float size = ((this.l0 - this.k0) - (arrayList.size() * i2)) / arrayList.size();
            int i3 = this.i0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                int i4 = i + 1;
                if (i < 0) {
                    M4.q0();
                    throw null;
                }
                int intValue = ((Number) next).intValue();
                int round = Math.round(((i2 + size) * i) + this.k0 + size);
                View findViewById = view.findViewById(intValue);
                ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                AbstractC0348nb.p(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.width = i2;
                layoutParams2.height = i2;
                layoutParams2.topMargin = round - i3;
                findViewById.setLayoutParams(layoutParams2);
                i3 = round + i2;
                i = i4;
            }
            return;
        }
        View findViewById2 = view.findViewById(R.id.btnNavBack);
        View findViewById3 = view.findViewById(R.id.navSpacerAfterBack);
        View findViewById4 = view.findViewById(R.id.navSpacerPresetsApps);
        View findViewById5 = view.findViewById(R.id.navSpacerAppsHome);
        View findViewById6 = view.findViewById(R.id.btnNavHome);
        View findViewById7 = view.findViewById(R.id.btnNavApps);
        View findViewById8 = view.findViewById(R.id.btnNavPresets);
        findViewById2.setVisibility(z ? 8 : 0);
        findViewById3.setVisibility(z ? 8 : 0);
        if (!T7.w) {
            throw new IllegalStateException("UiConfig not initialized — call UiConfig.init(context) first");
        }
        if (z) {
            c0478se = T7.y;
            if (c0478se == null) {
                AbstractC0348nb.j0("navPanelBackHidden");
                throw null;
            }
        } else {
            c0478se = T7.x;
            if (c0478se == null) {
                AbstractC0348nb.j0("navPanelDefault");
                throw null;
            }
        }
        float f = getResources().getDisplayMetrics().density;
        int i5 = (int) (c0478se.a * f);
        View[] viewArr = {findViewById6, findViewById7, findViewById8};
        for (int i6 = 0; i6 < 3; i6++) {
            View view2 = viewArr[i6];
            ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
            layoutParams3.width = i5;
            layoutParams3.height = i5;
            view2.setLayoutParams(layoutParams3);
        }
        int i7 = (int) (c0478se.b * f);
        View[] viewArr2 = {findViewById4, findViewById5};
        for (int i8 = 0; i8 < 2; i8++) {
            View view3 = viewArr2[i8];
            ViewGroup.LayoutParams layoutParams4 = view3.getLayoutParams();
            AbstractC0348nb.p(layoutParams4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) layoutParams4;
            if (z) {
                layoutParams5.weight = 0.0f;
                layoutParams5.height = i7;
            } else {
                layoutParams5.weight = 1.0f;
                layoutParams5.height = 0;
            }
            view3.setLayoutParams(layoutParams5);
        }
    }

    public final void f() {
        Iterator it = ((ArrayList) Z2.W(new Xk[]{this.U0, this.b1})).iterator();
        while (it.hasNext()) {
            C6.a(((Xk) it.next()).a.a);
        }
        View view = this.e1;
        if (view != null) {
            C6.a(view);
        }
    }

    public final void g(View view) {
        this.r0 = AbstractC0554vf.j();
        ImageView imageView = (ImageView) view.findViewById(R.id.btnNavApps);
        if (imageView != null) {
            imageView.setImageResource(this.r0 ? R.drawable.ic_nav_tasks : R.drawable.ic_nav_apps);
        }
        View findViewById = view.findViewById(R.id.btnNavFactoryApps);
        if (findViewById != null) {
            findViewById.setVisibility(this.r0 ? 8 : 0);
        }
        e(view, C0255jm.d().getBoolean("back_hidden", false));
    }

    public final void h(View view) {
        String str;
        Ki ki = Ki.a;
        Sh f = Ki.f();
        ((TextView) view.findViewById(R.id.settingsTitle)).setText(f.a);
        ((TextView) view.findViewById(R.id.lblUnifiedLauncher)).setText(f.b);
        ((TextView) view.findViewById(R.id.lblUnifiedLauncherDesc)).setText(f.c);
        ((TextView) view.findViewById(R.id.lblPresetSize)).setText(f.d);
        ((TextView) view.findViewById(R.id.lblPresetSizeDesc)).setText(f.e);
        ((TextView) view.findViewById(R.id.lblCovers)).setText(f.f);
        ((TextView) view.findViewById(R.id.lblCoversDesc)).setText(f.g);
        ((TextView) view.findViewById(R.id.lblHideBack)).setText(f.h);
        ((TextView) view.findViewById(R.id.lblHideBackDesc)).setText(f.i);
        ((TextView) view.findViewById(R.id.lblSportKey)).setText(f.j);
        ((TextView) view.findViewById(R.id.lblSportKeyDesc)).setText(f.k);
        ((TextView) view.findViewById(R.id.lblAutostart)).setText(f.l);
        ((TextView) view.findViewById(R.id.lblAutostartDesc)).setText(f.m);
        ((TextView) view.findViewById(R.id.lblTimeZone)).setText(f.n);
        G0(view);
        F0(this.e1);
        ((TextView) view.findViewById(R.id.lblLanguage)).setText(f.p);
        ((TextView) view.findViewById(R.id.lblLanguageDesc)).setText(f.q);
        ((TextView) view.findViewById(R.id.lblUpdateLauncher)).setText(f.r);
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = "?";
        }
        ((TextView) view.findViewById(R.id.lblUpdateLauncherDesc)).setText(f.s + str);
        ((TextView) view.findViewById(R.id.btnUpdateLauncher)).setText(f.t);
    }

    public final void i(View view) {
        int i;
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        C0047bk c0047bk = T7.s;
        if (c0047bk == null) {
            AbstractC0348nb.j0("size");
            throw null;
        }
        TextView textView = (TextView) view.findViewById(R.id.settingsTitle);
        textView.setTextColor(wj.c);
        textView.setTextSize(c0047bk.a);
        view.findViewById(R.id.settingsHeaderDivider).setBackgroundColor(wj.m);
        ((ScrollView) view.findViewById(R.id.settingsContent)).setVerticalScrollbarThumbDrawable(X());
        int[] iArr = {R.id.lblUnifiedLauncher, R.id.lblPresetSize, R.id.lblCovers, R.id.lblHideBack, R.id.lblSportKey, R.id.lblAutostart, R.id.lblTimeZone, R.id.lblLanguage, R.id.lblUpdateLauncher};
        for (int i2 = 0; i2 < 9; i2++) {
            TextView textView2 = (TextView) view.findViewById(iArr[i2]);
            textView2.setTextColor(wj.f);
            textView2.setTextSize(c0047bk.c);
        }
        int[] iArr2 = {R.id.lblUnifiedLauncherDesc, R.id.lblPresetSizeDesc, R.id.lblCoversDesc, R.id.lblHideBackDesc, R.id.lblSportKeyDesc, R.id.lblAutostartDesc, R.id.lblTimeZoneDesc, R.id.lblLanguageDesc, R.id.lblUpdateLauncherDesc};
        int i3 = 0;
        while (true) {
            i = c0047bk.f;
            if (i3 >= 9) {
                break;
            }
            TextView textView3 = (TextView) view.findViewById(iArr2[i3]);
            textView3.setTextColor(wj.d);
            textView3.setTextSize(i);
            i3++;
        }
        int[] iArr3 = {R.id.settingsUnifiedValue, R.id.settingsPresetSizeValue, R.id.settingsCoversValue, R.id.settingsAutostartValue, R.id.settingsLanguageValue};
        for (int i4 = 0; i4 < 5; i4++) {
            TextView textView4 = (TextView) view.findViewById(iArr3[i4]);
            textView4.setTextColor(wj.e);
            textView4.setTextSize(i);
        }
        Iterator it = AbstractC0348nb.N(Integer.valueOf(R.id.btnUpdateLauncher)).iterator();
        while (it.hasNext()) {
            TextView textView5 = (TextView) view.findViewById(((Number) it.next()).intValue());
            Vj vj = T7.p;
            if (vj == null) {
                AbstractC0348nb.j0("button");
                throw null;
            }
            textView5.setTextColor(vj.f);
            textView5.setTextSize(c0047bk.e);
            Resources resources = textView5.getResources();
            Vj vj2 = T7.p;
            if (vj2 == null) {
                AbstractC0348nb.j0("button");
                throw null;
            }
            textView5.setBackground(resources.getDrawable(vj2.b(this), null));
        }
        Iterator it2 = M4.p0(Integer.valueOf(R.id.settingsUninstall), Integer.valueOf(R.id.settingsBack), Integer.valueOf(R.id.settingsClose)).iterator();
        while (it2.hasNext()) {
            AbstractC0145ff.F((ImageView) view.findViewById(((Number) it2.next()).intValue()));
        }
        int[] iArr4 = {R.id.settingsHideBack, R.id.settingsSportKey};
        for (int i5 = 0; i5 < 2; i5++) {
            Switch r1 = (Switch) view.findViewById(iArr4[i5]);
            if (r1 != null) {
                Resources resources2 = r1.getResources();
                C0099dk c0099dk = T7.o;
                if (c0099dk == null) {
                    AbstractC0348nb.j0("toggle");
                    throw null;
                }
                r1.setTrackDrawable(resources2.getDrawable(getResources().getIdentifier(c0099dk.a, "drawable", getPackageName()), null));
                Resources resources3 = r1.getResources();
                C0099dk c0099dk2 = T7.o;
                if (c0099dk2 == null) {
                    AbstractC0348nb.j0("toggle");
                    throw null;
                }
                r1.setThumbDrawable(resources3.getDrawable(getResources().getIdentifier(c0099dk2.b, "drawable", getPackageName()), null));
            }
        }
        Vj vj3 = T7.p;
        if (vj3 == null) {
            AbstractC0348nb.j0("button");
            throw null;
        }
        int identifier = getResources().getIdentifier(vj3.d, "drawable", getPackageName());
        Iterator it3 = M4.p0(Integer.valueOf(R.id.settingsUnifiedArrow), Integer.valueOf(R.id.settingsPresetSizeArrow), Integer.valueOf(R.id.settingsCoversArrow), Integer.valueOf(R.id.settingsAutostartArrow)).iterator();
        while (it3.hasNext()) {
            ImageView imageView = (ImageView) view.findViewById(((Number) it3.next()).intValue());
            if (imageView != null) {
                imageView.setImageResource(identifier);
            }
        }
    }

    public final void j() {
        TextView textView = this.l;
        if (textView == null) {
            return;
        }
        C0073ck c0073ck = T7.t;
        if (c0073ck == null) {
            AbstractC0348nb.j0("statusBar");
            throw null;
        }
        textView.setTextColor(c0073ck.a);
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0073ck c0073ck2 = T7.t;
        if (c0073ck2 == null) {
            AbstractC0348nb.j0("statusBar");
            throw null;
        }
        gradientDrawable.setColor(c0073ck2.b);
        gradientDrawable.setCornerRadius(1000.0f);
        textView.setBackground(gradientDrawable);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [Nb, S9] */
    public final void m() {
        Xk xk = this.b1;
        Xk xk2 = this.U0;
        if (xk2 != null && this.T0) {
            V(xk2, false);
        } else if (xk != null && ((Boolean) xk.c.d()).booleanValue()) {
            V(xk, false);
        } else {
            F();
            z0();
        }
    }

    public final void m0() {
        WindowManager.LayoutParams layoutParams;
        Xk xk;
        if (this.T0) {
            return;
        }
        if (this.R0 == null) {
            try {
                View inflate = LayoutInflater.from(this).inflate(R.layout.app_list_popup, (ViewGroup) null);
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
                layoutParams2.type = 2038;
                layoutParams2.flags = 264;
                layoutParams2.format = -3;
                layoutParams2.width = 0;
                layoutParams2.height = 0;
                layoutParams2.gravity = 8388659;
                layoutParams2.x = 0;
                layoutParams2.y = 0;
                v().addView(inflate, layoutParams2);
                this.R0 = inflate;
                this.S0 = layoutParams2;
                AbstractC0348nb.o(inflate);
                this.U0 = q(inflate, false);
            } catch (Exception e) {
                Log.e("TopOverlayA11y", "Failed to create app list: " + e.getMessage(), e);
            }
        }
        View view = this.R0;
        if (view == null || (layoutParams = this.S0) == null || (xk = this.U0) == null) {
            return;
        }
        layoutParams.width = -1;
        layoutParams.height = -1;
        try {
            v().updateViewLayout(view, layoutParams);
        } catch (Exception unused) {
        }
        this.T0 = true;
        f();
        V(xk, false);
        xk.a.i.i0(0);
    }

    public final void n() {
        if (this.y) {
            Io io = this.J;
            if (io == null) {
                AbstractC0348nb.j0("windowLauncher");
                throw null;
            }
            if (io.g) {
                Io io2 = this.J;
                if (io2 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                int ordinal = io2.r().ordinal();
                if (ordinal == 0) {
                    T();
                    return;
                }
                C0572w8 c0572w8 = C0572w8.a;
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        return;
                    }
                    Io io3 = this.J;
                    if (io3 == null) {
                        AbstractC0348nb.j0("windowLauncher");
                        throw null;
                    }
                    io3.g = false;
                    if (io3.j) {
                        io3.j = false;
                        Preset preset = io3.h;
                        if (preset != null) {
                            io3.b(preset, c0572w8);
                        }
                    }
                    o0(this.z, this.A, this.B);
                    return;
                }
                Io io4 = this.J;
                if (io4 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                io4.g = false;
                if (io4.j) {
                    io4.j = false;
                    Preset preset2 = io4.h;
                    if (preset2 != null) {
                        io4.b(preset2, c0572w8);
                    }
                }
                Io io5 = this.J;
                if (io5 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                io5.c();
                o0(this.z, this.A, this.B);
            }
        }
    }

    public final void n0() {
        int i;
        int i2 = 0;
        if (this.j != null) {
            return;
        }
        SharedPreferences sharedPreferences = getSharedPreferences("clock_offset", 0);
        if (sharedPreferences.contains("hours")) {
            int i3 = sharedPreferences.getInt("hours", 0);
            if (i3 != 0) {
                Context context = C0357nk.a;
                if (!C0357nk.f) {
                    i = 180;
                } else {
                    if (C0357nk.b == null) {
                        AbstractC0348nb.j0("base");
                        throw null;
                    }
                    i = C0279kk.e();
                }
                C0357nk.f((i3 * 60) + i);
                Log.i("TopOverlayA11y", "migrated legacy clock offset: " + i3 + "h + zone " + i + 'm');
            }
            sharedPreferences.edit().remove("hours").apply();
        }
        try {
            TextView textView = new TextView(this);
            textView.setText(x());
            Wj wj = T7.r;
            if (wj == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            textView.setTextColor(wj.a);
            if (T7.s == null) {
                AbstractC0348nb.j0("size");
                throw null;
            }
            textView.setTextSize(r2.g);
            textView.setTypeface(Typeface.create("sans-serif", 1));
            textView.setSoundEffectsEnabled(false);
            textView.setOnClickListener(new Fk(i2, this));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2024;
            layoutParams.flags = 50333448;
            layoutParams.format = -3;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = 8388659;
            layoutParams.x = 25;
            layoutParams.y = 20;
            v().addView(textView, layoutParams);
            this.j = textView;
            this.k.postDelayed(this.s0, 3000L);
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Failed to show clock", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, android.view.View$OnTouchListener] */
    public final void o0(boolean z, float f, String str) {
        if (!this.K0) {
            p();
        }
        View view = this.H0;
        if (view == null && view == null) {
            try {
                View view2 = new View(this);
                view2.setBackgroundColor(-16777216);
                view2.setOnTouchListener(new Object());
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.type = 2002;
                layoutParams.flags = 264;
                layoutParams.format = -3;
                layoutParams.width = 0;
                layoutParams.height = 0;
                layoutParams.gravity = 8388659;
                layoutParams.x = 0;
                layoutParams.y = 0;
                v().addView(view2, layoutParams);
                this.H0 = view2;
                this.I0 = layoutParams;
            } catch (Exception e) {
                Log.e("TopOverlayA11y", "Failed to create caption bar cover", e);
            }
        }
        int i = (z || !L4.u0(this.G0, str)) ? this.E0 : this.F0;
        WindowManager.LayoutParams layoutParams2 = this.I0;
        if (layoutParams2 != null) {
            layoutParams2.x = 190;
            layoutParams2.y = 0;
            layoutParams2.width = 1630;
            layoutParams2.height = i;
            try {
                v().updateViewLayout(this.H0, layoutParams2);
            } catch (Exception unused) {
            }
        }
        S(0, 190, i);
        S(1, 1796, i);
        S(2, 190, 696);
        S(3, 1796, 696);
        if (!z) {
            for (int i2 = 4; i2 < 8; i2++) {
                H(i2);
            }
            return;
        }
        int i3 = (int) (1630 * f);
        int i4 = i3 + 162;
        S(4, i4, i);
        S(5, i4, 696);
        int i5 = i3 + 194;
        S(6, i5, i);
        S(7, i5, 696);
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        CharSequence packageName;
        String obj;
        ComponentName componentName;
        ComponentName componentName2;
        if (accessibilityEvent == null || accessibilityEvent.getEventType() != 32 || (packageName = accessibilityEvent.getPackageName()) == null || (obj = packageName.toString()) == null || obj.equals(getPackageName()) || obj.equals("com.android.systemui") || obj.equals("android")) {
            return;
        }
        Ja w = w();
        w.getClass();
        if (((Set) w.e.a()).contains(obj) && w.b.j()) {
            if (w.a()) {
                w.b(true);
            }
            LastScreen.Companion.home();
        }
        if (Si.H(obj, "inputmethod") || Si.H(obj, "keyboard")) {
            boolean z = this.E;
            if (z || this.F) {
                return;
            }
            if (this.i != null && !z) {
                K();
                this.E = true;
            }
            ArrayList arrayList = this.J0;
            if (arrayList.size() >= 4 && !this.F && (((Uk) arrayList.get(2)).b.width > 0 || ((Uk) arrayList.get(3)).b.width > 0)) {
                H(2);
                H(3);
                if (arrayList.size() >= 8) {
                    H(5);
                    H(7);
                }
                this.F = true;
            }
            Handler handler = this.w;
            RunnableC0048bl runnableC0048bl = this.o0;
            handler.removeCallbacks(runnableC0048bl);
            handler.postDelayed(runnableC0048bl, 1000L);
            return;
        }
        if (this.C != null && accessibilityEvent.getEventType() == 32 && !obj.equals(this.C)) {
            Object systemService = getSystemService("activity");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
            AbstractC0348nb.q(runningTasks, "getRunningTasks(...)");
            ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.isEmpty() ? null : runningTasks.get(0);
            if (!AbstractC0348nb.g((runningTaskInfo == null || (componentName2 = runningTaskInfo.baseActivity) == null) ? null : componentName2.getPackageName(), this.C)) {
                if (!AbstractC0348nb.g((runningTaskInfo == null || (componentName = runningTaskInfo.topActivity) == null) ? null : componentName.getPackageName(), this.C)) {
                    t();
                }
            }
        }
        if (this.y) {
            Io io = this.J;
            if (io == null) {
                AbstractC0348nb.j0("windowLauncher");
                throw null;
            }
            if (io.g) {
                n();
                return;
            }
            if (accessibilityEvent.getEventType() == 32) {
                Io io2 = this.J;
                if (io2 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io2.e.contains(obj)) {
                    o0(this.z, this.A, this.B);
                    return;
                }
                Io io3 = this.J;
                if (io3 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io3.e.isEmpty()) {
                    T();
                    return;
                }
                Io io4 = this.J;
                if (io4 == null) {
                    AbstractC0348nb.j0("windowLauncher");
                    throw null;
                }
                if (io4.r() == Fo.e) {
                    Io io5 = this.J;
                    if (io5 == null) {
                        AbstractC0348nb.j0("windowLauncher");
                        throw null;
                    }
                    io5.g = true;
                    if (this.y) {
                        I();
                        M();
                        F();
                        L();
                    }
                }
            }
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        IBinder iBinder;
        Parcel obtain;
        Parcel obtain2;
        IBinder iBinder2;
        HomeActivity homeActivity = HomeActivity.w;
        if (homeActivity != null) {
            homeActivity.finish();
        }
        try {
            unregisterReceiver(this.a0);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.Z);
        } catch (Exception unused2) {
        }
        C0445r6 c0445r6 = this.W;
        if (c0445r6 != null) {
            getContentResolver().unregisterContentObserver(c0445r6);
        }
        this.W = null;
        C0435qk c0435qk = (C0435qk) this.Y.a();
        c0435qk.f = false;
        C0409pk c0409pk = c0435qk.c;
        if (c0409pk != null) {
            try {
                Object systemService = c0435qk.a.getSystemService("connectivity");
                AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                ((ConnectivityManager) systemService).unregisterNetworkCallback(c0409pk);
            } catch (Exception unused3) {
            }
        }
        c0435qk.c = null;
        c0435qk.g = false;
        c0435qk.b.removeCallbacks(c0435qk.h);
        if (C0357nk.f) {
            C0357nk.f = false;
            H4 h4 = C0357nk.c;
            if (h4 != null && h4.e) {
                try {
                    h4.a.unregisterReceiver(h4.f);
                } catch (Exception unused4) {
                }
                h4.e = false;
            }
            C0357nk.c = null;
            C0357nk.d.removeCallbacks(C0357nk.g);
        }
        E();
        ArrayList arrayList = this.J0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                v().removeView(((Uk) it.next()).a);
            } catch (Exception unused5) {
            }
        }
        arrayList.clear();
        this.K0 = false;
        View view = this.H0;
        if (view != null) {
            try {
                v().removeView(view);
            } catch (Exception unused6) {
            }
        }
        this.H0 = null;
        this.I0 = null;
        M();
        View view2 = this.c;
        if (view2 != null) {
            try {
                v().removeView(view2);
            } catch (Exception unused7) {
            }
        }
        this.c = null;
        this.L0 = null;
        this.M0 = null;
        this.P0 = null;
        K();
        G();
        this.k.removeCallbacks(this.w0);
        FrameLayout frameLayout = this.m;
        if (frameLayout != null) {
            try {
                v().removeView(frameLayout);
            } catch (Exception unused8) {
            }
        }
        this.m = null;
        this.l = null;
        Ii ii = this.x0;
        if (ii != null) {
            ii.c.removeCallbacks(ii.f);
            ii.a();
        }
        J();
        this.w.removeCallbacksAndMessages(null);
        C0409pk c0409pk2 = this.r;
        if (c0409pk2 != null) {
            try {
                Object systemService2 = getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService2 instanceof ConnectivityManager ? (ConnectivityManager) systemService2 : null;
                if (connectivityManager != null) {
                    connectivityManager.unregisterNetworkCallback(c0409pk2);
                }
            } catch (Exception unused9) {
            }
        }
        P5 p5 = this.x;
        InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) p5.a.b(T7.f);
        if (interfaceC0625yb == null) {
            throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + p5).toString());
        }
        ((Hb) interfaceC0625yb).m(null);
        C0307lm c0307lm = this.K;
        if (c0307lm == null) {
            AbstractC0348nb.j0("uiVisibilityClient");
            throw null;
        }
        boolean z = c0307lm.f;
        BinderC0281km binderC0281km = c0307lm.g;
        if (z && (iBinder2 = c0307lm.b) != null) {
            obtain = Parcel.obtain();
            AbstractC0348nb.q(obtain, "obtain(...)");
            obtain2 = Parcel.obtain();
            AbstractC0348nb.q(obtain2, "obtain(...)");
            try {
                try {
                    obtain.writeInterfaceToken("com.chery.window.IWindowUiVisibility");
                    obtain.writeStrongBinder(binderC0281km);
                    obtain.writeInt(3);
                    iBinder2.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    c0307lm.f = false;
                    Log.i("UiVisibility", "unregisterUiTarget OK");
                } catch (Exception e) {
                    Log.e("UiVisibility", "unregisterUiTarget failed: " + e.getMessage());
                }
                obtain.recycle();
                obtain2.recycle();
            } finally {
            }
        }
        if (c0307lm.e && (iBinder = c0307lm.b) != null) {
            obtain = Parcel.obtain();
            AbstractC0348nb.q(obtain, "obtain(...)");
            obtain2 = Parcel.obtain();
            AbstractC0348nb.q(obtain2, "obtain(...)");
            try {
                try {
                    obtain.writeInterfaceToken("com.chery.window.IWindowUiVisibility");
                    obtain.writeStrongBinder(binderC0281km);
                    obtain.writeInt(3);
                    iBinder.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    c0307lm.e = false;
                    Log.i("UiVisibility", "unregisterUiListener OK");
                } catch (Exception e2) {
                    Log.e("UiVisibility", "unregisterUiListener failed: " + e2.getMessage());
                }
            } finally {
            }
        }
        if (c0307lm.c) {
            try {
                c0307lm.a.unbindService(c0307lm.h);
            } catch (Exception unused10) {
            }
            c0307lm.c = false;
            c0307lm.b = null;
        }
        n1 = null;
        super.onDestroy();
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object, android.view.View$OnTouchListener] */
    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putInt;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit2;
        SharedPreferences.Editor remove;
        int i = 0;
        int i2 = 1;
        super.onServiceConnected();
        n1 = this;
        Object systemService = getSystemService("window");
        AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.a = (WindowManager) systemService;
        this.I = new PresetRepository(this);
        this.J = Io.q.b(this);
        C0255jm c0255jm = C0255jm.a;
        this.n = C0255jm.c();
        C0307lm c0307lm = new C0307lm(this);
        this.K = c0307lm;
        c0307lm.d = new L(28, this);
        if (!c0307lm.c) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.android.systemui", "com.android.systemui.SystemUIService"));
            intent.setAction("com.android.systemui.action.uivisibility");
            try {
                Log.i("UiVisibility", "bindService -> " + c0307lm.a.bindService(intent, c0307lm.h, 1));
            } catch (Exception e) {
                AbstractC0407pi.m(e, new StringBuilder("bind failed (expected on emulator): "), "UiVisibility");
            }
        }
        AccessibilityServiceInfo serviceInfo = getServiceInfo();
        serviceInfo.eventTypes = 32;
        serviceInfo.feedbackType = 16;
        serviceInfo.flags |= 64;
        serviceInfo.notificationTimeout = 0L;
        setServiceInfo(serviceInfo);
        this.W = new C0445r6(this, this.w);
        ContentResolver contentResolver = getContentResolver();
        Uri uriFor = Settings.System.getUriFor("com.citos.setting.theme.mode");
        AbstractC0348nb.q(uriFor, "getUriFor(...)");
        C0445r6 c0445r6 = this.W;
        AbstractC0348nb.o(c0445r6);
        contentResolver.registerContentObserver(uriFor, false, c0445r6);
        registerReceiver(this.a0, new IntentFilter("com.saic.keyevent.hardkey.report"));
        C0460rl c0460rl = this.Z;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        registerReceiver(c0460rl, intentFilter);
        C0255jm c0255jm2 = C0255jm.a;
        if (C0255jm.d().getBoolean("sport_key_enabled", false)) {
            Z(1);
        }
        Context context = C0357nk.a;
        if (!C0357nk.f) {
            C0357nk.f = true;
            Context applicationContext = getApplicationContext();
            AbstractC0348nb.q(applicationContext, "getApplicationContext(...)");
            C0357nk.a = applicationContext;
            C0357nk.b = new C0279kk(applicationContext);
            Context context2 = C0357nk.a;
            if (context2 == null) {
                AbstractC0348nb.j0("app");
                throw null;
            }
            H4 h4 = new H4(context2);
            if (!h4.e) {
                context2.registerReceiver(h4.f, new IntentFilter("android.intent.action.TIME_SET"));
                h4.e = true;
            }
            C0357nk.c = h4;
            C0357nk.e.execute(new RunnableC0492t3(2));
            C0357nk.d.postDelayed(C0357nk.g, 900000L);
            StringBuilder sb = new StringBuilder("started, state=");
            sb.append(C0357nk.c());
            sb.append(" offset=");
            C0279kk c0279kk = C0357nk.b;
            if (c0279kk == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            sb.append(c0279kk.d);
            sb.append("m manual=");
            C0279kk c0279kk2 = C0357nk.b;
            if (c0279kk2 == null) {
                AbstractC0348nb.j0("base");
                throw null;
            }
            sb.append(c0279kk2.e);
            Log.i("TimeKeeper", sb.toString());
        }
        C0435qk c0435qk = (C0435qk) this.Y.a();
        if (c0435qk.c == null) {
            c0435qk.f = true;
            Object systemService2 = c0435qk.a.getSystemService("connectivity");
            AbstractC0348nb.p(systemService2, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService2;
            NetworkRequest build = new NetworkRequest.Builder().addCapability(12).build();
            C0409pk c0409pk = new C0409pk(i, c0435qk);
            c0435qk.c = c0409pk;
            try {
                connectivityManager.registerNetworkCallback(build, c0409pk);
            } catch (Exception e2) {
                Log.e("TimeSyncWatchdog", "registerNetworkCallback failed", e2);
                c0435qk.c = null;
            }
            c0435qk.b.removeCallbacks(c0435qk.h);
            Handler handler = c0435qk.b;
            J2 j2 = c0435qk.h;
            long[] jArr = C0435qk.i;
            int i3 = c0435qk.d;
            if (i3 > 4) {
                i3 = 4;
            }
            handler.postDelayed(j2, jArr[i3]);
        }
        if (!this.n) {
            s0();
            n0();
        }
        v0();
        if (this.c == null) {
            try {
                View inflate = LayoutInflater.from(this).inflate(R.layout.sidebar, (ViewGroup) null);
                r();
                int i4 = this.h0 + 4;
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.type = 2024;
                layoutParams.flags = 280;
                layoutParams.format = -3;
                layoutParams.gravity = 8388659;
                layoutParams.x = i4;
                layoutParams.y = 0;
                layoutParams.width = 0;
                layoutParams.height = 0;
                v().addView(inflate, layoutParams);
                this.c = inflate;
                this.L0 = layoutParams;
                this.M0 = (PresetGridLayout) inflate.findViewById(R.id.presetsContainer);
                inflate.setOnTouchListener(new Object());
            } catch (Exception e3) {
                Log.e("TopOverlayA11y", "Failed to create sidebar", e3);
            }
        }
        p();
        if (!this.n) {
            Sb.a.getClass();
            SharedPreferences sharedPreferences2 = Sb.c;
            boolean z = sharedPreferences2 != null ? sharedPreferences2.getBoolean(C6.r(6028911968351385216L), false) : false;
            if (z && (sharedPreferences = Sb.c) != null && (edit2 = sharedPreferences.edit()) != null && (remove = edit2.remove(C6.r(6028911886747006592L))) != null) {
                remove.apply();
            }
            SharedPreferences sharedPreferences3 = Sb.c;
            if (!(sharedPreferences3 != null ? sharedPreferences3.getBoolean(C6.r(6028912286178965120L), false) : false)) {
                if (!z) {
                    SharedPreferences sharedPreferences4 = Sb.c;
                    int i5 = (sharedPreferences4 != null ? sharedPreferences4.getInt(C6.r(6028912178804782720L), 0) : 0) + 1;
                    SharedPreferences sharedPreferences5 = Sb.c;
                    if (sharedPreferences5 != null && (edit = sharedPreferences5.edit()) != null && (putInt = edit.putInt(C6.r(6028912114380273280L), i5)) != null) {
                        putInt.apply();
                    }
                }
                a0();
            }
        }
        MainActivity mainActivity = MainActivity.O;
        if (mainActivity != null && !mainActivity.B) {
            mainActivity.B = true;
            mainActivity.x(mainActivity.getIntent(), false);
        }
        Ja w = w();
        SharedPreferences sharedPreferences6 = w.d;
        long j = sharedPreferences6.getLong("opening_at", 0L);
        if (j != 0) {
            sharedPreferences6.edit().remove("opening_at").apply();
            if (System.currentTimeMillis() - j < 60000) {
                w.f = true;
                Log.w("HomeKeeper", "Unified home did not come up after its last start — the stock home for now");
            }
        }
        if (w.a() && w.b.j()) {
            w.b(true);
        }
        Object systemService3 = getSystemService("connectivity");
        ConnectivityManager connectivityManager2 = systemService3 instanceof ConnectivityManager ? (ConnectivityManager) systemService3 : null;
        if (connectivityManager2 != null) {
            C0409pk c0409pk2 = new C0409pk(i2, this);
            this.r = c0409pk2;
            try {
                connectivityManager2.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), c0409pk2);
            } catch (Exception e4) {
                AbstractC0407pi.m(e4, new StringBuilder("startAntiFraudHeartbeat: "), "TopOverlayA11y");
            }
        }
        if (this.n) {
            return;
        }
        Ii ii = new Ii(this, this.a);
        Handler handler2 = ii.c;
        J2 j22 = ii.f;
        handler2.removeCallbacks(j22);
        handler2.postDelayed(j22, 60000L);
        this.x0 = ii;
    }

    public final void p() {
        if (this.K0) {
            return;
        }
        Tk tk = Tk.a;
        Tk tk2 = Tk.b;
        Tk tk3 = Tk.c;
        Tk tk4 = Tk.d;
        Tk[] tkArr = {tk, tk2, tk3, tk4, tk2, tk4, tk, tk3};
        for (int i = 0; i < 8; i++) {
            try {
                Vk vk = new Vk(this, tkArr[i]);
                vk.setLayerType(1, null);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.type = 2002;
                layoutParams.flags = 280;
                layoutParams.format = -3;
                layoutParams.width = 0;
                layoutParams.height = 0;
                layoutParams.gravity = 8388659;
                layoutParams.x = 0;
                layoutParams.y = 0;
                v().addView(vk, layoutParams);
                this.J0.add(new Uk(vk, layoutParams));
            } catch (Exception e) {
                Log.e("TopOverlayA11y", "Failed to create corner overlay", e);
            }
        }
        this.K0 = true;
    }

    public final void p0(FrameLayout frameLayout, int i, boolean z) {
        W(frameLayout);
        Ef r = r();
        float f = getResources().getDisplayMetrics().density;
        int i2 = (int) (r.h * f);
        int i3 = (int) (r.i * f);
        int i4 = (int) (r.j * f);
        float f2 = z ? 0.35f : 1.0f;
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        ViewParent parent = frameLayout.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewParent parent2 = viewGroup.getParent();
            ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            if (viewGroup2 != null) {
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
            }
        }
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_edit_small);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-584155854);
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(i3, i3, i3, i3);
        imageView.setAlpha(f2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 8388659;
        int i5 = -i4;
        layoutParams.topMargin = i5;
        layoutParams.leftMargin = i5;
        imageView.setLayoutParams(layoutParams);
        if (!z) {
            imageView.setOnClickListener(new Gk(this, i, 0));
        }
        ImageView imageView2 = new ImageView(this);
        imageView2.setImageResource(R.drawable.ic_delete_small);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(-573820109);
        imageView2.setBackground(gradientDrawable2);
        imageView2.setPadding(i3, i3, i3, i3);
        imageView2.setAlpha(f2);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams2.gravity = 8388661;
        layoutParams2.topMargin = i5;
        layoutParams2.rightMargin = i5;
        imageView2.setLayoutParams(layoutParams2);
        if (!z) {
            imageView2.setOnClickListener(new Gk(this, i, 1));
        }
        frameLayout.addView(imageView);
        frameLayout.addView(imageView2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, Kg] */
    public final Xk q(View view, boolean z) {
        C0641z2 c0641z2;
        Xk xk;
        Kg kg;
        view.setPadding(getResources().getDimensionPixelSize(R.dimen.popup_padding_start), view.getPaddingTop(), getResources().getDimensionPixelSize(R.dimen.popup_padding_end), view.getPaddingBottom());
        boolean z2 = (z || this.V0 == null) ? false : true;
        ?? obj = new Object();
        boolean z3 = !z2;
        C0100dl c0100dl = new C0100dl(this, z2);
        Yk yk = new Yk(2, this);
        C0074cl c0074cl = new C0074cl(this, obj, 1);
        Yk yk2 = new Yk(3, this);
        C0125el c0125el = new C0125el(0, this);
        C0125el c0125el2 = new C0125el(1, this);
        PrefsAppOrderStore prefsAppOrderStore = new PrefsAppOrderStore(this);
        C0641z2 c0641z22 = new C0641z2(view, z3, c0100dl, yk, c0074cl, yk2, c0125el, c0125el2, z3, z ? new Ia(prefsAppOrderStore, 0) : new Ia(prefsAppOrderStore, 1), (z || z2) ? null : new Yk(4, this), !z);
        if (z) {
            c0641z2 = c0641z22;
            String str = obj;
            xk = new Xk(c0641z2, new Pe(0, this, TopOverlayAccessibilityService.class, "homePrograms", str, 2), new Yk(1, this));
            kg = str;
        } else {
            c0641z2 = c0641z22;
            Kg kg2 = obj;
            xk = new Xk(c0641z2, new Pe(0, this, TopOverlayAccessibilityService.class, "getUserInstalledApps", "getUserInstalledApps()Ljava/util/List;", 3), new C0074cl(this, kg2, 0));
            kg = kg2;
        }
        kg.a = xk;
        c0641z2.a();
        Object obj2 = kg.a;
        if (obj2 != null) {
            return (Xk) obj2;
        }
        AbstractC0348nb.j0("list");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.Map, java.lang.Object] */
    public final void r0(boolean z) {
        if (this.l1 != null) {
            return;
        }
        try {
            FrameLayout frameLayout = new FrameLayout(this);
            Wj wj = T7.r;
            if (wj == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            frameLayout.setBackgroundColor(wj.n);
            frameLayout.setClickable(true);
            frameLayout.setOnClickListener(new Fk(20, this));
            View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_language, (ViewGroup) frameLayout, false);
            Yj yj = T7.q;
            if (yj == null) {
                AbstractC0348nb.j0("dialog");
                throw null;
            }
            inflate.setBackgroundResource(yj.a(this));
            inflate.setClickable(true);
            TextView textView = (TextView) inflate.findViewById(R.id.dialogLanguageTitle);
            Ki ki = Ki.a;
            textView.setText(Ki.f().p);
            Wj wj2 = T7.r;
            if (wj2 == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            textView.setTextColor(wj2.f);
            GridLayout gridLayout = (GridLayout) inflate.findViewById(R.id.dialogLanguageGrid);
            C0255jm c0255jm = C0255jm.a;
            String a = C0255jm.a();
            for (String str : Ki.b) {
                View inflate2 = LayoutInflater.from(this).inflate(R.layout.dialog_language_item, (ViewGroup) gridLayout, false);
                ((ImageView) inflate2.findViewById(R.id.dialogLanguageItemFlag)).setImageResource(u(str));
                TextView textView2 = (TextView) inflate2.findViewById(R.id.dialogLanguageItemLabel);
                String str2 = (String) Ki.c.get(str);
                if (str2 == null) {
                    str2 = str;
                }
                textView2.setText(str2);
                Wj wj3 = T7.r;
                if (wj3 == null) {
                    AbstractC0348nb.j0("color");
                    throw null;
                }
                textView2.setTextColor(wj3.f);
                if (str.equals(a)) {
                    Wj wj4 = T7.r;
                    if (wj4 == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    inflate2.setBackgroundColor(wj4.l);
                }
                inflate2.setOnClickListener(new U0(this, 5, str));
                gridLayout.addView(inflate2);
            }
            ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            }
            layoutParams2.gravity = 17;
            frameLayout.addView(inflate, layoutParams2);
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            layoutParams3.type = z ? 2032 : 2038;
            layoutParams3.flags = 256;
            layoutParams3.format = -3;
            layoutParams3.width = -1;
            layoutParams3.height = -1;
            WindowManager v = z ? this.a : v();
            if (v != null) {
                v.addView(frameLayout, layoutParams3);
            }
            this.l1 = frameLayout;
            this.m1 = v;
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Failed to show language dropdown: " + e.getMessage(), e);
        }
    }

    public final void s() {
        FrameLayout frameLayout = this.k1;
        if (frameLayout == null) {
            return;
        }
        try {
            v().removeView(frameLayout);
        } catch (Exception unused) {
        }
        this.k1 = null;
    }

    public final void s0() {
        int i;
        int i2 = this.f0;
        if (this.i != null) {
            return;
        }
        try {
            boolean z = D3.b;
            int i3 = this.i0;
            int i4 = z ? i3 : this.d0;
            int i5 = z ? 720 - i3 : this.e0;
            int i6 = z ? 720 - i3 : this.g0;
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setClipChildren(true);
            ImageView imageView = new ImageView(this);
            if (z) {
                imageView.setImageResource(R.drawable.theme_bg_fun);
            } else {
                C0021ak c0021ak = T7.l;
                if (c0021ak == null) {
                    AbstractC0348nb.j0("nav");
                    throw null;
                }
                imageView.setImageResource(getResources().getIdentifier(c0021ak.a, "drawable", getPackageName()));
            }
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setLayoutParams(new FrameLayout.LayoutParams(i2, 720));
            imageView.setTranslationY(-i4);
            frameLayout.addView(imageView);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2024;
            layoutParams.flags = 50333464;
            layoutParams.format = -3;
            layoutParams.width = i2;
            layoutParams.height = i6;
            layoutParams.gravity = 8388659;
            layoutParams.x = 0;
            layoutParams.y = i4;
            v().addView(frameLayout, layoutParams);
            this.b0 = frameLayout;
            View inflate = LayoutInflater.from(this).inflate(z ? R.layout.nav_panel_fun : R.layout.nav_panel, (ViewGroup) null);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            layoutParams2.type = 2024;
            layoutParams2.flags = 50333448;
            layoutParams2.format = -3;
            int i7 = this.c0;
            layoutParams2.width = i7;
            layoutParams2.height = i5;
            layoutParams2.gravity = 8388659;
            if (z) {
                i = this.j0 - (i7 / 2);
            } else {
                C0021ak c0021ak2 = T7.l;
                if (c0021ak2 == null) {
                    AbstractC0348nb.j0("nav");
                    throw null;
                }
                i = c0021ak2.b;
            }
            layoutParams2.x = i;
            layoutParams2.y = i4;
            int[] iArr = {R.id.btnNavPresets, R.id.btnNavApps, R.id.btnNavBack, R.id.btnNavHome, R.id.btnNavFactoryApps};
            for (int i8 = 0; i8 < 5; i8++) {
                ImageView imageView2 = (ImageView) inflate.findViewById(iArr[i8]);
                if (imageView2 != null) {
                    Wj wj = T7.r;
                    if (wj == null) {
                        AbstractC0348nb.j0("color");
                        throw null;
                    }
                    imageView2.setColorFilter(wj.a, PorterDuff.Mode.SRC_IN);
                }
            }
            inflate.findViewById(R.id.btnNavHome).setOnClickListener(new Fk(1, this));
            inflate.findViewById(R.id.btnNavBack).setOnClickListener(new Fk(2, this));
            inflate.findViewById(R.id.btnNavApps).setOnClickListener(new Fk(3, this));
            inflate.findViewById(R.id.btnNavPresets).setOnClickListener(new Fk(4, this));
            View findViewById = inflate.findViewById(R.id.btnNavFactoryApps);
            if (findViewById != null) {
                findViewById.setOnClickListener(new Fk(5, this));
            }
            g(inflate);
            v().addView(inflate, layoutParams2);
            this.i = inflate;
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Failed to show nav panel", e);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [Nb, S9] */
    public final void t() {
        this.C = null;
        C0307lm c0307lm = this.K;
        if (c0307lm == null) {
            AbstractC0348nb.j0("uiVisibilityClient");
            throw null;
        }
        c0307lm.a(false);
        J();
        Io io = this.J;
        if (io == null) {
            AbstractC0348nb.j0("windowLauncher");
            throw null;
        }
        io.c.removeCallbacksAndMessages(null);
        io.d = null;
        ?? r1 = this.D;
        if (r1 != 0) {
            this.D = null;
            r1.d();
        }
    }

    public final void t0(String str, ArrayList arrayList, String str2, InterfaceC0089da interfaceC0089da) {
        s();
        Yj yj = T7.q;
        if (yj == null) {
            AbstractC0348nb.j0("dialog");
            throw null;
        }
        int identifier = getResources().getIdentifier(yj.b, "drawable", getPackageName());
        FrameLayout frameLayout = new FrameLayout(this);
        Wj wj = T7.r;
        if (wj == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        frameLayout.setBackgroundColor(wj.n);
        boolean z = true;
        frameLayout.setClickable(true);
        frameLayout.setOnClickListener(new Fk(8, this));
        View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_select, (ViewGroup) frameLayout, false);
        Yj yj2 = T7.q;
        if (yj2 == null) {
            AbstractC0348nb.j0("dialog");
            throw null;
        }
        inflate.setBackgroundResource(yj2.a(this));
        TextView textView = (TextView) inflate.findViewById(R.id.dialogSelectTitle);
        textView.setText(str);
        Wj wj2 = T7.r;
        if (wj2 == null) {
            AbstractC0348nb.j0("color");
            throw null;
        }
        textView.setTextColor(wj2.f);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.dialogSelectItems);
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                M4.q0();
                throw null;
            }
            C0016af c0016af = (C0016af) next;
            String str3 = (String) c0016af.a;
            String str4 = (String) c0016af.b;
            View inflate2 = LayoutInflater.from(this).inflate(R.layout.dialog_select_item, (ViewGroup) linearLayout, false);
            TextView textView2 = (TextView) inflate2.findViewById(R.id.dialogSelectItemLabel);
            textView2.setText(str4);
            Wj wj3 = T7.r;
            if (wj3 == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            textView2.setTextColor(wj3.f);
            ImageView imageView = (ImageView) inflate2.findViewById(R.id.dialogSelectItemCheck);
            imageView.setImageResource(identifier);
            imageView.setVisibility(AbstractC0348nb.g(str3, str2) ? 0 : 4);
            View findViewById = inflate2.findViewById(R.id.dialogSelectItemDivider);
            findViewById.setVisibility(i == M4.o0(arrayList) ? 8 : 0);
            Wj wj4 = T7.r;
            if (wj4 == null) {
                AbstractC0348nb.j0("color");
                throw null;
            }
            findViewById.setBackgroundColor(wj4.m);
            inflate2.setOnClickListener(new ViewOnClickListenerC0408pj(this, interfaceC0089da, str3));
            linearLayout.addView(inflate2);
            i = i2;
            z = true;
        }
        inflate.setClickable(z);
        float f = getResources().getDisplayMetrics().density;
        TextView textView3 = (TextView) inflate.findViewById(R.id.dialogSelectTitle);
        float f2 = 138 * f;
        float f3 = 32 * f;
        float measureText = textView3.getPaint().measureText(textView3.getText().toString()) + (80 * f) + f3;
        int childCount = linearLayout.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            TextView textView4 = (TextView) linearLayout.getChildAt(i3).findViewById(R.id.dialogSelectItemLabel);
            float measureText2 = textView4.getPaint().measureText(textView4.getText().toString()) + f2 + f3;
            if (measureText2 > measureText) {
                measureText = measureText2;
            }
        }
        int f4 = AbstractC0554vf.f((int) measureText, (int) (360 * f), (int) (900 * f));
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        }
        layoutParams2.width = f4;
        layoutParams2.gravity = 17;
        frameLayout.addView(inflate, layoutParams2);
        WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
        layoutParams3.type = 2038;
        layoutParams3.flags = 256;
        layoutParams3.format = -3;
        layoutParams3.width = -1;
        layoutParams3.height = -1;
        layoutParams3.gravity = 8388659;
        layoutParams3.x = 0;
        layoutParams3.y = 0;
        try {
            v().addView(frameLayout, layoutParams3);
            this.k1 = frameLayout;
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Failed to show selection dialog: " + e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0101 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [S9, ra] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u0(defpackage.Xk r14, java.util.List r15) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.omoda.launcher.service.TopOverlayAccessibilityService.u0(Xk, java.util.List):void");
    }

    public final WindowManager v() {
        return (WindowManager) this.b.a();
    }

    public final void v0() {
        if (this.m != null) {
            return;
        }
        try {
            TextView textView = new TextView(this);
            textView.setTextSize(26.0f);
            textView.setTypeface(Typeface.create("sans-serif", 0));
            textView.setGravity(17);
            int i = this.u0;
            int i2 = this.v0;
            textView.setPadding(i, i2, i, i2);
            textView.setVisibility(8);
            textView.setSoundEffectsEnabled(false);
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            frameLayout.setOnClickListener(new Fk(7, this));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2024;
            layoutParams.flags = 264;
            layoutParams.format = -3;
            layoutParams.width = 100;
            layoutParams.height = (int) (90 * getResources().getDisplayMetrics().density);
            layoutParams.gravity = 8388629;
            layoutParams.x = 0;
            layoutParams.y = 0;
            v().addView(frameLayout, layoutParams);
            this.m = frameLayout;
            this.l = textView;
            j();
            this.k.post(this.w0);
        } catch (Exception e) {
            Log.e("TopOverlayA11y", "Failed to show temp", e);
        }
    }

    public final Ja w() {
        return (Ja) this.a1.a();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [Nb, S9] */
    public final ArrayList w0() {
        List W = Z2.W(new Xk[]{this.U0, this.b1});
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) W).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((Boolean) ((Xk) next).c.d()).booleanValue()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public final List x0(String str) {
        Iterable iterable = this.e;
        if (iterable == null) {
            iterable = C0547v8.a;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            RemoteApp remoteApp = (RemoteApp) obj;
            if (AbstractC0348nb.g(remoteApp.getPackageName(), str) && remoteApp.getAvailable()) {
                arrayList.add(obj);
            }
        }
        return L4.A0(arrayList, new G0(7));
    }

    public final AbstractC0326mf y() {
        return (AbstractC0326mf) this.d1.a();
    }

    public final void y0() {
        C0658zj c0658zj;
        Y((this.T0 || this.g1 || ((c0658zj = this.C0) != null && (c0658zj.l != null || c0658zj.m))) ? false : true);
    }

    public final Ji z() {
        return (Ji) this.h.a();
    }

    public final void z0() {
        if (this.T0) {
            F();
            return;
        }
        Sb.a.getClass();
        if (Sb.a()) {
            a0();
        } else {
            M();
            m0();
        }
    }
}
