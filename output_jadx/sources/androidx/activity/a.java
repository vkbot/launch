package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.SavedStateHandleAttacher;
import com.omoda.launcher.R;
import defpackage.AbstractActivityC0028b1;
import defpackage.AbstractC0152fm;
import defpackage.AbstractC0187h5;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0407pi;
import defpackage.AbstractC0421q6;
import defpackage.AbstractC0554vf;
import defpackage.C0161g5;
import defpackage.C0183h1;
import defpackage.C0213i5;
import defpackage.C0242j9;
import defpackage.C0380oh;
import defpackage.C0395p6;
import defpackage.C0453re;
import defpackage.C0462rn;
import defpackage.C0481sh;
import defpackage.C0506th;
import defpackage.Ea;
import defpackage.ExecutorC0238j5;
import defpackage.InterfaceC0039bc;
import defpackage.InterfaceC0487sn;
import defpackage.InterfaceC0606xh;
import defpackage.InterfaceC0631yh;
import defpackage.J2;
import defpackage.K1;
import defpackage.L5;
import defpackage.Lb;
import defpackage.O;
import defpackage.Q9;
import defpackage.Qe;
import defpackage.Qg;
import defpackage.S9;
import defpackage.Sg;
import defpackage.T7;
import defpackage.Vb;
import defpackage.Wb;
import defpackage.Zb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class a extends Activity implements InterfaceC0487sn, Ea, InterfaceC0631yh, InterfaceC0039bc, Lb {
    public androidx.lifecycle.a a = new androidx.lifecycle.a(this);
    public final L5 b = new L5();
    public final K1 c;
    public final androidx.lifecycle.a d;
    public final Q9 e;
    public C0462rn f;
    public b g;
    public final ExecutorC0238j5 h;
    public final Q9 i;
    public final C0161g5 j;
    public final CopyOnWriteArrayList k;
    public final CopyOnWriteArrayList l;
    public final CopyOnWriteArrayList m;
    public final CopyOnWriteArrayList n;
    public final CopyOnWriteArrayList o;

    /* JADX WARN: Type inference failed for: r6v0, types: [d5] */
    public a() {
        final AbstractActivityC0028b1 abstractActivityC0028b1 = (AbstractActivityC0028b1) this;
        this.c = new K1(new O(5, abstractActivityC0028b1));
        androidx.lifecycle.a aVar = new androidx.lifecycle.a(this);
        this.d = aVar;
        Q9 q9 = new Q9(this);
        this.e = q9;
        InterfaceC0606xh interfaceC0606xh = null;
        this.g = null;
        ExecutorC0238j5 executorC0238j5 = new ExecutorC0238j5(abstractActivityC0028b1);
        this.h = executorC0238j5;
        this.i = new Q9(executorC0238j5, new S9() { // from class: d5
            @Override // defpackage.S9
            public final Object d() {
                AbstractActivityC0028b1.this.reportFullyDrawn();
                return null;
            }
        });
        new AtomicInteger();
        this.j = new C0161g5();
        this.k = new CopyOnWriteArrayList();
        this.l = new CopyOnWriteArrayList();
        this.m = new CopyOnWriteArrayList();
        this.n = new CopyOnWriteArrayList();
        this.o = new CopyOnWriteArrayList();
        aVar.a(new Zb() { // from class: androidx.activity.ComponentActivity$2
            @Override // defpackage.Zb
            public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                if (vb == Vb.ON_STOP) {
                    Window window = AbstractActivityC0028b1.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        aVar.a(new Zb() { // from class: androidx.activity.ComponentActivity$3
            @Override // defpackage.Zb
            public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                if (vb == Vb.ON_DESTROY) {
                    AbstractActivityC0028b1.this.b.b = null;
                    if (!AbstractActivityC0028b1.this.isChangingConfigurations()) {
                        AbstractActivityC0028b1.this.c().a();
                    }
                    ExecutorC0238j5 executorC0238j52 = AbstractActivityC0028b1.this.h;
                    AbstractActivityC0028b1 abstractActivityC0028b12 = executorC0238j52.d;
                    abstractActivityC0028b12.getWindow().getDecorView().removeCallbacks(executorC0238j52);
                    abstractActivityC0028b12.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(executorC0238j52);
                }
            }
        });
        aVar.a(new Zb() { // from class: androidx.activity.ComponentActivity$4
            @Override // defpackage.Zb
            public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                AbstractActivityC0028b1 abstractActivityC0028b12 = AbstractActivityC0028b1.this;
                if (abstractActivityC0028b12.f == null) {
                    C0213i5 c0213i5 = (C0213i5) abstractActivityC0028b12.getLastNonConfigurationInstance();
                    if (c0213i5 != null) {
                        abstractActivityC0028b12.f = c0213i5.a;
                    }
                    if (abstractActivityC0028b12.f == null) {
                        abstractActivityC0028b12.f = new C0462rn();
                    }
                }
                abstractActivityC0028b12.d.f(this);
            }
        });
        q9.a();
        Wb wb = aVar.c;
        if (wb != Wb.b && wb != Wb.c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        C0183h1 c0183h1 = (C0183h1) q9.c;
        c0183h1.getClass();
        Iterator it = ((C0481sh) c0183h1.f).iterator();
        while (true) {
            C0380oh c0380oh = (C0380oh) it;
            if (!c0380oh.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) c0380oh.next();
            AbstractC0348nb.q(entry, "components");
            String str = (String) entry.getKey();
            InterfaceC0606xh interfaceC0606xh2 = (InterfaceC0606xh) entry.getValue();
            if (AbstractC0348nb.g(str, "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                interfaceC0606xh = interfaceC0606xh2;
                break;
            }
        }
        if (interfaceC0606xh == null) {
            C0506th c0506th = new C0506th((C0183h1) this.e.c, this);
            ((C0183h1) this.e.c).e("androidx.lifecycle.internal.SavedStateHandlesProvider", c0506th);
            this.d.a(new SavedStateHandleAttacher(c0506th));
        }
        ((C0183h1) this.e.c).e("android:support:activity-result", new InterfaceC0606xh() { // from class: e5
            @Override // defpackage.InterfaceC0606xh
            public final Bundle a() {
                AbstractActivityC0028b1 abstractActivityC0028b12 = AbstractActivityC0028b1.this;
                Bundle bundle = new Bundle();
                C0161g5 c0161g5 = abstractActivityC0028b12.j;
                c0161g5.getClass();
                HashMap hashMap = c0161g5.b;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(c0161g5.d));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) c0161g5.g.clone());
                return bundle;
            }
        });
        f(new Qe() { // from class: f5
            @Override // defpackage.Qe
            public final void a() {
                AbstractActivityC0028b1 abstractActivityC0028b12 = AbstractActivityC0028b1.this;
                Bundle c = ((C0183h1) abstractActivityC0028b12.e.c).c("android:support:activity-result");
                if (c != null) {
                    C0161g5 c0161g5 = abstractActivityC0028b12.j;
                    c0161g5.getClass();
                    ArrayList<Integer> integerArrayList = c.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    c0161g5.d = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    Bundle bundle = c.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                    Bundle bundle2 = c0161g5.g;
                    bundle2.putAll(bundle);
                    for (int i = 0; i < stringArrayList.size(); i++) {
                        String str2 = stringArrayList.get(i);
                        HashMap hashMap = c0161g5.b;
                        boolean containsKey = hashMap.containsKey(str2);
                        HashMap hashMap2 = c0161g5.a;
                        if (containsKey) {
                            Integer num = (Integer) hashMap.remove(str2);
                            if (!bundle2.containsKey(str2)) {
                                hashMap2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i);
                        num2.intValue();
                        String str3 = stringArrayList.get(i);
                        hashMap2.put(num2, str3);
                        hashMap.put(str3, num2);
                    }
                }
            }
        });
    }

    public static /* synthetic */ void e(a aVar) {
        super.onBackPressed();
    }

    @Override // defpackage.Ea
    public final AbstractC0421q6 a() {
        C0453re c0453re = new C0453re(C0395p6.b);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = c0453re.a;
        if (application != null) {
            linkedHashMap.put(T7.A, getApplication());
        }
        linkedHashMap.put(AbstractC0152fm.l, this);
        linkedHashMap.put(AbstractC0152fm.m, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(AbstractC0152fm.n, getIntent().getExtras());
        }
        return c0453re;
    }

    @Override // defpackage.InterfaceC0631yh
    public final C0183h1 b() {
        return (C0183h1) this.e.c;
    }

    @Override // defpackage.InterfaceC0487sn
    public final C0462rn c() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f == null) {
            C0213i5 c0213i5 = (C0213i5) getLastNonConfigurationInstance();
            if (c0213i5 != null) {
                this.f = c0213i5.a;
            }
            if (this.f == null) {
                this.f = new C0462rn();
            }
        }
        return this.f;
    }

    @Override // defpackage.InterfaceC0039bc
    public final androidx.lifecycle.a d() {
        return this.d;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public final void f(Qe qe) {
        L5 l5 = this.b;
        l5.getClass();
        if (l5.b != null) {
            qe.a();
        }
        l5.a.add(qe);
    }

    public final b g() {
        if (this.g == null) {
            this.g = new b(new J2(3, this));
            this.d.a(new Zb() { // from class: androidx.activity.ComponentActivity$6
                @Override // defpackage.Zb
                public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                    if (vb != Vb.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                        return;
                    }
                    b bVar = a.this.g;
                    OnBackInvokedDispatcher a = AbstractC0187h5.a((a) interfaceC0039bc);
                    bVar.getClass();
                    AbstractC0348nb.r(a, "invoker");
                    bVar.e = a;
                    bVar.c(bVar.g);
                }
            });
        }
        return this.g;
    }

    public final void h(Bundle bundle) {
        super.onCreate(bundle);
        int i = Sg.a;
        Qg.b(this);
    }

    public final void i(Bundle bundle) {
        androidx.lifecycle.a aVar = this.a;
        aVar.getClass();
        aVar.c("markState");
        aVar.g();
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.j.a(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        g().b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((C0242j9) it.next()).a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.e.b(bundle);
        L5 l5 = this.b;
        l5.getClass();
        l5.b = this;
        Iterator it = l5.a.iterator();
        while (it.hasNext()) {
            ((Qe) it.next()).a();
        }
        h(bundle);
        int i = Sg.a;
        Qg.b(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((C0242j9) it.next()).a(new T7(26));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((C0242j9) it.next()).a(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            ((C0242j9) it.next()).a(new T7(27));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.j.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, i5] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0213i5 c0213i5;
        C0462rn c0462rn = this.f;
        if (c0462rn == null && (c0213i5 = (C0213i5) getLastNonConfigurationInstance()) != null) {
            c0462rn = c0213i5.a;
        }
        if (c0462rn == null) {
            return null;
        }
        ?? obj = new Object();
        obj.a = c0462rn;
        return obj;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.a aVar = this.d;
        if (aVar != null) {
            aVar.g();
        }
        i(bundle);
        this.e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((C0242j9) it.next()).a(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (AbstractC0554vf.k()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            Q9 q9 = this.i;
            synchronized (q9.b) {
                try {
                    q9.a = true;
                    Iterator it = ((ArrayList) q9.c).iterator();
                    while (it.hasNext()) {
                        ((S9) it.next()).d();
                    }
                    ((ArrayList) q9.c).clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        View decorView = getWindow().getDecorView();
        AbstractC0348nb.r(decorView, "<this>");
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView3, "<this>");
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView4, "<this>");
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        AbstractC0348nb.r(decorView5, "<this>");
        decorView5.setTag(R.id.report_drawn, this);
        View decorView6 = getWindow().getDecorView();
        ExecutorC0238j5 executorC0238j5 = this.h;
        if (!executorC0238j5.c) {
            executorC0238j5.c = true;
            decorView6.getViewTreeObserver().addOnDrawListener(executorC0238j5);
        }
        super.setContentView(view);
    }
}
