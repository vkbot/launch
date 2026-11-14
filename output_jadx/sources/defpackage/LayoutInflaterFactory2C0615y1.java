package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;

/* renamed from: y1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class LayoutInflaterFactory2C0615y1 extends AbstractC0286l1 implements Jd, LayoutInflater.Factory2 {
    public static final C0277ki h0 = new C0277ki();
    public static final int[] i0 = {R.attr.windowBackground};
    public static final boolean j0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean k0 = true;
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public C0590x1[] L;
    public C0590x1 M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public final int S;
    public int T;
    public int U;
    public boolean V;
    public C0490t1 W;
    public C0490t1 X;
    public boolean Y;
    public int Z;
    public boolean b0;
    public Rect c0;
    public Rect d0;
    public C0466s2 e0;
    public OnBackInvokedDispatcher f0;
    public OnBackInvokedCallback g0;
    public final Object j;
    public final Context k;
    public Window l;
    public WindowCallbackC0465s1 m;
    public final Object n;
    public C0128eo o;
    public C0046bj p;
    public CharSequence q;
    public D6 r;
    public C0338n1 s;
    public C0338n1 t;
    public AbstractC0389p0 u;
    public ActionBarContextView v;
    public PopupWindow w;
    public RunnableC0312m1 x;
    public boolean z;
    public C0587wn y = null;
    public final RunnableC0312m1 a0 = new RunnableC0312m1(this, 0);

    public LayoutInflaterFactory2C0615y1(Context context, Window window, InterfaceC0105e1 interfaceC0105e1, Object obj) {
        AbstractActivityC0028b1 abstractActivityC0028b1;
        this.S = -100;
        this.k = context;
        this.j = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AbstractActivityC0028b1)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    abstractActivityC0028b1 = (AbstractActivityC0028b1) context;
                    break;
                }
            }
            abstractActivityC0028b1 = null;
            if (abstractActivityC0028b1 != null) {
                this.S = ((LayoutInflaterFactory2C0615y1) abstractActivityC0028b1.j()).S;
            }
        }
        if (this.S == -100) {
            C0277ki c0277ki = h0;
            Integer num = (Integer) c0277ki.getOrDefault(this.j.getClass().getName(), null);
            if (num != null) {
                this.S = num.intValue();
                c0277ki.remove(this.j.getClass().getName());
            }
        }
        if (window != null) {
            n(window);
        }
        B1.d();
    }

    public static Ic o(Context context) {
        Ic ic;
        Ic ic2;
        if (Build.VERSION.SDK_INT >= 33 || (ic = AbstractC0286l1.c) == null) {
            return null;
        }
        Ic b = AbstractC0390p1.b(context.getApplicationContext().getResources().getConfiguration());
        Jc jc = ic.a;
        if (jc.a.isEmpty()) {
            ic2 = Ic.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = 0;
            while (i < b.a.a.size() + jc.a.size()) {
                Locale locale = i < jc.a.size() ? jc.a.get(i) : b.a.a.get(i - jc.a.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i++;
            }
            ic2 = new Ic(new Jc(Hc.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]))));
        }
        return ic2.a.a.isEmpty() ? b : ic2;
    }

    public static Configuration s(Context context, int i, Ic ic, Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (ic != null) {
            AbstractC0390p1.d(configuration2, ic);
        }
        return configuration2;
    }

    public final void A() {
        w();
        if (this.F && this.o == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                this.o = new C0128eo((Activity) obj, this.G);
            } else if (obj instanceof Dialog) {
                this.o = new C0128eo((Dialog) obj);
            }
            C0128eo c0128eo = this.o;
            if (c0128eo != null) {
                c0128eo.X(this.b0);
            }
        }
    }

    public final void B(int i) {
        this.Z = (1 << i) | this.Z;
        if (this.Y) {
            return;
        }
        View decorView = this.l.getDecorView();
        RunnableC0312m1 runnableC0312m1 = this.a0;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Rm.m(decorView, runnableC0312m1);
        this.Y = true;
    }

    public final int C(Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return y(context).f();
            }
            if (i != 1 && i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.X == null) {
                    this.X = new C0490t1(this, context);
                }
                return this.X.f();
            }
        }
        return i;
    }

    public final boolean D() {
        E6 e6;
        C0634yk c0634yk;
        boolean z = this.N;
        this.N = false;
        C0590x1 z2 = z(0);
        if (z2.m) {
            if (!z) {
                r(z2, true);
            }
            return true;
        }
        AbstractC0389p0 abstractC0389p0 = this.u;
        if (abstractC0389p0 != null) {
            abstractC0389p0.a();
            return true;
        }
        A();
        C0128eo c0128eo = this.o;
        if (c0128eo == null || (e6 = c0128eo.u) == null || (c0634yk = ((Dk) e6).a.L) == null || c0634yk.b == null) {
            return false;
        }
        C0634yk c0634yk2 = ((Dk) e6).a.L;
        Pd pd = c0634yk2 == null ? null : c0634yk2.b;
        if (pd != null) {
            pd.collapseActionView();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0173, code lost:
    
        if (r3.f.getCount() > 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0153, code lost:
    
        if (r3 != null) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(defpackage.C0590x1 r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.E(x1, android.view.KeyEvent):void");
    }

    public final boolean F(C0590x1 c0590x1, int i, KeyEvent keyEvent) {
        Ld ld;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c0590x1.k || G(c0590x1, keyEvent)) && (ld = c0590x1.h) != null) {
            return ld.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    public final boolean G(C0590x1 c0590x1, KeyEvent keyEvent) {
        D6 d6;
        D6 d62;
        Resources.Theme theme;
        D6 d63;
        D6 d64;
        if (this.Q) {
            return false;
        }
        if (c0590x1.k) {
            return true;
        }
        C0590x1 c0590x12 = this.M;
        if (c0590x12 != null && c0590x12 != c0590x1) {
            r(c0590x12, false);
        }
        Window.Callback callback = this.l.getCallback();
        int i = c0590x1.a;
        if (callback != null) {
            c0590x1.g = callback.onCreatePanelView(i);
        }
        boolean z = i == 0 || i == 108;
        if (z && (d64 = this.r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) d64;
            actionBarOverlayLayout.k();
            ((Dk) actionBarOverlayLayout.e).l = true;
        }
        if (c0590x1.g == null) {
            Ld ld = c0590x1.h;
            if (ld == null || c0590x1.o) {
                if (ld == null) {
                    Context context = this.k;
                    if ((i == 0 || i == 108) && this.r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(com.omoda.launcher.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(com.omoda.launcher.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(com.omoda.launcher.R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            R5 r5 = new R5(context, 0);
                            r5.getTheme().setTo(theme);
                            context = r5;
                        }
                    }
                    Ld ld2 = new Ld(context);
                    ld2.e = this;
                    Ld ld3 = c0590x1.h;
                    if (ld2 != ld3) {
                        if (ld3 != null) {
                            ld3.r(c0590x1.i);
                        }
                        c0590x1.h = ld2;
                        C0501tc c0501tc = c0590x1.i;
                        if (c0501tc != null) {
                            ld2.b(c0501tc, ld2.a);
                        }
                    }
                    if (c0590x1.h == null) {
                        return false;
                    }
                }
                if (z && (d62 = this.r) != null) {
                    if (this.s == null) {
                        this.s = new C0338n1(this, 2);
                    }
                    ((ActionBarOverlayLayout) d62).l(c0590x1.h, this.s);
                }
                c0590x1.h.w();
                if (!callback.onCreatePanelMenu(i, c0590x1.h)) {
                    Ld ld4 = c0590x1.h;
                    if (ld4 != null) {
                        if (ld4 != null) {
                            ld4.r(c0590x1.i);
                        }
                        c0590x1.h = null;
                    }
                    if (z && (d6 = this.r) != null) {
                        ((ActionBarOverlayLayout) d6).l(null, this.s);
                    }
                    return false;
                }
                c0590x1.o = false;
            }
            c0590x1.h.w();
            Bundle bundle = c0590x1.p;
            if (bundle != null) {
                c0590x1.h.s(bundle);
                c0590x1.p = null;
            }
            if (!callback.onPreparePanel(0, c0590x1.g, c0590x1.h)) {
                if (z && (d63 = this.r) != null) {
                    ((ActionBarOverlayLayout) d63).l(null, this.s);
                }
                c0590x1.h.v();
                return false;
            }
            c0590x1.h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            c0590x1.h.v();
        }
        c0590x1.k = true;
        c0590x1.l = false;
        this.M = c0590x1;
        return true;
    }

    public final void H() {
        if (this.z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void I() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.f0 != null && (z(0).m || this.u != null)) {
                z = true;
            }
            if (z && this.g0 == null) {
                this.g0 = AbstractC0440r1.b(this.f0, this);
            } else {
                if (z || (onBackInvokedCallback = this.g0) == null) {
                    return;
                }
                AbstractC0440r1.c(this.f0, onBackInvokedCallback);
            }
        }
    }

    @Override // defpackage.AbstractC0286l1
    public final void a() {
        LayoutInflater from = LayoutInflater.from(this.k);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            if (from.getFactory2() instanceof LayoutInflaterFactory2C0615y1) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // defpackage.AbstractC0286l1
    public final void b() {
        if (this.o != null) {
            A();
            this.o.getClass();
            B(0);
        }
    }

    @Override // defpackage.Jd
    public final boolean d(Ld ld, MenuItem menuItem) {
        C0590x1 c0590x1;
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            Ld k = ld.k();
            C0590x1[] c0590x1Arr = this.L;
            int length = c0590x1Arr != null ? c0590x1Arr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    c0590x1 = c0590x1Arr[i];
                    if (c0590x1 != null && c0590x1.h == k) {
                        break;
                    }
                    i++;
                } else {
                    c0590x1 = null;
                    break;
                }
            }
            if (c0590x1 != null) {
                return callback.onMenuItemSelected(c0590x1.a, menuItem);
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0286l1
    public final void e() {
        String str;
        this.O = true;
        m(false, true);
        x();
        Object obj = this.j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = AbstractC0348nb.G(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                C0128eo c0128eo = this.o;
                if (c0128eo == null) {
                    this.b0 = true;
                } else {
                    c0128eo.X(true);
                }
            }
            synchronized (AbstractC0286l1.h) {
                AbstractC0286l1.g(this);
                AbstractC0286l1.g.add(new WeakReference(this));
            }
        }
        this.R = new Configuration(this.k.getResources().getConfiguration());
        this.P = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.AbstractC0286l1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = defpackage.AbstractC0286l1.h
            monitor-enter(r0)
            defpackage.AbstractC0286l1.g(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r3
        L11:
            boolean r0 = r3.Y
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.l
            android.view.View r0 = r0.getDecorView()
            m1 r1 = r3.a0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.Q = r0
            int r0 = r3.S
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            ki r0 = defpackage.LayoutInflaterFactory2C0615y1.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            ki r0 = defpackage.LayoutInflaterFactory2C0615y1.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            t1 r0 = r3.W
            if (r0 == 0) goto L63
            r0.c()
        L63:
            t1 r3 = r3.X
            if (r3 == 0) goto L6a
            r3.c()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.f():void");
    }

    @Override // defpackage.AbstractC0286l1
    public final boolean h(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.J && i == 108) {
            return false;
        }
        if (this.F && i == 1) {
            this.F = false;
        }
        if (i == 1) {
            H();
            this.J = true;
            return true;
        }
        if (i == 2) {
            H();
            this.D = true;
            return true;
        }
        if (i == 5) {
            H();
            this.E = true;
            return true;
        }
        if (i == 10) {
            H();
            this.H = true;
            return true;
        }
        if (i == 108) {
            H();
            this.F = true;
            return true;
        }
        if (i != 109) {
            return this.l.requestFeature(i);
        }
        H();
        this.G = true;
        return true;
    }

    @Override // defpackage.AbstractC0286l1
    public final void i(int i) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.k).inflate(i, viewGroup);
        this.m.a(this.l.getCallback());
    }

    @Override // defpackage.AbstractC0286l1
    public final void j(View view) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.m.a(this.l.getCallback());
    }

    @Override // defpackage.AbstractC0286l1
    public final void k(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.m.a(this.l.getCallback());
    }

    @Override // defpackage.AbstractC0286l1
    public final void l(CharSequence charSequence) {
        this.q = charSequence;
        D6 d6 = this.r;
        if (d6 != null) {
            d6.setWindowTitle(charSequence);
            return;
        }
        C0128eo c0128eo = this.o;
        if (c0128eo == null) {
            TextView textView = this.B;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        Dk dk = (Dk) c0128eo.u;
        if (dk.g) {
            return;
        }
        dk.h = charSequence;
        if ((dk.b & 8) != 0) {
            Toolbar toolbar = dk.a;
            toolbar.setTitle(charSequence);
            if (dk.g) {
                AbstractC0205hn.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m(boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.m(boolean, boolean):boolean");
    }

    public final void n(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof WindowCallbackC0465s1) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        WindowCallbackC0465s1 windowCallbackC0465s1 = new WindowCallbackC0465s1(this, callback);
        this.m = windowCallbackC0465s1;
        window.setCallback(windowCallbackC0465s1);
        int[] iArr = i0;
        Context context = this.k;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            B1 a = B1.a();
            synchronized (a) {
                drawable = a.a.d(context, resourceId, true);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.l = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f0) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.g0) != null) {
            AbstractC0440r1.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.g0 = null;
        }
        Object obj = this.j;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f0 = AbstractC0440r1.a(activity);
                I();
            }
        }
        this.f0 = null;
        I();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x010a, code lost:
    
        if (r11.equals("ImageButton") == false) goto L24;
     */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r10, java.lang.String r11, android.content.Context r12, android.util.AttributeSet r13) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    public final void p(int i, C0590x1 c0590x1, Ld ld) {
        if (ld == null) {
            if (c0590x1 == null && i >= 0) {
                C0590x1[] c0590x1Arr = this.L;
                if (i < c0590x1Arr.length) {
                    c0590x1 = c0590x1Arr[i];
                }
            }
            if (c0590x1 != null) {
                ld = c0590x1.h;
            }
        }
        if ((c0590x1 == null || c0590x1.m) && !this.Q) {
            WindowCallbackC0465s1 windowCallbackC0465s1 = this.m;
            Window.Callback callback = this.l.getCallback();
            windowCallbackC0465s1.getClass();
            try {
                windowCallbackC0465s1.d = true;
                callback.onPanelClosed(i, ld);
            } finally {
                windowCallbackC0465s1.d = false;
            }
        }
    }

    public final void q(Ld ld) {
        C0285l0 c0285l0;
        if (this.K) {
            return;
        }
        this.K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((Dk) actionBarOverlayLayout.e).a.a;
        if (actionMenuView != null && (c0285l0 = actionMenuView.t) != null) {
            c0285l0.e();
            C0182h0 c0182h0 = c0285l0.t;
            if (c0182h0 != null && c0182h0.b()) {
                c0182h0.i.dismiss();
            }
        }
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            callback.onPanelClosed(108, ld);
        }
        this.K = false;
    }

    public final void r(C0590x1 c0590x1, boolean z) {
        C0565w1 c0565w1;
        D6 d6;
        C0285l0 c0285l0;
        if (z && c0590x1.a == 0 && (d6 = this.r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) d6;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((Dk) actionBarOverlayLayout.e).a.a;
            if (actionMenuView != null && (c0285l0 = actionMenuView.t) != null && c0285l0.h()) {
                q(c0590x1.h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.k.getSystemService("window");
        if (windowManager != null && c0590x1.m && (c0565w1 = c0590x1.e) != null) {
            windowManager.removeView(c0565w1);
            if (z) {
                p(c0590x1.a, c0590x1, null);
            }
        }
        c0590x1.k = false;
        c0590x1.l = false;
        c0590x1.m = false;
        c0590x1.f = null;
        c0590x1.n = true;
        if (this.M == c0590x1) {
            this.M = null;
        }
        if (c0590x1.a == 0) {
            I();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r6.h() != false) goto L20;
     */
    @Override // defpackage.Jd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(defpackage.Ld r6) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.t(Ld):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d6, code lost:
    
        if (r6.e() != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00fc, code lost:
    
        if (r6.l() != false) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean u(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.u(android.view.KeyEvent):boolean");
    }

    public final void v(int i) {
        C0590x1 z = z(i);
        if (z.h != null) {
            Bundle bundle = new Bundle();
            z.h.t(bundle);
            if (bundle.size() > 0) {
                z.p = bundle;
            }
            z.h.w();
            z.h.clear();
        }
        z.o = true;
        z.n = true;
        if ((i == 108 || i == 0) && this.r != null) {
            C0590x1 z2 = z(0);
            z2.k = false;
            G(z2, null);
        }
    }

    public final void w() {
        ViewGroup viewGroup;
        int i = 1;
        int i2 = 0;
        if (this.z) {
            return;
        }
        int[] iArr = Zf.j;
        Context context = this.k;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            h(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            h(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            h(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            h(10);
        }
        this.I = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        x();
        this.l.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.J) {
            viewGroup = this.H ? (ViewGroup) from.inflate(com.omoda.launcher.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(com.omoda.launcher.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.I) {
            viewGroup = (ViewGroup) from.inflate(com.omoda.launcher.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.G = false;
            this.F = false;
        } else if (this.F) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.omoda.launcher.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new R5(context, typedValue.resourceId) : context).inflate(com.omoda.launcher.R.layout.abc_screen_toolbar, (ViewGroup) null);
            D6 d6 = (D6) viewGroup.findViewById(com.omoda.launcher.R.id.decor_content_parent);
            this.r = d6;
            d6.setWindowCallback(this.l.getCallback());
            if (this.G) {
                ((ActionBarOverlayLayout) this.r).j(109);
            }
            if (this.D) {
                ((ActionBarOverlayLayout) this.r).j(2);
            }
            if (this.E) {
                ((ActionBarOverlayLayout) this.r).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.F + ", windowActionBarOverlay: " + this.G + ", android:windowIsFloating: " + this.I + ", windowActionModeOverlay: " + this.H + ", windowNoTitle: " + this.J + " }");
        }
        C0338n1 c0338n1 = new C0338n1(this, i2);
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Xm.u(viewGroup, c0338n1);
        if (this.r == null) {
            this.B = (TextView) viewGroup.findViewById(com.omoda.launcher.R.id.title);
        }
        Method method = Dn.a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException e) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.omoda.launcher.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new C0338n1(this, i));
        this.A = viewGroup;
        Object obj = this.j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.q;
        if (!TextUtils.isEmpty(title)) {
            D6 d62 = this.r;
            if (d62 != null) {
                d62.setWindowTitle(title);
            } else {
                C0128eo c0128eo = this.o;
                if (c0128eo != null) {
                    Dk dk = (Dk) c0128eo.u;
                    if (!dk.g) {
                        dk.h = title;
                        if ((dk.b & 8) != 0) {
                            Toolbar toolbar = dk.a;
                            toolbar.setTitle(title);
                            if (dk.g) {
                                AbstractC0205hn.i(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.B;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.A.findViewById(R.id.content);
        View decorView = this.l.getDecorView();
        contentFrameLayout2.g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = AbstractC0205hn.a;
        if (Um.c(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (obtainStyledAttributes2.hasValue(122)) {
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.z = true;
        C0590x1 z = z(0);
        if (this.Q || z.h != null) {
            return;
        }
        B(108);
    }

    public final void x() {
        if (this.l == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                n(((Activity) obj).getWindow());
            }
        }
        if (this.l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, t2] */
    public final AbstractC0540v1 y(Context context) {
        if (this.W == null) {
            if (C0491t2.f == null) {
                Context applicationContext = context.getApplicationContext();
                LocationManager locationManager = (LocationManager) applicationContext.getSystemService("location");
                ?? obj = new Object();
                obj.b = new Object();
                obj.c = applicationContext;
                obj.a = locationManager;
                C0491t2.f = obj;
            }
            this.W = new C0490t1(this, C0491t2.f);
        }
        return this.W;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r2 <= r5) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [x1, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C0590x1 z(int r5) {
        /*
            r4 = this;
            x1[] r0 = r4.L
            r1 = 0
            if (r0 == 0) goto L8
            int r2 = r0.length
            if (r2 > r5) goto L15
        L8:
            int r2 = r5 + 1
            x1[] r2 = new defpackage.C0590x1[r2]
            if (r0 == 0) goto L12
            int r3 = r0.length
            java.lang.System.arraycopy(r0, r1, r2, r1, r3)
        L12:
            r4.L = r2
            r0 = r2
        L15:
            r4 = r0[r5]
            if (r4 != 0) goto L24
            x1 r4 = new x1
            r4.<init>()
            r4.a = r5
            r4.n = r1
            r0[r5] = r4
        L24:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LayoutInflaterFactory2C0615y1.z(int):x1");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
