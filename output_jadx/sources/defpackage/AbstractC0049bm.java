package defpackage;

import android.view.ViewGroup;
import com.omoda.launcher.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: bm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0049bm {
    public static final C0056c3 a;
    public static final ThreadLocal b;
    public static final ArrayList c;

    /* JADX WARN: Type inference failed for: r0v0, types: [c3, Xl] */
    static {
        ?? xl = new Xl();
        xl.w = new ArrayList();
        xl.x = true;
        xl.z = false;
        xl.A = 0;
        xl.x = false;
        xl.F(new S8(2));
        xl.F(new Xl());
        xl.F(new S8(1));
        a = xl;
        b = new ThreadLocal();
        c = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.ViewTreeObserver$OnPreDrawListener, java.lang.Object, android.view.View$OnAttachStateChangeListener, am] */
    public static void a(ViewGroup viewGroup, Xl xl) {
        ArrayList arrayList = c;
        if (arrayList.contains(viewGroup)) {
            return;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        if (Um.c(viewGroup)) {
            arrayList.add(viewGroup);
            if (xl == null) {
                xl = a;
            }
            Xl clone = xl.clone();
            ArrayList arrayList2 = (ArrayList) b().getOrDefault(viewGroup, null);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Xl) it.next()).t(viewGroup);
                }
            }
            if (clone != null) {
                clone.g(viewGroup, true);
            }
            if (viewGroup.getTag(R.id.transition_current_scene) != null) {
                throw new ClassCastException();
            }
            viewGroup.setTag(R.id.transition_current_scene, null);
            if (clone != null) {
                ?? obj = new Object();
                obj.a = clone;
                obj.b = viewGroup;
                viewGroup.addOnAttachStateChangeListener(obj);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(obj);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, W2, ki] */
    public static W2 b() {
        W2 w2;
        ThreadLocal threadLocal = b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (w2 = (W2) weakReference.get()) != null) {
            return w2;
        }
        ?? c0277ki = new C0277ki();
        threadLocal.set(new WeakReference(c0277ki));
        return c0277ki;
    }
}
