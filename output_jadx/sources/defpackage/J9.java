package defpackage;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.b;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.a;
import com.omoda.launcher.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class J9 {
    public boolean A;
    public boolean B;
    public ArrayList C;
    public ArrayList D;
    public ArrayList E;
    public L9 F;
    public final J2 G;
    public final ArrayList a = new ArrayList();
    public boolean b;
    public final C0491t2 c;
    public ArrayList d;
    public ArrayList e;
    public final B9 f;
    public b g;
    public final D9 h;
    public final AtomicInteger i;
    public final Map j;
    public final K1 k;
    public final CopyOnWriteArrayList l;
    public int m;
    public C0623y9 n;
    public AbstractC0348nb o;
    public AbstractComponentCallbacksC0598x9 p;
    public AbstractComponentCallbacksC0598x9 q;
    public final E9 r;
    public final T7 s;
    public K1 t;
    public K1 u;
    public K1 v;
    public ArrayDeque w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, t2] */
    public J9() {
        ?? obj = new Object();
        obj.b = new ArrayList();
        obj.a = new HashMap();
        this.c = obj;
        this.f = new B9(this);
        this.h = new D9(this);
        this.i = new AtomicInteger();
        this.j = Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        new T7(this);
        this.k = new K1(this);
        this.l = new CopyOnWriteArrayList();
        this.m = -1;
        this.r = new E9(this);
        this.s = new T7(22);
        this.w = new ArrayDeque();
        this.G = new J2(8, this);
    }

    public static boolean E(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        abstractComponentCallbacksC0598x9.getClass();
        C0491t2 c0491t2 = abstractComponentCallbacksC0598x9.t.c;
        c0491t2.getClass();
        ArrayList arrayList = new ArrayList();
        for (a aVar : ((HashMap) c0491t2.a).values()) {
            if (aVar != null) {
                arrayList.add(aVar.c);
            } else {
                arrayList.add(null);
            }
        }
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) it.next();
            if (abstractComponentCallbacksC0598x92 != null) {
                z = E(abstractComponentCallbacksC0598x92);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean F(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (abstractComponentCallbacksC0598x9 == null) {
            return true;
        }
        return abstractComponentCallbacksC0598x9.B && (abstractComponentCallbacksC0598x9.r == null || F(abstractComponentCallbacksC0598x9.u));
    }

    public static boolean G(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (abstractComponentCallbacksC0598x9 == null) {
            return true;
        }
        J9 j9 = abstractComponentCallbacksC0598x9.r;
        return abstractComponentCallbacksC0598x9.equals(j9.q) && G(j9.p);
    }

    public static void U(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + abstractComponentCallbacksC0598x9);
        }
        if (abstractComponentCallbacksC0598x9.y) {
            abstractComponentCallbacksC0598x9.y = false;
            abstractComponentCallbacksC0598x9.I = !abstractComponentCallbacksC0598x9.I;
        }
    }

    public final ViewGroup A(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (abstractComponentCallbacksC0598x9.w > 0 && this.o.S()) {
            View R = this.o.R(abstractComponentCallbacksC0598x9.w);
            if (R instanceof ViewGroup) {
                return (ViewGroup) R;
            }
        }
        return null;
    }

    public final E9 B() {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.p;
        return abstractComponentCallbacksC0598x9 != null ? abstractComponentCallbacksC0598x9.r.B() : this.r;
    }

    public final T7 C() {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.p;
        return abstractComponentCallbacksC0598x9 != null ? abstractComponentCallbacksC0598x9.r.C() : this.s;
    }

    public final void D(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + abstractComponentCallbacksC0598x9);
        }
        if (abstractComponentCallbacksC0598x9.y) {
            return;
        }
        abstractComponentCallbacksC0598x9.y = true;
        abstractComponentCallbacksC0598x9.I = true ^ abstractComponentCallbacksC0598x9.I;
        T(abstractComponentCallbacksC0598x9);
    }

    public final void H(int i, boolean z) {
        HashMap hashMap;
        C0623y9 c0623y9;
        if (this.n == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.m) {
            this.m = i;
            C0491t2 c0491t2 = this.c;
            Iterator it = ((ArrayList) c0491t2.b).iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap = (HashMap) c0491t2.a;
                if (!hasNext) {
                    break;
                }
                a aVar = (a) hashMap.get(((AbstractComponentCallbacksC0598x9) it.next()).e);
                if (aVar != null) {
                    aVar.k();
                }
            }
            for (a aVar2 : hashMap.values()) {
                if (aVar2 != null) {
                    aVar2.k();
                    AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar2.c;
                    if (abstractComponentCallbacksC0598x9.l && abstractComponentCallbacksC0598x9.q <= 0) {
                        c0491t2.o(aVar2);
                    }
                }
            }
            V();
            if (this.x && (c0623y9 = this.n) != null && this.m == 7) {
                c0623y9.v.j().b();
                this.x = false;
            }
        }
    }

    public final void I() {
        if (this.n == null) {
            return;
        }
        this.y = false;
        this.z = false;
        this.F.h = false;
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                abstractComponentCallbacksC0598x9.t.I();
            }
        }
    }

    public final boolean J() {
        x(false);
        w(true);
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.q;
        if (abstractComponentCallbacksC0598x9 != null && abstractComponentCallbacksC0598x9.g().J()) {
            return true;
        }
        boolean K = K(this.C, this.D, -1, 0);
        if (K) {
            this.b = true;
            try {
                M(this.C, this.D);
            } finally {
                d();
            }
        }
        W();
        t();
        ((HashMap) this.c.a).values().removeAll(Collections.singleton(null));
        return K;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0043, code lost:
    
        if ((r8 & 1) != 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
    
        if (r0 < 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
    
        r8 = (defpackage.C0133f3) r4.d.get(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        if (r7 < 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0055, code lost:
    
        if (r7 != r8.r) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean K(java.util.ArrayList r5, java.util.ArrayList r6, int r7, int r8) {
        /*
            r4 = this;
            java.util.ArrayList r0 = r4.d
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r2 = 1
            if (r7 >= 0) goto L24
            r3 = r8 & 1
            if (r3 != 0) goto L24
            int r7 = r0.size()
            int r7 = r7 - r2
            if (r7 >= 0) goto L15
            return r1
        L15:
            java.util.ArrayList r4 = r4.d
            java.lang.Object r4 = r4.remove(r7)
            r5.add(r4)
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            r6.add(r4)
            goto L7d
        L24:
            if (r7 < 0) goto L58
            int r0 = r0.size()
            int r0 = r0 - r2
        L2b:
            if (r0 < 0) goto L3f
            java.util.ArrayList r3 = r4.d
            java.lang.Object r3 = r3.get(r0)
            f3 r3 = (defpackage.C0133f3) r3
            if (r7 < 0) goto L3c
            int r3 = r3.r
            if (r7 != r3) goto L3c
            goto L3f
        L3c:
            int r0 = r0 + (-1)
            goto L2b
        L3f:
            if (r0 >= 0) goto L42
            return r1
        L42:
            r8 = r8 & r2
            if (r8 == 0) goto L59
        L45:
            int r0 = r0 + (-1)
            if (r0 < 0) goto L59
            java.util.ArrayList r8 = r4.d
            java.lang.Object r8 = r8.get(r0)
            f3 r8 = (defpackage.C0133f3) r8
            if (r7 < 0) goto L59
            int r8 = r8.r
            if (r7 != r8) goto L59
            goto L45
        L58:
            r0 = -1
        L59:
            java.util.ArrayList r7 = r4.d
            int r7 = r7.size()
            int r7 = r7 - r2
            if (r0 != r7) goto L63
            return r1
        L63:
            java.util.ArrayList r7 = r4.d
            int r7 = r7.size()
            int r7 = r7 - r2
        L6a:
            if (r7 <= r0) goto L7d
            java.util.ArrayList r8 = r4.d
            java.lang.Object r8 = r8.remove(r7)
            r5.add(r8)
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            r6.add(r8)
            int r7 = r7 + (-1)
            goto L6a
        L7d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.J9.K(java.util.ArrayList, java.util.ArrayList, int, int):boolean");
    }

    public final void L(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + abstractComponentCallbacksC0598x9 + " nesting=" + abstractComponentCallbacksC0598x9.q);
        }
        boolean z = abstractComponentCallbacksC0598x9.q > 0;
        if (abstractComponentCallbacksC0598x9.z && z) {
            return;
        }
        C0491t2 c0491t2 = this.c;
        synchronized (((ArrayList) c0491t2.b)) {
            ((ArrayList) c0491t2.b).remove(abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.k = false;
        if (E(abstractComponentCallbacksC0598x9)) {
            this.x = true;
        }
        abstractComponentCallbacksC0598x9.l = true;
        T(abstractComponentCallbacksC0598x9);
    }

    public final void M(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((C0133f3) arrayList.get(i)).o) {
                if (i2 != i) {
                    y(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((C0133f3) arrayList.get(i2)).o) {
                        i2++;
                    }
                }
                y(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            y(arrayList, arrayList2, i2, size);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Object, O9] */
    public final void N(Parcelable parcelable) {
        int i;
        K1 k1;
        int i2;
        a aVar;
        if (parcelable == null) {
            return;
        }
        K9 k9 = (K9) parcelable;
        if (k9.a == null) {
            return;
        }
        C0491t2 c0491t2 = this.c;
        ((HashMap) c0491t2.a).clear();
        Iterator it = k9.a.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            i = 2;
            k1 = this.k;
            if (!hasNext) {
                break;
            }
            N9 n9 = (N9) it.next();
            if (n9 != null) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = (AbstractComponentCallbacksC0598x9) this.F.c.get(n9.b);
                if (abstractComponentCallbacksC0598x9 != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + abstractComponentCallbacksC0598x9);
                    }
                    aVar = new a(k1, c0491t2, abstractComponentCallbacksC0598x9, n9);
                } else {
                    aVar = new a(this.k, this.c, this.n.s.getClassLoader(), B(), n9);
                }
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = aVar.c;
                abstractComponentCallbacksC0598x92.r = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + abstractComponentCallbacksC0598x92.e + "): " + abstractComponentCallbacksC0598x92);
                }
                aVar.m(this.n.s.getClassLoader());
                c0491t2.n(aVar);
                aVar.e = this.m;
            }
        }
        L9 l9 = this.F;
        l9.getClass();
        Iterator it2 = new ArrayList(l9.c.values()).iterator();
        while (it2.hasNext()) {
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = (AbstractComponentCallbacksC0598x9) it2.next();
            if (!(((HashMap) c0491t2.a).get(abstractComponentCallbacksC0598x93.e) != null)) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + abstractComponentCallbacksC0598x93 + " that was not found in the set of active Fragments " + k9.a);
                }
                this.F.b(abstractComponentCallbacksC0598x93);
                abstractComponentCallbacksC0598x93.r = this;
                a aVar2 = new a(k1, c0491t2, abstractComponentCallbacksC0598x93);
                aVar2.e = 1;
                aVar2.k();
                abstractComponentCallbacksC0598x93.l = true;
                aVar2.k();
            }
        }
        ArrayList<String> arrayList = k9.b;
        ((ArrayList) c0491t2.b).clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                AbstractComponentCallbacksC0598x9 d = c0491t2.d(str);
                if (d == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + d);
                }
                c0491t2.a(d);
            }
        }
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x94 = null;
        if (k9.c != null) {
            this.d = new ArrayList(k9.c.length);
            int i3 = 0;
            while (true) {
                C0159g3[] c0159g3Arr = k9.c;
                if (i3 >= c0159g3Arr.length) {
                    break;
                }
                C0159g3 c0159g3 = c0159g3Arr[i3];
                c0159g3.getClass();
                C0133f3 c0133f3 = new C0133f3(this);
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int[] iArr = c0159g3.a;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    ?? obj = new Object();
                    int i6 = i4 + 1;
                    obj.a = iArr[i4];
                    if (Log.isLoggable("FragmentManager", i)) {
                        Log.v("FragmentManager", "Instantiate " + c0133f3 + " op #" + i5 + " base fragment #" + iArr[i6]);
                    }
                    String str2 = (String) c0159g3.b.get(i5);
                    if (str2 != null) {
                        obj.b = c0491t2.d(str2);
                    } else {
                        obj.b = abstractComponentCallbacksC0598x94;
                    }
                    obj.g = Wb.values()[c0159g3.c[i5]];
                    obj.h = Wb.values()[c0159g3.d[i5]];
                    int i7 = iArr[i6];
                    obj.c = i7;
                    int i8 = iArr[i4 + 2];
                    obj.d = i8;
                    int i9 = i4 + 4;
                    int i10 = iArr[i4 + 3];
                    obj.e = i10;
                    i4 += 5;
                    int i11 = iArr[i9];
                    obj.f = i11;
                    c0133f3.b = i7;
                    c0133f3.c = i8;
                    c0133f3.d = i10;
                    c0133f3.e = i11;
                    c0133f3.b(obj);
                    i5++;
                    abstractComponentCallbacksC0598x94 = null;
                    i = 2;
                }
                c0133f3.f = c0159g3.e;
                c0133f3.h = c0159g3.f;
                c0133f3.r = c0159g3.g;
                c0133f3.g = true;
                c0133f3.i = c0159g3.h;
                c0133f3.j = c0159g3.i;
                c0133f3.k = c0159g3.j;
                c0133f3.l = c0159g3.k;
                c0133f3.m = c0159g3.l;
                c0133f3.n = c0159g3.m;
                c0133f3.o = c0159g3.n;
                c0133f3.c(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i3 + " (index " + c0133f3.r + "): " + c0133f3);
                    PrintWriter printWriter = new PrintWriter(new Pc());
                    c0133f3.d("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(c0133f3);
                i3++;
                i = 2;
                abstractComponentCallbacksC0598x94 = null;
            }
            i2 = 0;
        } else {
            i2 = 0;
            this.d = null;
        }
        this.i.set(k9.d);
        String str3 = k9.e;
        if (str3 != null) {
            AbstractComponentCallbacksC0598x9 d2 = c0491t2.d(str3);
            this.q = d2;
            p(d2);
        }
        ArrayList arrayList2 = k9.f;
        if (arrayList2 != null) {
            while (i2 < arrayList2.size()) {
                Bundle bundle = (Bundle) k9.g.get(i2);
                bundle.setClassLoader(this.n.s.getClassLoader());
                this.j.put(arrayList2.get(i2), bundle);
                i2++;
            }
        }
        this.w = new ArrayDeque(k9.h);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object, K9] */
    public final K9 O() {
        int i;
        ArrayList arrayList;
        C0159g3[] c0159g3Arr;
        int size;
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Z6 z6 = (Z6) it.next();
            if (z6.e) {
                z6.e = false;
                z6.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((Z6) it2.next()).e();
        }
        x(true);
        this.y = true;
        this.F.h = true;
        C0491t2 c0491t2 = this.c;
        c0491t2.getClass();
        HashMap hashMap = (HashMap) c0491t2.a;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        Iterator it3 = hashMap.values().iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            a aVar = (a) it3.next();
            if (aVar != null) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
                N9 n9 = new N9(abstractComponentCallbacksC0598x9);
                if (abstractComponentCallbacksC0598x9.a <= -1 || n9.m != null) {
                    n9.m = abstractComponentCallbacksC0598x9.b;
                } else {
                    Bundle bundle = new Bundle();
                    abstractComponentCallbacksC0598x9.r(bundle);
                    abstractComponentCallbacksC0598x9.O.c(bundle);
                    K9 O = abstractComponentCallbacksC0598x9.t.O();
                    if (O != null) {
                        bundle.putParcelable("android:support:fragments", O);
                    }
                    aVar.a.p(false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (abstractComponentCallbacksC0598x9.E != null) {
                        aVar.o();
                    }
                    if (abstractComponentCallbacksC0598x9.c != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", abstractComponentCallbacksC0598x9.c);
                    }
                    if (abstractComponentCallbacksC0598x9.d != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", abstractComponentCallbacksC0598x9.d);
                    }
                    if (!abstractComponentCallbacksC0598x9.G) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", abstractComponentCallbacksC0598x9.G);
                    }
                    n9.m = bundle2;
                    if (abstractComponentCallbacksC0598x9.h != null) {
                        if (bundle2 == null) {
                            n9.m = new Bundle();
                        }
                        n9.m.putString("android:target_state", abstractComponentCallbacksC0598x9.h);
                        int i2 = abstractComponentCallbacksC0598x9.i;
                        if (i2 != 0) {
                            n9.m.putInt("android:target_req_state", i2);
                        }
                    }
                }
                arrayList2.add(n9);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + abstractComponentCallbacksC0598x9 + ": " + n9.m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        C0491t2 c0491t22 = this.c;
        synchronized (((ArrayList) c0491t22.b)) {
            try {
                if (((ArrayList) c0491t22.b).isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(((ArrayList) c0491t22.b).size());
                    Iterator it4 = ((ArrayList) c0491t22.b).iterator();
                    while (it4.hasNext()) {
                        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) it4.next();
                        arrayList.add(abstractComponentCallbacksC0598x92.e);
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + abstractComponentCallbacksC0598x92.e + "): " + abstractComponentCallbacksC0598x92);
                        }
                    }
                }
            } finally {
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
            c0159g3Arr = null;
        } else {
            c0159g3Arr = new C0159g3[size];
            for (i = 0; i < size; i++) {
                c0159g3Arr[i] = new C0159g3((C0133f3) this.d.get(i));
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.d.get(i));
                }
            }
        }
        ?? obj = new Object();
        obj.e = null;
        ArrayList arrayList4 = new ArrayList();
        obj.f = arrayList4;
        ArrayList arrayList5 = new ArrayList();
        obj.g = arrayList5;
        obj.a = arrayList2;
        obj.b = arrayList;
        obj.c = c0159g3Arr;
        obj.d = this.i.get();
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = this.q;
        if (abstractComponentCallbacksC0598x93 != null) {
            obj.e = abstractComponentCallbacksC0598x93.e;
        }
        arrayList4.addAll(this.j.keySet());
        arrayList5.addAll(this.j.values());
        obj.h = new ArrayList(this.w);
        return obj;
    }

    public final void P() {
        synchronized (this.a) {
            try {
                if (this.a.size() == 1) {
                    this.n.t.removeCallbacks(this.G);
                    this.n.t.post(this.G);
                    W();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Q(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9, boolean z) {
        ViewGroup A = A(abstractComponentCallbacksC0598x9);
        if (A == null || !(A instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) A).setDrawDisappearingViewsLast(!z);
    }

    public final void R(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9, Wb wb) {
        if (abstractComponentCallbacksC0598x9.equals(this.c.d(abstractComponentCallbacksC0598x9.e)) && (abstractComponentCallbacksC0598x9.s == null || abstractComponentCallbacksC0598x9.r == this)) {
            abstractComponentCallbacksC0598x9.K = wb;
            return;
        }
        throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0598x9 + " is not an active fragment of FragmentManager " + this);
    }

    public final void S(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (abstractComponentCallbacksC0598x9 != null) {
            if (!abstractComponentCallbacksC0598x9.equals(this.c.d(abstractComponentCallbacksC0598x9.e)) || (abstractComponentCallbacksC0598x9.s != null && abstractComponentCallbacksC0598x9.r != this)) {
                throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0598x9 + " is not an active fragment of FragmentManager " + this);
            }
        }
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = this.q;
        this.q = abstractComponentCallbacksC0598x9;
        p(abstractComponentCallbacksC0598x92);
        p(this.q);
    }

    public final void T(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        ViewGroup A = A(abstractComponentCallbacksC0598x9);
        if (A != null) {
            C0573w9 c0573w9 = abstractComponentCallbacksC0598x9.H;
            if ((c0573w9 == null ? 0 : c0573w9.e) + (c0573w9 == null ? 0 : c0573w9.d) + (c0573w9 == null ? 0 : c0573w9.c) + (c0573w9 == null ? 0 : c0573w9.b) > 0) {
                if (A.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    A.setTag(R.id.visible_removing_fragment_view_tag, abstractComponentCallbacksC0598x9);
                }
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) A.getTag(R.id.visible_removing_fragment_view_tag);
                C0573w9 c0573w92 = abstractComponentCallbacksC0598x9.H;
                boolean z = c0573w92 != null ? c0573w92.a : false;
                if (abstractComponentCallbacksC0598x92.H == null) {
                    return;
                }
                abstractComponentCallbacksC0598x92.f().a = z;
            }
        }
    }

    public final void V() {
        Iterator it = this.c.f().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
            if (abstractComponentCallbacksC0598x9.F) {
                if (this.b) {
                    this.B = true;
                } else {
                    abstractComponentCallbacksC0598x9.F = false;
                    aVar.k();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [S9, ra] */
    /* JADX WARN: Type inference failed for: r4v6, types: [S9, ra] */
    public final void W() {
        synchronized (this.a) {
            try {
                if (!this.a.isEmpty()) {
                    D9 d9 = this.h;
                    d9.a = true;
                    ?? r4 = d9.c;
                    if (r4 != 0) {
                        r4.d();
                    }
                    return;
                }
                D9 d92 = this.h;
                ArrayList arrayList = this.d;
                d92.a = (arrayList != null ? arrayList.size() : 0) > 0 && G(this.p);
                ?? r42 = d92.c;
                if (r42 != 0) {
                    r42.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final a a(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + abstractComponentCallbacksC0598x9);
        }
        a f = f(abstractComponentCallbacksC0598x9);
        abstractComponentCallbacksC0598x9.r = this;
        C0491t2 c0491t2 = this.c;
        c0491t2.n(f);
        if (!abstractComponentCallbacksC0598x9.z) {
            c0491t2.a(abstractComponentCallbacksC0598x9);
            abstractComponentCallbacksC0598x9.l = false;
            if (abstractComponentCallbacksC0598x9.E == null) {
                abstractComponentCallbacksC0598x9.I = false;
            }
            if (E(abstractComponentCallbacksC0598x9)) {
                this.x = true;
            }
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(C0623y9 c0623y9, AbstractC0348nb abstractC0348nb, AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        L9 l9;
        String str;
        if (this.n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.n = c0623y9;
        this.o = abstractC0348nb;
        this.p = abstractComponentCallbacksC0598x9;
        CopyOnWriteArrayList copyOnWriteArrayList = this.l;
        if (abstractComponentCallbacksC0598x9 != 0) {
            copyOnWriteArrayList.add(new F9(abstractComponentCallbacksC0598x9));
        } else if (c0623y9 != null) {
            copyOnWriteArrayList.add(c0623y9);
        }
        if (this.p != null) {
            W();
        }
        if (c0623y9 != null) {
            b g = c0623y9.v.g();
            this.g = g;
            g.a(abstractComponentCallbacksC0598x9 != 0 ? abstractComponentCallbacksC0598x9 : c0623y9, this.h);
        }
        if (abstractComponentCallbacksC0598x9 != 0) {
            L9 l92 = abstractComponentCallbacksC0598x9.r.F;
            HashMap hashMap = l92.d;
            L9 l93 = (L9) hashMap.get(abstractComponentCallbacksC0598x9.e);
            if (l93 == null) {
                l93 = new L9(l92.f);
                hashMap.put(abstractComponentCallbacksC0598x9.e, l93);
            }
            this.F = l93;
        } else if (c0623y9 != null) {
            C0462rn c = c0623y9.v.c();
            AbstractC0348nb.r(c, "store");
            C0395p6 c0395p6 = C0395p6.b;
            AbstractC0348nb.r(c0395p6, "defaultCreationExtras");
            String canonicalName = L9.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            AbstractC0348nb.r(concat, "key");
            LinkedHashMap linkedHashMap = c.a;
            AbstractC0412pn abstractC0412pn = (AbstractC0412pn) linkedHashMap.get(concat);
            if (L9.class.isInstance(abstractC0412pn)) {
                AbstractC0348nb.p(abstractC0412pn, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.putAll(c0395p6.a);
                linkedHashMap2.put(T7.B, concat);
                try {
                    l9 = new L9(true);
                } catch (AbstractMethodError unused) {
                    l9 = new L9(true);
                }
                abstractC0412pn = l9;
                AbstractC0412pn abstractC0412pn2 = (AbstractC0412pn) linkedHashMap.put(concat, abstractC0412pn);
                if (abstractC0412pn2 != null) {
                    abstractC0412pn2.a();
                }
            }
            this.F = (L9) abstractC0412pn;
        } else {
            this.F = new L9(false);
        }
        L9 l94 = this.F;
        l94.h = this.y || this.z;
        this.c.c = l94;
        C0623y9 c0623y92 = this.n;
        if (c0623y92 != null) {
            AbstractActivityC0028b1 abstractActivityC0028b1 = c0623y92.v;
            if (abstractComponentCallbacksC0598x9 != 0) {
                str = abstractComponentCallbacksC0598x9.e + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            String i = AbstractC0407pi.i(str2, "StartActivityForResult");
            C0539v0 c0539v0 = new C0539v0(1);
            C9 c9 = new C9(this, 2);
            C0161g5 c0161g5 = abstractActivityC0028b1.j;
            this.t = c0161g5.b(i, c0539v0, c9);
            this.u = c0161g5.b(AbstractC0407pi.i(str2, "StartIntentSenderForResult"), new C0539v0(2), new C9(this, 0));
            this.v = c0161g5.b(AbstractC0407pi.i(str2, "RequestPermissions"), new C0539v0(0), new C9(this, 1));
        }
    }

    public final void c(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + abstractComponentCallbacksC0598x9);
        }
        if (abstractComponentCallbacksC0598x9.z) {
            abstractComponentCallbacksC0598x9.z = false;
            if (abstractComponentCallbacksC0598x9.k) {
                return;
            }
            this.c.a(abstractComponentCallbacksC0598x9);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "add from attach: " + abstractComponentCallbacksC0598x9);
            }
            if (E(abstractComponentCallbacksC0598x9)) {
                this.x = true;
            }
        }
    }

    public final void d() {
        this.b = false;
        this.D.clear();
        this.C.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.c.f().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((a) it.next()).c.D;
            if (viewGroup != null) {
                hashSet.add(Z6.f(viewGroup, C()));
            }
        }
        return hashSet;
    }

    public final a f(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        String str = abstractComponentCallbacksC0598x9.e;
        C0491t2 c0491t2 = this.c;
        a aVar = (a) ((HashMap) c0491t2.a).get(str);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(this.k, c0491t2, abstractComponentCallbacksC0598x9);
        aVar2.m(this.n.s.getClassLoader());
        aVar2.e = this.m;
        return aVar2;
    }

    public final void g(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + abstractComponentCallbacksC0598x9);
        }
        if (abstractComponentCallbacksC0598x9.z) {
            return;
        }
        abstractComponentCallbacksC0598x9.z = true;
        if (abstractComponentCallbacksC0598x9.k) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "remove from detach: " + abstractComponentCallbacksC0598x9);
            }
            C0491t2 c0491t2 = this.c;
            synchronized (((ArrayList) c0491t2.b)) {
                ((ArrayList) c0491t2.b).remove(abstractComponentCallbacksC0598x9);
            }
            abstractComponentCallbacksC0598x9.k = false;
            if (E(abstractComponentCallbacksC0598x9)) {
                this.x = true;
            }
            T(abstractComponentCallbacksC0598x9);
        }
    }

    public final void h() {
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                abstractComponentCallbacksC0598x9.C = true;
                abstractComponentCallbacksC0598x9.t.h();
            }
        }
    }

    public final boolean i() {
        if (this.m < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                if (!abstractComponentCallbacksC0598x9.y ? abstractComponentCallbacksC0598x9.t.i() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean j() {
        if (this.m < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null && F(abstractComponentCallbacksC0598x9)) {
                if (!abstractComponentCallbacksC0598x9.y ? abstractComponentCallbacksC0598x9.t.j() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(abstractComponentCallbacksC0598x9);
                    z = true;
                }
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) this.e.get(i);
                if (arrayList == null || !arrayList.contains(abstractComponentCallbacksC0598x92)) {
                    abstractComponentCallbacksC0598x92.getClass();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final void k() {
        Integer num;
        Integer num2;
        Integer num3;
        this.A = true;
        x(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((Z6) it.next()).e();
        }
        s(-1);
        this.n = null;
        this.o = null;
        this.p = null;
        if (this.g != null) {
            Iterator it2 = this.h.b.iterator();
            while (it2.hasNext()) {
                ((M3) it2.next()).cancel();
            }
            this.g = null;
        }
        K1 k1 = this.t;
        if (k1 != null) {
            C0161g5 c0161g5 = (C0161g5) k1.c;
            ArrayList arrayList = c0161g5.d;
            String str = (String) k1.b;
            if (!arrayList.contains(str) && (num3 = (Integer) c0161g5.b.remove(str)) != null) {
                c0161g5.a.remove(num3);
            }
            c0161g5.e.remove(str);
            HashMap hashMap = c0161g5.f;
            if (hashMap.containsKey(str)) {
                StringBuilder l = AbstractC0407pi.l("Dropping pending result for request ", str, ": ");
                l.append(hashMap.get(str));
                Log.w("ActivityResultRegistry", l.toString());
                hashMap.remove(str);
            }
            Bundle bundle = c0161g5.g;
            if (bundle.containsKey(str)) {
                StringBuilder l2 = AbstractC0407pi.l("Dropping pending result for request ", str, ": ");
                l2.append(bundle.getParcelable(str));
                Log.w("ActivityResultRegistry", l2.toString());
                bundle.remove(str);
            }
            if (c0161g5.c.get(str) != null) {
                throw new ClassCastException();
            }
            K1 k12 = this.u;
            C0161g5 c0161g52 = (C0161g5) k12.c;
            ArrayList arrayList2 = c0161g52.d;
            String str2 = (String) k12.b;
            if (!arrayList2.contains(str2) && (num2 = (Integer) c0161g52.b.remove(str2)) != null) {
                c0161g52.a.remove(num2);
            }
            c0161g52.e.remove(str2);
            HashMap hashMap2 = c0161g52.f;
            if (hashMap2.containsKey(str2)) {
                StringBuilder l3 = AbstractC0407pi.l("Dropping pending result for request ", str2, ": ");
                l3.append(hashMap2.get(str2));
                Log.w("ActivityResultRegistry", l3.toString());
                hashMap2.remove(str2);
            }
            Bundle bundle2 = c0161g52.g;
            if (bundle2.containsKey(str2)) {
                StringBuilder l4 = AbstractC0407pi.l("Dropping pending result for request ", str2, ": ");
                l4.append(bundle2.getParcelable(str2));
                Log.w("ActivityResultRegistry", l4.toString());
                bundle2.remove(str2);
            }
            if (c0161g52.c.get(str2) != null) {
                throw new ClassCastException();
            }
            K1 k13 = this.v;
            C0161g5 c0161g53 = (C0161g5) k13.c;
            ArrayList arrayList3 = c0161g53.d;
            String str3 = (String) k13.b;
            if (!arrayList3.contains(str3) && (num = (Integer) c0161g53.b.remove(str3)) != null) {
                c0161g53.a.remove(num);
            }
            c0161g53.e.remove(str3);
            HashMap hashMap3 = c0161g53.f;
            if (hashMap3.containsKey(str3)) {
                StringBuilder l5 = AbstractC0407pi.l("Dropping pending result for request ", str3, ": ");
                l5.append(hashMap3.get(str3));
                Log.w("ActivityResultRegistry", l5.toString());
                hashMap3.remove(str3);
            }
            Bundle bundle3 = c0161g53.g;
            if (bundle3.containsKey(str3)) {
                StringBuilder l6 = AbstractC0407pi.l("Dropping pending result for request ", str3, ": ");
                l6.append(bundle3.getParcelable(str3));
                Log.w("ActivityResultRegistry", l6.toString());
                bundle3.remove(str3);
            }
            if (c0161g53.c.get(str3) != null) {
                throw new ClassCastException();
            }
        }
    }

    public final void l() {
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                abstractComponentCallbacksC0598x9.C = true;
                abstractComponentCallbacksC0598x9.t.l();
            }
        }
    }

    public final void m(boolean z) {
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                abstractComponentCallbacksC0598x9.t.m(z);
            }
        }
    }

    public final boolean n() {
        if (this.m < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                if (!abstractComponentCallbacksC0598x9.y ? abstractComponentCallbacksC0598x9.t.n() : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void o() {
        if (this.m < 1) {
            return;
        }
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null && !abstractComponentCallbacksC0598x9.y) {
                abstractComponentCallbacksC0598x9.t.o();
            }
        }
    }

    public final void p(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (abstractComponentCallbacksC0598x9 != null) {
            if (abstractComponentCallbacksC0598x9.equals(this.c.d(abstractComponentCallbacksC0598x9.e))) {
                abstractComponentCallbacksC0598x9.r.getClass();
                boolean G = G(abstractComponentCallbacksC0598x9);
                Boolean bool = abstractComponentCallbacksC0598x9.j;
                if (bool == null || bool.booleanValue() != G) {
                    abstractComponentCallbacksC0598x9.j = Boolean.valueOf(G);
                    J9 j9 = abstractComponentCallbacksC0598x9.t;
                    j9.W();
                    j9.p(j9.q);
                }
            }
        }
    }

    public final void q(boolean z) {
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null) {
                abstractComponentCallbacksC0598x9.t.q(z);
            }
        }
    }

    public final boolean r() {
        if (this.m < 1) {
            return false;
        }
        boolean z = false;
        for (AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 : this.c.k()) {
            if (abstractComponentCallbacksC0598x9 != null && F(abstractComponentCallbacksC0598x9)) {
                if (!abstractComponentCallbacksC0598x9.y ? abstractComponentCallbacksC0598x9.t.r() : false) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final void s(int i) {
        try {
            this.b = true;
            for (a aVar : ((HashMap) this.c.a).values()) {
                if (aVar != null) {
                    aVar.e = i;
                }
            }
            H(i, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((Z6) it.next()).e();
            }
            this.b = false;
            x(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void t() {
        if (this.B) {
            this.B = false;
            V();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.p;
        if (abstractComponentCallbacksC0598x9 != null) {
            sb.append(abstractComponentCallbacksC0598x9.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.p)));
            sb.append("}");
        } else {
            C0623y9 c0623y9 = this.n;
            if (c0623y9 != null) {
                sb.append(c0623y9.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.n)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2;
        String i = AbstractC0407pi.i(str, "    ");
        C0491t2 c0491t2 = this.c;
        c0491t2.getClass();
        String str3 = str + "    ";
        HashMap hashMap = (HashMap) c0491t2.a;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (a aVar : hashMap.values()) {
                printWriter.print(str);
                if (aVar != null) {
                    AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
                    printWriter.println(abstractComponentCallbacksC0598x9);
                    abstractComponentCallbacksC0598x9.getClass();
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC0598x9.v));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC0598x9.w));
                    printWriter.print(" mTag=");
                    printWriter.println(abstractComponentCallbacksC0598x9.x);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(abstractComponentCallbacksC0598x9.a);
                    printWriter.print(" mWho=");
                    printWriter.print(abstractComponentCallbacksC0598x9.e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(abstractComponentCallbacksC0598x9.q);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(abstractComponentCallbacksC0598x9.k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(abstractComponentCallbacksC0598x9.l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(abstractComponentCallbacksC0598x9.m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(abstractComponentCallbacksC0598x9.n);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(abstractComponentCallbacksC0598x9.y);
                    printWriter.print(" mDetached=");
                    printWriter.print(abstractComponentCallbacksC0598x9.z);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(abstractComponentCallbacksC0598x9.B);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(abstractComponentCallbacksC0598x9.A);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(abstractComponentCallbacksC0598x9.G);
                    if (abstractComponentCallbacksC0598x9.r != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(abstractComponentCallbacksC0598x9.r);
                    }
                    if (abstractComponentCallbacksC0598x9.s != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(abstractComponentCallbacksC0598x9.s);
                    }
                    if (abstractComponentCallbacksC0598x9.u != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(abstractComponentCallbacksC0598x9.u);
                    }
                    if (abstractComponentCallbacksC0598x9.f != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(abstractComponentCallbacksC0598x9.f);
                    }
                    if (abstractComponentCallbacksC0598x9.b != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(abstractComponentCallbacksC0598x9.b);
                    }
                    if (abstractComponentCallbacksC0598x9.c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(abstractComponentCallbacksC0598x9.c);
                    }
                    if (abstractComponentCallbacksC0598x9.d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(abstractComponentCallbacksC0598x9.d);
                    }
                    Object obj = abstractComponentCallbacksC0598x9.g;
                    if (obj == null) {
                        J9 j9 = abstractComponentCallbacksC0598x9.r;
                        obj = (j9 == null || (str2 = abstractComponentCallbacksC0598x9.h) == null) ? null : j9.c.d(str2);
                    }
                    if (obj != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(obj);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(abstractComponentCallbacksC0598x9.i);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    C0573w9 c0573w9 = abstractComponentCallbacksC0598x9.H;
                    printWriter.println(c0573w9 == null ? false : c0573w9.a);
                    C0573w9 c0573w92 = abstractComponentCallbacksC0598x9.H;
                    if ((c0573w92 == null ? 0 : c0573w92.b) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        C0573w9 c0573w93 = abstractComponentCallbacksC0598x9.H;
                        printWriter.println(c0573w93 == null ? 0 : c0573w93.b);
                    }
                    C0573w9 c0573w94 = abstractComponentCallbacksC0598x9.H;
                    if ((c0573w94 == null ? 0 : c0573w94.c) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        C0573w9 c0573w95 = abstractComponentCallbacksC0598x9.H;
                        printWriter.println(c0573w95 == null ? 0 : c0573w95.c);
                    }
                    C0573w9 c0573w96 = abstractComponentCallbacksC0598x9.H;
                    if ((c0573w96 == null ? 0 : c0573w96.d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        C0573w9 c0573w97 = abstractComponentCallbacksC0598x9.H;
                        printWriter.println(c0573w97 == null ? 0 : c0573w97.d);
                    }
                    C0573w9 c0573w98 = abstractComponentCallbacksC0598x9.H;
                    if ((c0573w98 == null ? 0 : c0573w98.e) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        C0573w9 c0573w99 = abstractComponentCallbacksC0598x9.H;
                        printWriter.println(c0573w99 == null ? 0 : c0573w99.e);
                    }
                    if (abstractComponentCallbacksC0598x9.D != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(abstractComponentCallbacksC0598x9.D);
                    }
                    if (abstractComponentCallbacksC0598x9.E != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(abstractComponentCallbacksC0598x9.E);
                    }
                    if (abstractComponentCallbacksC0598x9.h() != null) {
                        new K1(abstractComponentCallbacksC0598x9, abstractComponentCallbacksC0598x9.c()).u(str3, printWriter);
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + abstractComponentCallbacksC0598x9.t + ":");
                    abstractComponentCallbacksC0598x9.t.u(AbstractC0407pi.i(str3, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = (ArrayList) c0491t2.b;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size3; i2++) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = (AbstractComponentCallbacksC0598x9) arrayList.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0598x92.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size2; i3++) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = (AbstractComponentCallbacksC0598x9) this.e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0598x93.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size; i4++) {
                C0133f3 c0133f3 = (C0133f3) this.d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(c0133f3.toString());
                c0133f3.d(i, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            try {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        Object obj2 = (H9) this.a.get(i5);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(obj2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.y);
        printWriter.print(" mStopped=");
        printWriter.print(this.z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.x);
        }
    }

    public final void v(H9 h9, boolean z) {
        if (!z) {
            if (this.n == null) {
                if (!this.A) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.y || this.z) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.a) {
            try {
                if (this.n == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.a.add(h9);
                    P();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(boolean z) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.n == null) {
            if (!this.A) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.n.t.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && (this.y || this.z)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.C == null) {
            this.C = new ArrayList();
            this.D = new ArrayList();
        }
        this.b = false;
    }

    public final boolean x(boolean z) {
        boolean z2;
        w(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.C;
            ArrayList arrayList2 = this.D;
            synchronized (this.a) {
                try {
                    if (this.a.isEmpty()) {
                        z2 = false;
                    } else {
                        int size = this.a.size();
                        z2 = false;
                        for (int i = 0; i < size; i++) {
                            z2 |= ((H9) this.a.get(i)).a(arrayList, arrayList2);
                        }
                        this.a.clear();
                        this.n.t.removeCallbacks(this.G);
                    }
                } finally {
                }
            }
            if (!z2) {
                W();
                t();
                ((HashMap) this.c.a).values().removeAll(Collections.singleton(null));
                return z3;
            }
            z3 = true;
            this.b = true;
            try {
                M(this.C, this.D);
            } finally {
                d();
            }
        }
    }

    public final void y(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        C0491t2 c0491t2;
        C0491t2 c0491t22;
        C0491t2 c0491t23;
        int i3;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z = ((C0133f3) arrayList3.get(i)).o;
        ArrayList arrayList5 = this.E;
        if (arrayList5 == null) {
            this.E = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.E;
        C0491t2 c0491t24 = this.c;
        arrayList6.addAll(c0491t24.k());
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = this.q;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            int i5 = 1;
            if (i4 >= i2) {
                C0491t2 c0491t25 = c0491t24;
                this.E.clear();
                if (!z && this.m >= 1) {
                    for (int i6 = i; i6 < i2; i6++) {
                        Iterator it = ((C0133f3) arrayList.get(i6)).a.iterator();
                        while (it.hasNext()) {
                            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = ((O9) it.next()).b;
                            if (abstractComponentCallbacksC0598x92 == null || abstractComponentCallbacksC0598x92.r == null) {
                                c0491t2 = c0491t25;
                            } else {
                                c0491t2 = c0491t25;
                                c0491t2.n(f(abstractComponentCallbacksC0598x92));
                            }
                            c0491t25 = c0491t2;
                        }
                    }
                }
                for (int i7 = i; i7 < i2; i7++) {
                    C0133f3 c0133f3 = (C0133f3) arrayList.get(i7);
                    if (((Boolean) arrayList2.get(i7)).booleanValue()) {
                        c0133f3.c(-1);
                        ArrayList arrayList7 = c0133f3.a;
                        for (int size = arrayList7.size() - 1; size >= 0; size--) {
                            O9 o9 = (O9) arrayList7.get(size);
                            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x93 = o9.b;
                            if (abstractComponentCallbacksC0598x93 != null) {
                                if (abstractComponentCallbacksC0598x93.H != null) {
                                    abstractComponentCallbacksC0598x93.f().a = true;
                                }
                                int i8 = c0133f3.f;
                                int i9 = i8 != 4097 ? i8 != 4099 ? i8 != 8194 ? 0 : 4097 : 4099 : 8194;
                                if (abstractComponentCallbacksC0598x93.H != null || i9 != 0) {
                                    abstractComponentCallbacksC0598x93.f();
                                    abstractComponentCallbacksC0598x93.H.f = i9;
                                }
                                abstractComponentCallbacksC0598x93.f();
                                abstractComponentCallbacksC0598x93.H.getClass();
                            }
                            int i10 = o9.a;
                            J9 j9 = c0133f3.p;
                            switch (i10) {
                                case 1:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.Q(abstractComponentCallbacksC0598x93, true);
                                    j9.L(abstractComponentCallbacksC0598x93);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + o9.a);
                                case 3:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.a(abstractComponentCallbacksC0598x93);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.getClass();
                                    U(abstractComponentCallbacksC0598x93);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.Q(abstractComponentCallbacksC0598x93, true);
                                    j9.D(abstractComponentCallbacksC0598x93);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.c(abstractComponentCallbacksC0598x93);
                                    break;
                                case 7:
                                    abstractComponentCallbacksC0598x93.z(o9.c, o9.d, o9.e, o9.f);
                                    j9.Q(abstractComponentCallbacksC0598x93, true);
                                    j9.g(abstractComponentCallbacksC0598x93);
                                    break;
                                case 8:
                                    j9.S(null);
                                    break;
                                case 9:
                                    j9.S(abstractComponentCallbacksC0598x93);
                                    break;
                                case 10:
                                    j9.R(abstractComponentCallbacksC0598x93, o9.g);
                                    break;
                            }
                        }
                    } else {
                        c0133f3.c(1);
                        ArrayList arrayList8 = c0133f3.a;
                        int size2 = arrayList8.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            O9 o92 = (O9) arrayList8.get(i11);
                            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x94 = o92.b;
                            if (abstractComponentCallbacksC0598x94 != null) {
                                if (abstractComponentCallbacksC0598x94.H != null) {
                                    abstractComponentCallbacksC0598x94.f().a = false;
                                }
                                int i12 = c0133f3.f;
                                if (abstractComponentCallbacksC0598x94.H != null || i12 != 0) {
                                    abstractComponentCallbacksC0598x94.f();
                                    abstractComponentCallbacksC0598x94.H.f = i12;
                                }
                                abstractComponentCallbacksC0598x94.f();
                                abstractComponentCallbacksC0598x94.H.getClass();
                            }
                            int i13 = o92.a;
                            J9 j92 = c0133f3.p;
                            switch (i13) {
                                case 1:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.Q(abstractComponentCallbacksC0598x94, false);
                                    j92.a(abstractComponentCallbacksC0598x94);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + o92.a);
                                case 3:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.L(abstractComponentCallbacksC0598x94);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.D(abstractComponentCallbacksC0598x94);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.Q(abstractComponentCallbacksC0598x94, false);
                                    U(abstractComponentCallbacksC0598x94);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.g(abstractComponentCallbacksC0598x94);
                                    break;
                                case 7:
                                    abstractComponentCallbacksC0598x94.z(o92.c, o92.d, o92.e, o92.f);
                                    j92.Q(abstractComponentCallbacksC0598x94, false);
                                    j92.c(abstractComponentCallbacksC0598x94);
                                    break;
                                case 8:
                                    j92.S(abstractComponentCallbacksC0598x94);
                                    break;
                                case 9:
                                    j92.S(null);
                                    break;
                                case 10:
                                    j92.R(abstractComponentCallbacksC0598x94, o92.h);
                                    break;
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i14 = i; i14 < i2; i14++) {
                    C0133f3 c0133f32 = (C0133f3) arrayList.get(i14);
                    if (booleanValue) {
                        for (int size3 = c0133f32.a.size() - 1; size3 >= 0; size3--) {
                            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x95 = ((O9) c0133f32.a.get(size3)).b;
                            if (abstractComponentCallbacksC0598x95 != null) {
                                f(abstractComponentCallbacksC0598x95).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0133f32.a.iterator();
                        while (it2.hasNext()) {
                            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x96 = ((O9) it2.next()).b;
                            if (abstractComponentCallbacksC0598x96 != null) {
                                f(abstractComponentCallbacksC0598x96).k();
                            }
                        }
                    }
                }
                H(this.m, true);
                HashSet hashSet = new HashSet();
                for (int i15 = i; i15 < i2; i15++) {
                    Iterator it3 = ((C0133f3) arrayList.get(i15)).a.iterator();
                    while (it3.hasNext()) {
                        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x97 = ((O9) it3.next()).b;
                        if (abstractComponentCallbacksC0598x97 != null && (viewGroup = abstractComponentCallbacksC0598x97.D) != null) {
                            hashSet.add(Z6.f(viewGroup, C()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    Z6 z6 = (Z6) it4.next();
                    z6.d = booleanValue;
                    synchronized (z6.b) {
                        try {
                            z6.g();
                            z6.e = false;
                            int size4 = z6.b.size() - 1;
                            while (true) {
                                if (size4 >= 0) {
                                    C0557vi c0557vi = (C0557vi) z6.b.get(size4);
                                    int c = AbstractC0407pi.c(c0557vi.c.E);
                                    if (c0557vi.a != 2 || c == 2) {
                                        size4--;
                                    } else {
                                        c0557vi.c.getClass();
                                        z6.e = false;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    z6.c();
                }
                for (int i16 = i; i16 < i2; i16++) {
                    C0133f3 c0133f33 = (C0133f3) arrayList.get(i16);
                    if (((Boolean) arrayList2.get(i16)).booleanValue() && c0133f33.r >= 0) {
                        c0133f33.r = -1;
                    }
                    c0133f33.getClass();
                }
                return;
            }
            C0133f3 c0133f34 = (C0133f3) arrayList3.get(i4);
            if (((Boolean) arrayList4.get(i4)).booleanValue()) {
                c0491t22 = c0491t24;
                int i17 = 1;
                ArrayList arrayList9 = this.E;
                ArrayList arrayList10 = c0133f34.a;
                int size5 = arrayList10.size() - 1;
                while (size5 >= 0) {
                    O9 o93 = (O9) arrayList10.get(size5);
                    int i18 = o93.a;
                    if (i18 != i17) {
                        if (i18 != 3) {
                            switch (i18) {
                                case 8:
                                    abstractComponentCallbacksC0598x9 = null;
                                    break;
                                case 9:
                                    abstractComponentCallbacksC0598x9 = o93.b;
                                    break;
                                case 10:
                                    o93.h = o93.g;
                                    break;
                            }
                            size5--;
                            i17 = 1;
                        }
                        arrayList9.add(o93.b);
                        size5--;
                        i17 = 1;
                    }
                    arrayList9.remove(o93.b);
                    size5--;
                    i17 = 1;
                }
            } else {
                ArrayList arrayList11 = this.E;
                int i19 = 0;
                while (true) {
                    ArrayList arrayList12 = c0133f34.a;
                    if (i19 < arrayList12.size()) {
                        O9 o94 = (O9) arrayList12.get(i19);
                        int i20 = o94.a;
                        if (i20 != i5) {
                            if (i20 != 2) {
                                if (i20 == 3 || i20 == 6) {
                                    arrayList11.remove(o94.b);
                                    AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x98 = o94.b;
                                    if (abstractComponentCallbacksC0598x98 == abstractComponentCallbacksC0598x9) {
                                        arrayList12.add(i19, new O9(9, abstractComponentCallbacksC0598x98));
                                        i19++;
                                        c0491t23 = c0491t24;
                                        i3 = 1;
                                        abstractComponentCallbacksC0598x9 = null;
                                    }
                                } else if (i20 == 7) {
                                    c0491t23 = c0491t24;
                                    i3 = 1;
                                } else if (i20 == 8) {
                                    arrayList12.add(i19, new O9(9, abstractComponentCallbacksC0598x9));
                                    i19++;
                                    abstractComponentCallbacksC0598x9 = o94.b;
                                }
                                c0491t23 = c0491t24;
                                i3 = 1;
                            } else {
                                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x99 = o94.b;
                                int i21 = abstractComponentCallbacksC0598x99.w;
                                int size6 = arrayList11.size() - 1;
                                boolean z3 = false;
                                while (size6 >= 0) {
                                    C0491t2 c0491t26 = c0491t24;
                                    AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x910 = (AbstractComponentCallbacksC0598x9) arrayList11.get(size6);
                                    if (abstractComponentCallbacksC0598x910.w == i21) {
                                        if (abstractComponentCallbacksC0598x910 == abstractComponentCallbacksC0598x99) {
                                            z3 = true;
                                        } else {
                                            if (abstractComponentCallbacksC0598x910 == abstractComponentCallbacksC0598x9) {
                                                arrayList12.add(i19, new O9(9, abstractComponentCallbacksC0598x910));
                                                i19++;
                                                abstractComponentCallbacksC0598x9 = null;
                                            }
                                            O9 o95 = new O9(3, abstractComponentCallbacksC0598x910);
                                            o95.c = o94.c;
                                            o95.e = o94.e;
                                            o95.d = o94.d;
                                            o95.f = o94.f;
                                            arrayList12.add(i19, o95);
                                            arrayList11.remove(abstractComponentCallbacksC0598x910);
                                            i19++;
                                            abstractComponentCallbacksC0598x9 = abstractComponentCallbacksC0598x9;
                                        }
                                    }
                                    size6--;
                                    c0491t24 = c0491t26;
                                }
                                c0491t23 = c0491t24;
                                i3 = 1;
                                if (z3) {
                                    arrayList12.remove(i19);
                                    i19--;
                                } else {
                                    o94.a = 1;
                                    arrayList11.add(abstractComponentCallbacksC0598x99);
                                }
                            }
                            i19 += i3;
                            i5 = i3;
                            c0491t24 = c0491t23;
                        } else {
                            c0491t23 = c0491t24;
                            i3 = i5;
                        }
                        arrayList11.add(o94.b);
                        i19 += i3;
                        i5 = i3;
                        c0491t24 = c0491t23;
                    } else {
                        c0491t22 = c0491t24;
                    }
                }
            }
            z2 = z2 || c0133f34.g;
            i4++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            c0491t24 = c0491t22;
        }
    }

    public final AbstractComponentCallbacksC0598x9 z(int i) {
        C0491t2 c0491t2 = this.c;
        ArrayList arrayList = (ArrayList) c0491t2.b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = (AbstractComponentCallbacksC0598x9) arrayList.get(size);
            if (abstractComponentCallbacksC0598x9 != null && abstractComponentCallbacksC0598x9.v == i) {
                return abstractComponentCallbacksC0598x9;
            }
        }
        for (a aVar : ((HashMap) c0491t2.a).values()) {
            if (aVar != null) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = aVar.c;
                if (abstractComponentCallbacksC0598x92.v == i) {
                    return abstractComponentCallbacksC0598x92;
                }
            }
        }
        return null;
    }
}
