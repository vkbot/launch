package defpackage;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a;
import androidx.lifecycle.b;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: x9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractComponentCallbacksC0598x9 implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0039bc, InterfaceC0487sn, Ea, InterfaceC0631yh {
    public static final Object Q = new Object();
    public boolean A;
    public boolean C;
    public ViewGroup D;
    public View E;
    public boolean F;
    public C0573w9 H;
    public boolean I;
    public boolean J;
    public a L;
    public P9 M;
    public Q9 O;
    public final ArrayList P;
    public Bundle b;
    public SparseArray c;
    public Bundle d;
    public Bundle f;
    public AbstractComponentCallbacksC0598x9 g;
    public int i;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public J9 r;
    public C0623y9 s;
    public AbstractComponentCallbacksC0598x9 u;
    public int v;
    public int w;
    public String x;
    public boolean y;
    public boolean z;
    public int a = -1;
    public String e = UUID.randomUUID().toString();
    public String h = null;
    public Boolean j = null;
    public J9 t = new J9();
    public final boolean B = true;
    public boolean G = true;
    public Wb K = Wb.e;
    public final b N = new b();

    public AbstractComponentCallbacksC0598x9() {
        new AtomicInteger();
        this.P = new ArrayList();
        this.L = new a(this);
        this.O = new Q9(this);
    }

    public final void A(Bundle bundle) {
        J9 j9 = this.r;
        if (j9 != null && (j9.y || j9.z)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f = bundle;
    }

    @Override // defpackage.InterfaceC0631yh
    public final C0183h1 b() {
        return (C0183h1) this.O.c;
    }

    @Override // defpackage.InterfaceC0487sn
    public final C0462rn c() {
        if (this.r == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (i() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap hashMap = this.r.F.e;
        C0462rn c0462rn = (C0462rn) hashMap.get(this.e);
        if (c0462rn != null) {
            return c0462rn;
        }
        C0462rn c0462rn2 = new C0462rn();
        hashMap.put(this.e, c0462rn2);
        return c0462rn2;
    }

    @Override // defpackage.InterfaceC0039bc
    public final a d() {
        return this.L;
    }

    public AbstractC0348nb e() {
        return new C0548v9(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [w9, java.lang.Object] */
    public final C0573w9 f() {
        if (this.H == null) {
            ?? obj = new Object();
            Object obj2 = Q;
            obj.g = obj2;
            obj.h = obj2;
            obj.i = obj2;
            obj.j = 1.0f;
            obj.k = null;
            this.H = obj;
        }
        return this.H;
    }

    public final J9 g() {
        if (this.s != null) {
            return this.t;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Context h() {
        C0623y9 c0623y9 = this.s;
        if (c0623y9 == null) {
            return null;
        }
        return c0623y9.s;
    }

    public final int i() {
        Wb wb = this.K;
        return (wb == Wb.b || this.u == null) ? wb.ordinal() : Math.min(wb.ordinal(), this.u.i());
    }

    public final J9 j() {
        J9 j9 = this.r;
        if (j9 != null) {
            return j9;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final void k(int i, int i2, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void l(AbstractActivityC0028b1 abstractActivityC0028b1) {
        this.C = true;
        C0623y9 c0623y9 = this.s;
        if ((c0623y9 == null ? null : c0623y9.r) != null) {
            this.C = true;
        }
    }

    public void m(Bundle bundle) {
        this.C = true;
        y(bundle);
        J9 j9 = this.t;
        if (j9.m >= 1) {
            return;
        }
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(1);
    }

    public View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public void o() {
        this.C = true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.C = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        C0623y9 c0623y9 = this.s;
        AbstractActivityC0028b1 abstractActivityC0028b1 = c0623y9 == null ? null : c0623y9.r;
        if (abstractActivityC0028b1 != null) {
            abstractActivityC0028b1.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.C = true;
    }

    public void p() {
        this.C = true;
    }

    public LayoutInflater q(Bundle bundle) {
        C0623y9 c0623y9 = this.s;
        if (c0623y9 == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        AbstractActivityC0028b1 abstractActivityC0028b1 = c0623y9.v;
        LayoutInflater cloneInContext = abstractActivityC0028b1.getLayoutInflater().cloneInContext(abstractActivityC0028b1);
        cloneInContext.setFactory2(this.t.f);
        return cloneInContext;
    }

    public abstract void r(Bundle bundle);

    public void s() {
        this.C = true;
    }

    public void t() {
        this.C = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.e);
        if (this.v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.v));
        }
        if (this.x != null) {
            sb.append(" tag=");
            sb.append(this.x);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u(Bundle bundle) {
        this.C = true;
    }

    public void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.t.I();
        this.p = true;
        this.M = new P9(c());
        View n = n(layoutInflater, viewGroup);
        this.E = n;
        if (n == null) {
            if (this.M.b != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.M = null;
            return;
        }
        this.M.f();
        View view = this.E;
        P9 p9 = this.M;
        AbstractC0348nb.r(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, p9);
        View view2 = this.E;
        P9 p92 = this.M;
        AbstractC0348nb.r(view2, "<this>");
        view2.setTag(R.id.view_tree_view_model_store_owner, p92);
        View view3 = this.E;
        P9 p93 = this.M;
        AbstractC0348nb.r(view3, "<this>");
        view3.setTag(R.id.view_tree_saved_state_registry_owner, p93);
        this.N.e(this.M);
    }

    public final Context w() {
        Context h = h();
        if (h != null) {
            return h;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final View x() {
        View view = this.E;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final void y(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.t.N(parcelable);
        J9 j9 = this.t;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(1);
    }

    public final void z(int i, int i2, int i3, int i4) {
        if (this.H == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        f().b = i;
        f().c = i2;
        f().d = i3;
        f().e = i4;
    }
}
