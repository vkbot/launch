package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleController;
import androidx.lifecycle.a;
import defpackage.AbstractC0348nb;
import defpackage.AbstractC0412pn;
import defpackage.C0183h1;
import defpackage.C0462rn;
import defpackage.InterfaceC0039bc;
import defpackage.InterfaceC0487sn;
import defpackage.InterfaceC0581wh;
import defpackage.InterfaceC0631yh;
import defpackage.Rb;
import defpackage.Vb;
import defpackage.Z0;
import defpackage.Zb;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class Recreator implements Zb {
    public final InterfaceC0631yh a;

    public Recreator(InterfaceC0631yh interfaceC0631yh) {
        this.a = interfaceC0631yh;
    }

    @Override // defpackage.Zb
    public final void b(InterfaceC0039bc interfaceC0039bc, Vb vb) {
        Object obj;
        boolean z;
        if (vb != Vb.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        interfaceC0039bc.d().f(this);
        Bundle c = this.a.b().c("androidx.savedstate.Restarter");
        if (c == null) {
            return;
        }
        ArrayList<String> stringArrayList = c.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(InterfaceC0581wh.class);
                AbstractC0348nb.q(asSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object newInstance = declaredConstructor.newInstance(null);
                        AbstractC0348nb.q(newInstance, "{\n                constr…wInstance()\n            }");
                        InterfaceC0631yh interfaceC0631yh = this.a;
                        if (!(interfaceC0631yh instanceof InterfaceC0487sn)) {
                            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                        }
                        C0462rn c2 = ((InterfaceC0487sn) interfaceC0631yh).c();
                        C0183h1 b = interfaceC0631yh.b();
                        c2.getClass();
                        Iterator it = new HashSet(c2.a.keySet()).iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            AbstractC0348nb.r(str2, "key");
                            AbstractC0412pn abstractC0412pn = (AbstractC0412pn) c2.a.get(str2);
                            AbstractC0348nb.o(abstractC0412pn);
                            a d = interfaceC0631yh.d();
                            AbstractC0348nb.r(b, "registry");
                            AbstractC0348nb.r(d, "lifecycle");
                            HashMap hashMap = abstractC0412pn.a;
                            if (hashMap == null) {
                                obj = null;
                            } else {
                                synchronized (hashMap) {
                                    obj = abstractC0412pn.a.get("androidx.lifecycle.savedstate.vm.tag");
                                }
                            }
                            SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
                            if (savedStateHandleController != null && !(z = savedStateHandleController.a)) {
                                if (z) {
                                    throw new IllegalStateException("Already attached to lifecycleOwner");
                                }
                                savedStateHandleController.a = true;
                                d.a(savedStateHandleController);
                                throw null;
                            }
                        }
                        if (!new HashSet(c2.a.keySet()).isEmpty()) {
                            if (!b.e) {
                                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                            }
                            Z0 z0 = (Z0) b.b;
                            if (z0 == null) {
                                z0 = new Z0(b);
                            }
                            b.b = z0;
                            try {
                                Rb.class.getDeclaredConstructor(null);
                                Z0 z02 = (Z0) b.b;
                                if (z02 != null) {
                                    ((LinkedHashSet) z02.b).add(Rb.class.getName());
                                }
                            } catch (NoSuchMethodException e) {
                                throw new IllegalArgumentException("Class " + Rb.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
                            }
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException("Failed to instantiate " + str, e2);
                    }
                } catch (NoSuchMethodException e3) {
                    throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
                }
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException("Class " + str + " wasn't found", e4);
            }
        }
    }
}
