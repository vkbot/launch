package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.omoda.launcher.R;
import defpackage.AbstractC0205hn;
import defpackage.AbstractC0407pi;
import defpackage.AbstractComponentCallbacksC0598x9;
import defpackage.C0462rn;
import defpackage.C0491t2;
import defpackage.C0507ti;
import defpackage.C0557vi;
import defpackage.C0573w9;
import defpackage.C0623y9;
import defpackage.E9;
import defpackage.Fc;
import defpackage.InterfaceC0039bc;
import defpackage.J9;
import defpackage.K1;
import defpackage.L9;
import defpackage.M9;
import defpackage.N9;
import defpackage.P9;
import defpackage.Q9;
import defpackage.Um;
import defpackage.V3;
import defpackage.Vb;
import defpackage.Vm;
import defpackage.Wb;
import defpackage.Z6;
import defpackage.Zb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a {
    public final K1 a;
    public final C0491t2 b;
    public final AbstractComponentCallbacksC0598x9 c;
    public boolean d = false;
    public int e = -1;

    public a(K1 k1, C0491t2 c0491t2, AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        this.a = k1;
        this.b = c0491t2;
        this.c = abstractComponentCallbacksC0598x9;
    }

    public final void a() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + abstractComponentCallbacksC0598x9);
        }
        Bundle bundle = abstractComponentCallbacksC0598x9.b;
        abstractComponentCallbacksC0598x9.t.I();
        abstractComponentCallbacksC0598x9.a = 3;
        abstractComponentCallbacksC0598x9.C = true;
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + abstractComponentCallbacksC0598x9);
        }
        View view = abstractComponentCallbacksC0598x9.E;
        if (view != null) {
            Bundle bundle2 = abstractComponentCallbacksC0598x9.b;
            SparseArray<Parcelable> sparseArray = abstractComponentCallbacksC0598x9.c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                abstractComponentCallbacksC0598x9.c = null;
            }
            if (abstractComponentCallbacksC0598x9.E != null) {
                abstractComponentCallbacksC0598x9.M.c.b(abstractComponentCallbacksC0598x9.d);
                abstractComponentCallbacksC0598x9.d = null;
            }
            abstractComponentCallbacksC0598x9.C = false;
            abstractComponentCallbacksC0598x9.u(bundle2);
            if (!abstractComponentCallbacksC0598x9.C) {
                throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onViewStateRestored()");
            }
            if (abstractComponentCallbacksC0598x9.E != null) {
                abstractComponentCallbacksC0598x9.M.e(Vb.ON_CREATE);
            }
        }
        abstractComponentCallbacksC0598x9.b = null;
        J9 j9 = abstractComponentCallbacksC0598x9.t;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(4);
        this.a.f(false);
    }

    public final void b() {
        View view;
        View view2;
        C0491t2 c0491t2 = this.b;
        c0491t2.getClass();
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        int i = -1;
        if (viewGroup != null) {
            ArrayList arrayList = (ArrayList) c0491t2.b;
            int indexOf = arrayList.indexOf(abstractComponentCallbacksC0598x9);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) arrayList.get(indexOf);
                        if (abstractComponentCallbacksC0598x92.D == viewGroup && (view = abstractComponentCallbacksC0598x92.E) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = (AbstractComponentCallbacksC0598x9) arrayList.get(i2);
                    if (abstractComponentCallbacksC0598x93.D == viewGroup && (view2 = abstractComponentCallbacksC0598x93.E) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        abstractComponentCallbacksC0598x9.D.addView(abstractComponentCallbacksC0598x9.E, i);
    }

    public final void c() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + abstractComponentCallbacksC0598x9);
        }
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = abstractComponentCallbacksC0598x9.g;
        C0491t2 c0491t2 = this.b;
        a aVar = null;
        if (abstractComponentCallbacksC0598x92 != null) {
            a aVar2 = (a) ((HashMap) c0491t2.a).get(abstractComponentCallbacksC0598x92.e);
            if (aVar2 == null) {
                throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0598x9 + " declared target fragment " + abstractComponentCallbacksC0598x9.g + " that does not belong to this FragmentManager!");
            }
            abstractComponentCallbacksC0598x9.h = abstractComponentCallbacksC0598x9.g.e;
            abstractComponentCallbacksC0598x9.g = null;
            aVar = aVar2;
        } else {
            String str = abstractComponentCallbacksC0598x9.h;
            if (str != null && (aVar = (a) ((HashMap) c0491t2.a).get(str)) == null) {
                throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0598x9 + " declared target fragment " + abstractComponentCallbacksC0598x9.h + " that does not belong to this FragmentManager!");
            }
        }
        if (aVar != null) {
            aVar.k();
        }
        J9 j9 = abstractComponentCallbacksC0598x9.r;
        abstractComponentCallbacksC0598x9.s = j9.n;
        abstractComponentCallbacksC0598x9.u = j9.p;
        K1 k1 = this.a;
        k1.m(false);
        ArrayList arrayList = abstractComponentCallbacksC0598x9.P;
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        arrayList.clear();
        abstractComponentCallbacksC0598x9.t.b(abstractComponentCallbacksC0598x9.s, abstractComponentCallbacksC0598x9.e(), abstractComponentCallbacksC0598x9);
        abstractComponentCallbacksC0598x9.a = 0;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.l(abstractComponentCallbacksC0598x9.s.s);
        if (!abstractComponentCallbacksC0598x9.C) {
            throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onAttach()");
        }
        Iterator it2 = abstractComponentCallbacksC0598x9.r.l.iterator();
        while (it2.hasNext()) {
            ((M9) it2.next()).a();
        }
        J9 j92 = abstractComponentCallbacksC0598x9.t;
        j92.y = false;
        j92.z = false;
        j92.F.h = false;
        j92.s(0);
        k1.g(false);
    }

    public final int d() {
        C0557vi c0557vi;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (abstractComponentCallbacksC0598x9.r == null) {
            return abstractComponentCallbacksC0598x9.a;
        }
        int i = this.e;
        int ordinal = abstractComponentCallbacksC0598x9.K.ordinal();
        if (ordinal == 1) {
            i = Math.min(i, 0);
        } else if (ordinal == 2) {
            i = Math.min(i, 1);
        } else if (ordinal == 3) {
            i = Math.min(i, 5);
        } else if (ordinal != 4) {
            i = Math.min(i, -1);
        }
        if (abstractComponentCallbacksC0598x9.m) {
            if (abstractComponentCallbacksC0598x9.n) {
                i = Math.max(this.e, 2);
                View view = abstractComponentCallbacksC0598x9.E;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.e < 4 ? Math.min(i, abstractComponentCallbacksC0598x9.a) : Math.min(i, 1);
            }
        }
        if (!abstractComponentCallbacksC0598x9.k) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        if (viewGroup != null) {
            Z6 f = Z6.f(viewGroup, abstractComponentCallbacksC0598x9.j().C());
            f.getClass();
            C0557vi d = f.d(abstractComponentCallbacksC0598x9);
            r6 = d != null ? d.b : 0;
            Iterator it = f.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c0557vi = null;
                    break;
                }
                c0557vi = (C0557vi) it.next();
                if (c0557vi.c.equals(abstractComponentCallbacksC0598x9) && !c0557vi.f) {
                    break;
                }
            }
            if (c0557vi != null && (r6 == 0 || r6 == 1)) {
                r6 = c0557vi.b;
            }
        }
        if (r6 == 2) {
            i = Math.min(i, 6);
        } else if (r6 == 3) {
            i = Math.max(i, 3);
        } else if (abstractComponentCallbacksC0598x9.l) {
            i = abstractComponentCallbacksC0598x9.q > 0 ? Math.min(i, 1) : Math.min(i, -1);
        }
        if (abstractComponentCallbacksC0598x9.F && abstractComponentCallbacksC0598x9.a < 5) {
            i = Math.min(i, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + abstractComponentCallbacksC0598x9);
        }
        return i;
    }

    public final void e() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        final AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + abstractComponentCallbacksC0598x9);
        }
        if (abstractComponentCallbacksC0598x9.J) {
            abstractComponentCallbacksC0598x9.y(abstractComponentCallbacksC0598x9.b);
            abstractComponentCallbacksC0598x9.a = 1;
            return;
        }
        K1 k1 = this.a;
        k1.n(false);
        Bundle bundle = abstractComponentCallbacksC0598x9.b;
        abstractComponentCallbacksC0598x9.t.I();
        abstractComponentCallbacksC0598x9.a = 1;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.L.a(new Zb() { // from class: androidx.fragment.app.Fragment$5
            @Override // defpackage.Zb
            public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
                View view;
                if (vb != Vb.ON_STOP || (view = AbstractComponentCallbacksC0598x9.this.E) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        abstractComponentCallbacksC0598x9.O.b(bundle);
        abstractComponentCallbacksC0598x9.m(bundle);
        abstractComponentCallbacksC0598x9.J = true;
        if (abstractComponentCallbacksC0598x9.C) {
            abstractComponentCallbacksC0598x9.L.d(Vb.ON_CREATE);
            k1.h(false);
        } else {
            throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onCreate()");
        }
    }

    public final void f() {
        String str;
        int i = 2;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (abstractComponentCallbacksC0598x9.m) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0598x9);
        }
        LayoutInflater q = abstractComponentCallbacksC0598x9.q(abstractComponentCallbacksC0598x9.b);
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        if (viewGroup == null) {
            int i2 = abstractComponentCallbacksC0598x9.w;
            if (i2 == 0) {
                viewGroup = null;
            } else {
                if (i2 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + abstractComponentCallbacksC0598x9 + " for a container view with no id");
                }
                viewGroup = (ViewGroup) abstractComponentCallbacksC0598x9.r.o.R(i2);
                if (viewGroup == null && !abstractComponentCallbacksC0598x9.o) {
                    try {
                        str = abstractComponentCallbacksC0598x9.w().getResources().getResourceName(abstractComponentCallbacksC0598x9.w);
                    } catch (Resources.NotFoundException unused) {
                        str = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(abstractComponentCallbacksC0598x9.w) + " (" + str + ") for fragment " + abstractComponentCallbacksC0598x9);
                }
            }
        }
        abstractComponentCallbacksC0598x9.D = viewGroup;
        abstractComponentCallbacksC0598x9.v(q, viewGroup, abstractComponentCallbacksC0598x9.b);
        View view = abstractComponentCallbacksC0598x9.E;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            abstractComponentCallbacksC0598x9.E.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0598x9);
            if (viewGroup != null) {
                b();
            }
            if (abstractComponentCallbacksC0598x9.y) {
                abstractComponentCallbacksC0598x9.E.setVisibility(8);
            }
            View view2 = abstractComponentCallbacksC0598x9.E;
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            if (Um.b(view2)) {
                Vm.c(abstractComponentCallbacksC0598x9.E);
            } else {
                View view3 = abstractComponentCallbacksC0598x9.E;
                view3.addOnAttachStateChangeListener(new V3(i, view3));
            }
            abstractComponentCallbacksC0598x9.t.s(2);
            this.a.s(false);
            int visibility = abstractComponentCallbacksC0598x9.E.getVisibility();
            abstractComponentCallbacksC0598x9.f().j = abstractComponentCallbacksC0598x9.E.getAlpha();
            if (abstractComponentCallbacksC0598x9.D != null && visibility == 0) {
                View findFocus = abstractComponentCallbacksC0598x9.E.findFocus();
                if (findFocus != null) {
                    abstractComponentCallbacksC0598x9.f().k = findFocus;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + abstractComponentCallbacksC0598x9);
                    }
                }
                abstractComponentCallbacksC0598x9.E.setAlpha(0.0f);
            }
        }
        abstractComponentCallbacksC0598x9.a = 2;
    }

    public final void g() {
        boolean z;
        AbstractComponentCallbacksC0598x9 d;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + abstractComponentCallbacksC0598x9);
        }
        boolean z2 = abstractComponentCallbacksC0598x9.l && abstractComponentCallbacksC0598x9.q <= 0;
        C0491t2 c0491t2 = this.b;
        if (!z2) {
            L9 l9 = (L9) c0491t2.c;
            if (!((l9.c.containsKey(abstractComponentCallbacksC0598x9.e) && l9.f) ? l9.g : true)) {
                String str = abstractComponentCallbacksC0598x9.h;
                if (str != null && (d = c0491t2.d(str)) != null && d.A) {
                    abstractComponentCallbacksC0598x9.g = d;
                }
                abstractComponentCallbacksC0598x9.a = 0;
                return;
            }
        }
        C0623y9 c0623y9 = abstractComponentCallbacksC0598x9.s;
        if (c0623y9 != null) {
            z = ((L9) c0491t2.c).g;
        } else {
            z = c0623y9.s != null ? !r7.isChangingConfigurations() : true;
        }
        if (z2 || z) {
            L9 l92 = (L9) c0491t2.c;
            l92.getClass();
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + abstractComponentCallbacksC0598x9);
            }
            HashMap hashMap = l92.d;
            L9 l93 = (L9) hashMap.get(abstractComponentCallbacksC0598x9.e);
            if (l93 != null) {
                l93.a();
                hashMap.remove(abstractComponentCallbacksC0598x9.e);
            }
            HashMap hashMap2 = l92.e;
            C0462rn c0462rn = (C0462rn) hashMap2.get(abstractComponentCallbacksC0598x9.e);
            if (c0462rn != null) {
                c0462rn.a();
                hashMap2.remove(abstractComponentCallbacksC0598x9.e);
            }
        }
        abstractComponentCallbacksC0598x9.t.k();
        abstractComponentCallbacksC0598x9.L.d(Vb.ON_DESTROY);
        abstractComponentCallbacksC0598x9.a = 0;
        abstractComponentCallbacksC0598x9.J = false;
        abstractComponentCallbacksC0598x9.C = true;
        this.a.i(false);
        Iterator it = c0491t2.f().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                String str2 = abstractComponentCallbacksC0598x9.e;
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = aVar.c;
                if (str2.equals(abstractComponentCallbacksC0598x92.h)) {
                    abstractComponentCallbacksC0598x92.g = abstractComponentCallbacksC0598x9;
                    abstractComponentCallbacksC0598x92.h = null;
                }
            }
        }
        String str3 = abstractComponentCallbacksC0598x9.h;
        if (str3 != null) {
            abstractComponentCallbacksC0598x9.g = c0491t2.d(str3);
        }
        c0491t2.o(this);
    }

    public final void h() {
        View view;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + abstractComponentCallbacksC0598x9);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        if (viewGroup != null && (view = abstractComponentCallbacksC0598x9.E) != null) {
            viewGroup.removeView(view);
        }
        abstractComponentCallbacksC0598x9.t.s(1);
        if (abstractComponentCallbacksC0598x9.E != null) {
            P9 p9 = abstractComponentCallbacksC0598x9.M;
            p9.f();
            if (p9.b.c.compareTo(Wb.c) >= 0) {
                abstractComponentCallbacksC0598x9.M.e(Vb.ON_DESTROY);
            }
        }
        abstractComponentCallbacksC0598x9.a = 1;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.o();
        if (!abstractComponentCallbacksC0598x9.C) {
            throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onDestroyView()");
        }
        C0507ti c0507ti = ((Fc) new K1(abstractComponentCallbacksC0598x9, abstractComponentCallbacksC0598x9.c()).c).c;
        if (c0507ti.c > 0) {
            c0507ti.b[0].getClass();
            throw new ClassCastException();
        }
        abstractComponentCallbacksC0598x9.p = false;
        this.a.t(false);
        abstractComponentCallbacksC0598x9.D = null;
        abstractComponentCallbacksC0598x9.E = null;
        abstractComponentCallbacksC0598x9.M = null;
        abstractComponentCallbacksC0598x9.N.e(null);
        abstractComponentCallbacksC0598x9.n = false;
    }

    public final void i() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.a = -1;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.p();
        if (!abstractComponentCallbacksC0598x9.C) {
            throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onDetach()");
        }
        J9 j9 = abstractComponentCallbacksC0598x9.t;
        if (!j9.A) {
            j9.k();
            abstractComponentCallbacksC0598x9.t = new J9();
        }
        this.a.j(false);
        abstractComponentCallbacksC0598x9.a = -1;
        abstractComponentCallbacksC0598x9.s = null;
        abstractComponentCallbacksC0598x9.u = null;
        abstractComponentCallbacksC0598x9.r = null;
        if (!abstractComponentCallbacksC0598x9.l || abstractComponentCallbacksC0598x9.q > 0) {
            L9 l9 = (L9) this.b.c;
            boolean z = true;
            if (l9.c.containsKey(abstractComponentCallbacksC0598x9.e) && l9.f) {
                z = l9.g;
            }
            if (!z) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "initState called for fragment: " + abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.L = new androidx.lifecycle.a(abstractComponentCallbacksC0598x9);
        abstractComponentCallbacksC0598x9.O = new Q9(abstractComponentCallbacksC0598x9);
        abstractComponentCallbacksC0598x9.e = UUID.randomUUID().toString();
        abstractComponentCallbacksC0598x9.k = false;
        abstractComponentCallbacksC0598x9.l = false;
        abstractComponentCallbacksC0598x9.m = false;
        abstractComponentCallbacksC0598x9.n = false;
        abstractComponentCallbacksC0598x9.o = false;
        abstractComponentCallbacksC0598x9.q = 0;
        abstractComponentCallbacksC0598x9.r = null;
        abstractComponentCallbacksC0598x9.t = new J9();
        abstractComponentCallbacksC0598x9.s = null;
        abstractComponentCallbacksC0598x9.v = 0;
        abstractComponentCallbacksC0598x9.w = 0;
        abstractComponentCallbacksC0598x9.x = null;
        abstractComponentCallbacksC0598x9.y = false;
        abstractComponentCallbacksC0598x9.z = false;
    }

    public final void j() {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (abstractComponentCallbacksC0598x9.m && abstractComponentCallbacksC0598x9.n && !abstractComponentCallbacksC0598x9.p) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0598x9);
            }
            abstractComponentCallbacksC0598x9.v(abstractComponentCallbacksC0598x9.q(abstractComponentCallbacksC0598x9.b), null, abstractComponentCallbacksC0598x9.b);
            View view = abstractComponentCallbacksC0598x9.E;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                abstractComponentCallbacksC0598x9.E.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0598x9);
                if (abstractComponentCallbacksC0598x9.y) {
                    abstractComponentCallbacksC0598x9.E.setVisibility(8);
                }
                abstractComponentCallbacksC0598x9.t.s(2);
                this.a.s(false);
                abstractComponentCallbacksC0598x9.a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.d;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (z) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + abstractComponentCallbacksC0598x9);
                return;
            }
            return;
        }
        try {
            this.d = true;
            while (true) {
                int d = d();
                int i = abstractComponentCallbacksC0598x9.a;
                if (d == i) {
                    if (abstractComponentCallbacksC0598x9.I) {
                        if (abstractComponentCallbacksC0598x9.E != null && (viewGroup = abstractComponentCallbacksC0598x9.D) != null) {
                            Z6 f = Z6.f(viewGroup, abstractComponentCallbacksC0598x9.j().C());
                            if (abstractComponentCallbacksC0598x9.y) {
                                f.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + abstractComponentCallbacksC0598x9);
                                }
                                f.a(3, 1, this);
                            } else {
                                f.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + abstractComponentCallbacksC0598x9);
                                }
                                f.a(2, 1, this);
                            }
                        }
                        J9 j9 = abstractComponentCallbacksC0598x9.r;
                        if (j9 != null && abstractComponentCallbacksC0598x9.k && J9.E(abstractComponentCallbacksC0598x9)) {
                            j9.x = true;
                        }
                        abstractComponentCallbacksC0598x9.I = false;
                    }
                    this.d = false;
                    return;
                }
                if (d <= i) {
                    switch (i - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            abstractComponentCallbacksC0598x9.a = 1;
                            break;
                        case 2:
                            abstractComponentCallbacksC0598x9.n = false;
                            abstractComponentCallbacksC0598x9.a = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + abstractComponentCallbacksC0598x9);
                            }
                            if (abstractComponentCallbacksC0598x9.E != null && abstractComponentCallbacksC0598x9.c == null) {
                                o();
                            }
                            if (abstractComponentCallbacksC0598x9.E != null && (viewGroup3 = abstractComponentCallbacksC0598x9.D) != null) {
                                Z6 f2 = Z6.f(viewGroup3, abstractComponentCallbacksC0598x9.j().C());
                                f2.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + abstractComponentCallbacksC0598x9);
                                }
                                f2.a(1, 3, this);
                            }
                            abstractComponentCallbacksC0598x9.a = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            abstractComponentCallbacksC0598x9.a = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (abstractComponentCallbacksC0598x9.E != null && (viewGroup2 = abstractComponentCallbacksC0598x9.D) != null) {
                                Z6 f3 = Z6.f(viewGroup2, abstractComponentCallbacksC0598x9.j().C());
                                int b = AbstractC0407pi.b(abstractComponentCallbacksC0598x9.E.getVisibility());
                                f3.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + abstractComponentCallbacksC0598x9);
                                }
                                f3.a(b, 2, this);
                            }
                            abstractComponentCallbacksC0598x9.a = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            abstractComponentCallbacksC0598x9.a = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom RESUMED: " + abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.t.s(5);
        if (abstractComponentCallbacksC0598x9.E != null) {
            abstractComponentCallbacksC0598x9.M.e(Vb.ON_PAUSE);
        }
        abstractComponentCallbacksC0598x9.L.d(Vb.ON_PAUSE);
        abstractComponentCallbacksC0598x9.a = 6;
        abstractComponentCallbacksC0598x9.C = true;
        this.a.l(false);
    }

    public final void m(ClassLoader classLoader) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        Bundle bundle = abstractComponentCallbacksC0598x9.b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        abstractComponentCallbacksC0598x9.c = abstractComponentCallbacksC0598x9.b.getSparseParcelableArray("android:view_state");
        abstractComponentCallbacksC0598x9.d = abstractComponentCallbacksC0598x9.b.getBundle("android:view_registry_state");
        String string = abstractComponentCallbacksC0598x9.b.getString("android:target_state");
        abstractComponentCallbacksC0598x9.h = string;
        if (string != null) {
            abstractComponentCallbacksC0598x9.i = abstractComponentCallbacksC0598x9.b.getInt("android:target_req_state", 0);
        }
        boolean z = abstractComponentCallbacksC0598x9.b.getBoolean("android:user_visible_hint", true);
        abstractComponentCallbacksC0598x9.G = z;
        if (z) {
            return;
        }
        abstractComponentCallbacksC0598x9.F = true;
    }

    public final void n() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto RESUMED: " + abstractComponentCallbacksC0598x9);
        }
        C0573w9 c0573w9 = abstractComponentCallbacksC0598x9.H;
        View view = c0573w9 == null ? null : c0573w9.k;
        if (view != null) {
            if (view != abstractComponentCallbacksC0598x9.E) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != abstractComponentCallbacksC0598x9.E) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (Log.isLoggable("FragmentManager", 2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(abstractComponentCallbacksC0598x9);
                sb.append(" resulting in focused view ");
                sb.append(abstractComponentCallbacksC0598x9.E.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        abstractComponentCallbacksC0598x9.f().k = null;
        abstractComponentCallbacksC0598x9.t.I();
        abstractComponentCallbacksC0598x9.t.x(true);
        abstractComponentCallbacksC0598x9.a = 7;
        abstractComponentCallbacksC0598x9.C = true;
        androidx.lifecycle.a aVar = abstractComponentCallbacksC0598x9.L;
        Vb vb = Vb.ON_RESUME;
        aVar.d(vb);
        if (abstractComponentCallbacksC0598x9.E != null) {
            abstractComponentCallbacksC0598x9.M.b.d(vb);
        }
        J9 j9 = abstractComponentCallbacksC0598x9.t;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(7);
        this.a.o(false);
        abstractComponentCallbacksC0598x9.b = null;
        abstractComponentCallbacksC0598x9.c = null;
        abstractComponentCallbacksC0598x9.d = null;
    }

    public final void o() {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (abstractComponentCallbacksC0598x9.E == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        abstractComponentCallbacksC0598x9.E.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            abstractComponentCallbacksC0598x9.c = sparseArray;
        }
        Bundle bundle = new Bundle();
        abstractComponentCallbacksC0598x9.M.c.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        abstractComponentCallbacksC0598x9.d = bundle;
    }

    public final void p() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto STARTED: " + abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.t.I();
        abstractComponentCallbacksC0598x9.t.x(true);
        abstractComponentCallbacksC0598x9.a = 5;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.s();
        if (!abstractComponentCallbacksC0598x9.C) {
            throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onStart()");
        }
        androidx.lifecycle.a aVar = abstractComponentCallbacksC0598x9.L;
        Vb vb = Vb.ON_START;
        aVar.d(vb);
        if (abstractComponentCallbacksC0598x9.E != null) {
            abstractComponentCallbacksC0598x9.M.b.d(vb);
        }
        J9 j9 = abstractComponentCallbacksC0598x9.t;
        j9.y = false;
        j9.z = false;
        j9.F.h = false;
        j9.s(5);
        this.a.q(false);
    }

    public final void q() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom STARTED: " + abstractComponentCallbacksC0598x9);
        }
        J9 j9 = abstractComponentCallbacksC0598x9.t;
        j9.z = true;
        j9.F.h = true;
        j9.s(4);
        if (abstractComponentCallbacksC0598x9.E != null) {
            abstractComponentCallbacksC0598x9.M.e(Vb.ON_STOP);
        }
        abstractComponentCallbacksC0598x9.L.d(Vb.ON_STOP);
        abstractComponentCallbacksC0598x9.a = 4;
        abstractComponentCallbacksC0598x9.C = false;
        abstractComponentCallbacksC0598x9.t();
        if (abstractComponentCallbacksC0598x9.C) {
            this.a.r(false);
            return;
        }
        throw new AndroidRuntimeException("Fragment " + abstractComponentCallbacksC0598x9 + " did not call through to super.onStop()");
    }

    public a(K1 k1, C0491t2 c0491t2, ClassLoader classLoader, E9 e9, N9 n9) {
        this.a = k1;
        this.b = c0491t2;
        AbstractComponentCallbacksC0598x9 a = e9.a(n9.a);
        this.c = a;
        Bundle bundle = n9.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        a.A(bundle);
        a.e = n9.b;
        a.m = n9.c;
        a.o = true;
        a.v = n9.d;
        a.w = n9.e;
        a.x = n9.f;
        a.A = n9.g;
        a.l = n9.h;
        a.z = n9.i;
        a.y = n9.k;
        a.K = Wb.values()[n9.l];
        Bundle bundle2 = n9.m;
        if (bundle2 != null) {
            a.b = bundle2;
        } else {
            a.b = new Bundle();
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a);
        }
    }

    public a(K1 k1, C0491t2 c0491t2, AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9, N9 n9) {
        this.a = k1;
        this.b = c0491t2;
        this.c = abstractComponentCallbacksC0598x9;
        abstractComponentCallbacksC0598x9.c = null;
        abstractComponentCallbacksC0598x9.d = null;
        abstractComponentCallbacksC0598x9.q = 0;
        abstractComponentCallbacksC0598x9.n = false;
        abstractComponentCallbacksC0598x9.k = false;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = abstractComponentCallbacksC0598x9.g;
        abstractComponentCallbacksC0598x9.h = abstractComponentCallbacksC0598x92 != null ? abstractComponentCallbacksC0598x92.e : null;
        abstractComponentCallbacksC0598x9.g = null;
        Bundle bundle = n9.m;
        if (bundle != null) {
            abstractComponentCallbacksC0598x9.b = bundle;
        } else {
            abstractComponentCallbacksC0598x9.b = new Bundle();
        }
    }
}
