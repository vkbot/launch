package defpackage;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* renamed from: b1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractActivityC0028b1 extends a implements InterfaceC0105e1 {
    public boolean r;
    public boolean s;
    public LayoutInflaterFactory2C0615y1 u;
    public final L p = new L(13, new C0623y9(this));
    public final androidx.lifecycle.a q = new androidx.lifecycle.a(this);
    public boolean t = true;

    public AbstractActivityC0028b1() {
        ((C0183h1) this.e.c).e("android:support:fragments", new Z0(this, 1));
        f(new C0002a1(this, 1));
        ((C0183h1) this.e.c).e("androidx:appcompat", new Z0(this, 0));
        f(new C0002a1(this, 0));
    }

    public static boolean l(J9 j9) {
        boolean z = false;
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : j9.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                C0623y9 c0623y9 = abstractComponentCallbacksC0598x9.s;
                if ((c0623y9 == null ? null : c0623y9.v) != null) {
                    z |= l(abstractComponentCallbacksC0598x9.g());
                }
                P9 p9 = abstractComponentCallbacksC0598x9.M;
                Wb wb = Wb.d;
                if (p9 != null) {
                    p9.f();
                    if (p9.b.c.compareTo(wb) >= 0) {
                        abstractComponentCallbacksC0598x9.M.b.g();
                        z = true;
                    }
                }
                if (abstractComponentCallbacksC0598x9.L.c.compareTo(wb) >= 0) {
                    abstractComponentCallbacksC0598x9.L.g();
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k();
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.w();
        ((ViewGroup) layoutInflaterFactory2C0615y1.A.findViewById(R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C0615y1.m.a(layoutInflaterFactory2C0615y1.l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.O = true;
        int i = layoutInflaterFactory2C0615y1.S;
        if (i == -100) {
            i = AbstractC0286l1.b;
        }
        int C = layoutInflaterFactory2C0615y1.C(context, i);
        if (AbstractC0286l1.c(context) && AbstractC0286l1.c(context)) {
            if (!F3.a()) {
                synchronized (AbstractC0286l1.i) {
                    try {
                        Ic ic = AbstractC0286l1.c;
                        if (ic == null) {
                            if (AbstractC0286l1.d == null) {
                                AbstractC0286l1.d = Ic.a(AbstractC0348nb.W(context));
                            }
                            if (!AbstractC0286l1.d.a.a.isEmpty()) {
                                AbstractC0286l1.c = AbstractC0286l1.d;
                            }
                        } else if (!ic.equals(AbstractC0286l1.d)) {
                            Ic ic2 = AbstractC0286l1.c;
                            AbstractC0286l1.d = ic2;
                            AbstractC0348nb.T(context, ic2.a.a.toLanguageTags());
                        }
                    } finally {
                    }
                }
            } else if (!AbstractC0286l1.f) {
                AbstractC0286l1.a.execute(new RunnableC0209i1(context, 0));
            }
        }
        Ic o = LayoutInflaterFactory2C0615y1.o(context);
        Configuration configuration = null;
        if (LayoutInflaterFactory2C0615y1.k0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(LayoutInflaterFactory2C0615y1.s(context, C, o, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof R5) {
            try {
                ((R5) context).a(LayoutInflaterFactory2C0615y1.s(context, C, o, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (LayoutInflaterFactory2C0615y1.j0) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f2 = configuration4.fontScale;
                    if (f != f2) {
                        configuration.fontScale = f2;
                    }
                    int i2 = configuration3.mcc;
                    int i3 = configuration4.mcc;
                    if (i2 != i3) {
                        configuration.mcc = i3;
                    }
                    int i4 = configuration3.mnc;
                    int i5 = configuration4.mnc;
                    if (i4 != i5) {
                        configuration.mnc = i5;
                    }
                    AbstractC0390p1.a(configuration3, configuration4, configuration);
                    int i6 = configuration3.touchscreen;
                    int i7 = configuration4.touchscreen;
                    if (i6 != i7) {
                        configuration.touchscreen = i7;
                    }
                    int i8 = configuration3.keyboard;
                    int i9 = configuration4.keyboard;
                    if (i8 != i9) {
                        configuration.keyboard = i9;
                    }
                    int i10 = configuration3.keyboardHidden;
                    int i11 = configuration4.keyboardHidden;
                    if (i10 != i11) {
                        configuration.keyboardHidden = i11;
                    }
                    int i12 = configuration3.navigation;
                    int i13 = configuration4.navigation;
                    if (i12 != i13) {
                        configuration.navigation = i13;
                    }
                    int i14 = configuration3.navigationHidden;
                    int i15 = configuration4.navigationHidden;
                    if (i14 != i15) {
                        configuration.navigationHidden = i15;
                    }
                    int i16 = configuration3.orientation;
                    int i17 = configuration4.orientation;
                    if (i16 != i17) {
                        configuration.orientation = i17;
                    }
                    int i18 = configuration3.screenLayout & 15;
                    int i19 = configuration4.screenLayout & 15;
                    if (i18 != i19) {
                        configuration.screenLayout |= i19;
                    }
                    int i20 = configuration3.screenLayout & 192;
                    int i21 = configuration4.screenLayout & 192;
                    if (i20 != i21) {
                        configuration.screenLayout |= i21;
                    }
                    int i22 = configuration3.screenLayout & 48;
                    int i23 = configuration4.screenLayout & 48;
                    if (i22 != i23) {
                        configuration.screenLayout |= i23;
                    }
                    int i24 = configuration3.screenLayout & 768;
                    int i25 = configuration4.screenLayout & 768;
                    if (i24 != i25) {
                        configuration.screenLayout |= i25;
                    }
                    int i26 = configuration3.colorMode & 3;
                    int i27 = configuration4.colorMode & 3;
                    if (i26 != i27) {
                        configuration.colorMode |= i27;
                    }
                    int i28 = configuration3.colorMode & 12;
                    int i29 = configuration4.colorMode & 12;
                    if (i28 != i29) {
                        configuration.colorMode |= i29;
                    }
                    int i30 = configuration3.uiMode & 15;
                    int i31 = configuration4.uiMode & 15;
                    if (i30 != i31) {
                        configuration.uiMode |= i31;
                    }
                    int i32 = configuration3.uiMode & 48;
                    int i33 = configuration4.uiMode & 48;
                    if (i32 != i33) {
                        configuration.uiMode |= i33;
                    }
                    int i34 = configuration3.screenWidthDp;
                    int i35 = configuration4.screenWidthDp;
                    if (i34 != i35) {
                        configuration.screenWidthDp = i35;
                    }
                    int i36 = configuration3.screenHeightDp;
                    int i37 = configuration4.screenHeightDp;
                    if (i36 != i37) {
                        configuration.screenHeightDp = i37;
                    }
                    int i38 = configuration3.smallestScreenWidthDp;
                    int i39 = configuration4.smallestScreenWidthDp;
                    if (i38 != i39) {
                        configuration.smallestScreenWidthDp = i39;
                    }
                    int i40 = configuration3.densityDpi;
                    int i41 = configuration4.densityDpi;
                    if (i40 != i41) {
                        configuration.densityDpi = i41;
                    }
                }
            }
            Configuration s = LayoutInflaterFactory2C0615y1.s(context, C, o, configuration, true);
            R5 r5 = new R5(context, com.omoda.launcher.R.style.Theme_AppCompat_Empty);
            r5.a(s);
            try {
                if (context.getTheme() != null) {
                    AbstractC0121eh.a(r5.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = r5;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((LayoutInflaterFactory2C0615y1) j()).A();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((LayoutInflaterFactory2C0615y1) j()).A();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.r);
        printWriter.print(" mResumed=");
        printWriter.print(this.s);
        printWriter.print(" mStopped=");
        printWriter.print(this.t);
        if (getApplication() != null) {
            new K1(this, c()).u(str2, printWriter);
        }
        ((C0623y9) this.p.b).u.u(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.w();
        return layoutInflaterFactory2C0615y1.l.findViewById(i);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        if (layoutInflaterFactory2C0615y1.p == null) {
            layoutInflaterFactory2C0615y1.A();
            C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
            layoutInflaterFactory2C0615y1.p = new C0046bj(c0128eo != null ? c0128eo.V() : layoutInflaterFactory2C0615y1.k);
        }
        return layoutInflaterFactory2C0615y1.p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = Gm.a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        j().b();
    }

    public final AbstractC0286l1 j() {
        if (this.u == null) {
            E2 e2 = AbstractC0286l1.a;
            this.u = new LayoutInflaterFactory2C0615y1(this, null, this, this);
        }
        return this.u;
    }

    public final void k() {
        View decorView = getWindow().getDecorView();
        AbstractC0348nb.r(decorView, "<this>");
        decorView.setTag(com.omoda.launcher.R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView2, "<this>");
        decorView2.setTag(com.omoda.launcher.R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView3, "<this>");
        decorView3.setTag(com.omoda.launcher.R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView4, "<this>");
        decorView4.setTag(com.omoda.launcher.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    public final void m(Configuration configuration) {
        L l = this.p;
        l.w();
        super.onConfigurationChanged(configuration);
        ((C0623y9) l.b).u.h();
    }

    public final void n() {
        super.onDestroy();
        ((C0623y9) this.p.b).u.k();
        this.q.d(Vb.ON_DESTROY);
    }

    public final boolean o(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        L l = this.p;
        if (i == 0) {
            return ((C0623y9) l.b).u.n();
        }
        if (i != 6) {
            return false;
        }
        return ((C0623y9) l.b).u.i();
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        this.p.w();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        m(configuration);
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        if (layoutInflaterFactory2C0615y1.F && layoutInflaterFactory2C0615y1.z) {
            layoutInflaterFactory2C0615y1.A();
            C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
            if (c0128eo != null) {
                c0128eo.Y(c0128eo.q.getResources().getBoolean(com.omoda.launcher.R.bool.abc_action_bar_embed_tabs));
            }
        }
        B1 a = B1.a();
        Context context = layoutInflaterFactory2C0615y1.k;
        synchronized (a) {
            Yg yg = a.a;
            synchronized (yg) {
                Qc qc = (Qc) yg.b.get(context);
                if (qc != null) {
                    qc.a();
                }
            }
        }
        layoutInflaterFactory2C0615y1.R = new Configuration(layoutInflaterFactory2C0615y1.k.getResources().getConfiguration());
        layoutInflaterFactory2C0615y1.m(false, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.activity.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.q.d(Vb.ON_CREATE);
        J9 j9 = ((C0623y9) this.p.b).u;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(1);
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            super.onCreatePanelMenu(i, menu);
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        getMenuInflater();
        ((C0623y9) this.p.b).u.j();
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((C0623y9) this.p.b).u.f.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        n();
        j().f();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        ((C0623y9) this.p.b).u.l();
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent E;
        if (o(i, menuItem)) {
            return true;
        }
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.A();
        C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
        if (menuItem.getItemId() == 16908332 && c0128eo != null && (((Dk) c0128eo.u).b & 4) != 0 && (E = AbstractC0348nb.E(this)) != null) {
            if (!AbstractC0503te.c(this, E)) {
                AbstractC0503te.b(this, E);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent E2 = AbstractC0348nb.E(this);
            if (E2 == null) {
                E2 = AbstractC0348nb.E(this);
            }
            if (E2 != null) {
                ComponentName component = E2.getComponent();
                if (component == null) {
                    component = E2.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent F = AbstractC0348nb.F(this, component);
                    while (F != null) {
                        arrayList.add(size, F);
                        F = AbstractC0348nb.F(this, F.getComponent());
                    }
                    arrayList.add(E2);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            M5.a(this, intentArr, null);
            try {
                AbstractC0464s0.a(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        ((C0623y9) this.p.b).u.m(z);
    }

    @Override // androidx.activity.a, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.p.w();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        p(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.s = false;
        ((C0623y9) this.p.b).u.s(5);
        this.q.d(Vb.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        ((C0623y9) this.p.b).u.q(z);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((LayoutInflaterFactory2C0615y1) j()).w();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        q();
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.A();
        C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
        if (c0128eo != null) {
            c0128eo.J = true;
        }
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            super.onPreparePanel(i, view, menu);
            return true;
        }
        super.onPreparePanel(0, view, menu);
        ((C0623y9) this.p.b).u.r();
        return true;
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.p.w();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        L l = this.p;
        l.w();
        super.onResume();
        this.s = true;
        ((C0623y9) l.b).u.x(true);
    }

    @Override // android.app.Activity
    public final void onStart() {
        r();
        ((LayoutInflaterFactory2C0615y1) j()).m(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.p.w();
    }

    @Override // android.app.Activity
    public final void onStop() {
        s();
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) j();
        layoutInflaterFactory2C0615y1.A();
        C0128eo c0128eo = layoutInflaterFactory2C0615y1.o;
        if (c0128eo != null) {
            c0128eo.J = false;
            C0612xn c0612xn = c0128eo.I;
            if (c0612xn != null) {
                c0612xn.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        j().l(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((LayoutInflaterFactory2C0615y1) j()).A();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final void p(int i, Menu menu) {
        if (i == 0) {
            ((C0623y9) this.p.b).u.o();
        }
        super.onPanelClosed(i, menu);
    }

    public final void q() {
        super.onPostResume();
        this.q.d(Vb.ON_RESUME);
        J9 j9 = ((C0623y9) this.p.b).u;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(7);
    }

    public final void r() {
        L l = this.p;
        l.w();
        super.onStart();
        this.t = false;
        boolean z = this.r;
        C0623y9 c0623y9 = (C0623y9) l.b;
        if (!z) {
            this.r = true;
            J9 j9 = c0623y9.u;
            j9.y = false;
            j9.z = false;
            j9.F.h = false;
            j9.s(4);
        }
        c0623y9.u.x(true);
        this.q.d(Vb.ON_START);
        J9 j92 = c0623y9.u;
        j92.y = false;
        j92.z = false;
        j92.F.h = false;
        j92.s(5);
    }

    public final void s() {
        L l;
        super.onStop();
        this.t = true;
        do {
            l = this.p;
        } while (l(((C0623y9) l.b).u));
        J9 j9 = ((C0623y9) l.b).u;
        j9.z = true;
        j9.F.h = true;
        j9.s(4);
        this.q.d(Vb.ON_STOP);
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        k();
        j().i(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((LayoutInflaterFactory2C0615y1) j()).T = i;
    }

    @Override // androidx.activity.a, android.app.Activity
    public void setContentView(View view) {
        k();
        j().j(view);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((C0623y9) this.p.b).u.f.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k();
        j().k(view, layoutParams);
    }
}
