package androidx.lifecycle;

import android.os.Looper;
import defpackage.AbstractC0091dc;
import defpackage.AbstractC0348nb;
import defpackage.C0065cc;
import defpackage.C0406ph;
import defpackage.InterfaceC0013ac;
import defpackage.InterfaceC0039bc;
import defpackage.InterfaceC0549va;
import defpackage.R6;
import defpackage.S2;
import defpackage.Tb;
import defpackage.Vb;
import defpackage.W8;
import defpackage.Wb;
import defpackage.Zb;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class a {
    public final boolean a;
    public W8 b;
    public Wb c;
    public final WeakReference d;
    public int e;
    public boolean f;
    public boolean g;
    public final ArrayList h;

    public a(InterfaceC0039bc interfaceC0039bc) {
        new AtomicReference();
        this.a = true;
        this.b = new W8();
        this.c = Wb.b;
        this.h = new ArrayList();
        this.d = new WeakReference(interfaceC0039bc);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [cc, java.lang.Object] */
    public final void a(InterfaceC0013ac interfaceC0013ac) {
        Zb reflectiveGenericLifecycleObserver;
        InterfaceC0039bc interfaceC0039bc;
        ArrayList arrayList = this.h;
        Object obj = null;
        c("addObserver");
        Wb wb = this.c;
        Wb wb2 = Wb.a;
        if (wb != wb2) {
            wb2 = Wb.b;
        }
        ?? obj2 = new Object();
        HashMap hashMap = AbstractC0091dc.a;
        boolean z = interfaceC0013ac instanceof Zb;
        boolean z2 = interfaceC0013ac instanceof R6;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((R6) interfaceC0013ac, (Zb) interfaceC0013ac);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((R6) interfaceC0013ac, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (Zb) interfaceC0013ac;
        } else {
            Class<?> cls = interfaceC0013ac.getClass();
            if (AbstractC0091dc.b(cls) == 2) {
                Object obj3 = AbstractC0091dc.b.get(cls);
                AbstractC0348nb.o(obj3);
                List list = (List) obj3;
                if (list.size() == 1) {
                    AbstractC0091dc.a((Constructor) list.get(0), interfaceC0013ac);
                    throw null;
                }
                int size = list.size();
                InterfaceC0549va[] interfaceC0549vaArr = new InterfaceC0549va[size];
                if (size > 0) {
                    AbstractC0091dc.a((Constructor) list.get(0), interfaceC0013ac);
                    throw null;
                }
                reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(interfaceC0549vaArr);
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(interfaceC0013ac);
            }
        }
        obj2.b = reflectiveGenericLifecycleObserver;
        obj2.a = wb2;
        W8 w8 = this.b;
        C0406ph a = w8.a(interfaceC0013ac);
        if (a != null) {
            obj = a.b;
        } else {
            HashMap hashMap2 = w8.e;
            C0406ph c0406ph = new C0406ph(interfaceC0013ac, obj2);
            w8.d++;
            C0406ph c0406ph2 = w8.b;
            if (c0406ph2 == null) {
                w8.a = c0406ph;
                w8.b = c0406ph;
            } else {
                c0406ph2.c = c0406ph;
                c0406ph.d = c0406ph2;
                w8.b = c0406ph;
            }
            hashMap2.put(interfaceC0013ac, c0406ph);
        }
        if (((C0065cc) obj) == null && (interfaceC0039bc = (InterfaceC0039bc) this.d.get()) != null) {
            boolean z3 = this.e != 0 || this.f;
            Wb b = b(interfaceC0013ac);
            this.e++;
            while (obj2.a.compareTo(b) < 0 && this.b.e.containsKey(interfaceC0013ac)) {
                arrayList.add(obj2.a);
                Tb tb = Vb.Companion;
                Wb wb3 = obj2.a;
                tb.getClass();
                Vb a2 = Tb.a(wb3);
                if (a2 == null) {
                    throw new IllegalStateException("no event up from " + obj2.a);
                }
                obj2.a(interfaceC0039bc, a2);
                arrayList.remove(arrayList.size() - 1);
                b = b(interfaceC0013ac);
            }
            if (!z3) {
                h();
            }
            this.e--;
        }
    }

    public final Wb b(InterfaceC0013ac interfaceC0013ac) {
        HashMap hashMap = this.b.e;
        C0406ph c0406ph = hashMap.containsKey(interfaceC0013ac) ? ((C0406ph) hashMap.get(interfaceC0013ac)).d : null;
        Wb wb = c0406ph != null ? ((C0065cc) c0406ph.b).a : null;
        ArrayList arrayList = this.h;
        Wb wb2 = arrayList.isEmpty() ? null : (Wb) arrayList.get(arrayList.size() - 1);
        Wb wb3 = this.c;
        AbstractC0348nb.r(wb3, "state1");
        if (wb == null || wb.compareTo(wb3) >= 0) {
            wb = wb3;
        }
        return (wb2 == null || wb2.compareTo(wb) >= 0) ? wb : wb2;
    }

    public final void c(String str) {
        if (this.a) {
            ((S2) S2.H().a).getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
        }
    }

    public final void d(Vb vb) {
        AbstractC0348nb.r(vb, "event");
        c("handleLifecycleEvent");
        e(vb.a());
    }

    public final void e(Wb wb) {
        Wb wb2 = this.c;
        if (wb2 == wb) {
            return;
        }
        Wb wb3 = Wb.b;
        Wb wb4 = Wb.a;
        if (wb2 == wb3 && wb == wb4) {
            throw new IllegalStateException(("no event down from " + this.c + " in component " + this.d.get()).toString());
        }
        this.c = wb;
        if (this.f || this.e != 0) {
            this.g = true;
            return;
        }
        this.f = true;
        h();
        this.f = false;
        if (this.c == wb4) {
            this.b = new W8();
        }
    }

    public final void f(InterfaceC0013ac interfaceC0013ac) {
        c("removeObserver");
        this.b.b(interfaceC0013ac);
    }

    public final void g() {
        Wb wb = Wb.c;
        c("setCurrentState");
        e(wb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r7.g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.a.h():void");
    }
}
