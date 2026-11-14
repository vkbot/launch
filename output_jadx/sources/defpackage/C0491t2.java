package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.a;
import com.omoda.launcher.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: t2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0491t2 implements O3 {
    public static volatile C0491t2 d;
    public static final Object e = new Object();
    public static C0491t2 f;
    public Object a;
    public Object b;
    public Object c;

    public /* synthetic */ C0491t2(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, t2] */
    public static C0491t2 m(Context context) {
        if (d == null) {
            synchronized (e) {
                try {
                    if (d == null) {
                        ?? obj = new Object();
                        obj.c = context.getApplicationContext();
                        obj.b = new HashSet();
                        obj.a = new HashMap();
                        d = obj;
                    }
                } finally {
                }
            }
        }
        return d;
    }

    public static C0491t2 q(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new C0491t2(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public void a(AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9) {
        if (((ArrayList) this.b).contains(abstractComponentCallbacksC0598x9)) {
            throw new IllegalStateException("Fragment already added: " + abstractComponentCallbacksC0598x9);
        }
        synchronized (((ArrayList) this.b)) {
            ((ArrayList) this.b).add(abstractComponentCallbacksC0598x9);
        }
        abstractComponentCallbacksC0598x9.k = true;
    }

    public void b(Bundle bundle) {
        HashSet hashSet;
        String string = ((Context) this.c).getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = (HashSet) this.b;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (Ya.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    c((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public Object c(Class cls, HashSet hashSet) {
        Object obj;
        if (AbstractC0554vf.k()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        HashMap hashMap = (HashMap) this.a;
        if (hashMap.containsKey(cls)) {
            obj = hashMap.get(cls);
        } else {
            hashSet.add(cls);
            try {
                Ya ya = (Ya) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> a = ya.a();
                if (!a.isEmpty()) {
                    for (Class cls2 : a) {
                        if (!hashMap.containsKey(cls2)) {
                            c(cls2, hashSet);
                        }
                    }
                }
                obj = ya.b((Context) this.c);
                hashSet.remove(cls);
                hashMap.put(cls, obj);
            } catch (Throwable th2) {
                throw new RuntimeException(th2);
            }
        }
        Trace.endSection();
        return obj;
    }

    public AbstractComponentCallbacksC0598x9 d(String str) {
        a aVar = (a) ((HashMap) this.a).get(str);
        if (aVar != null) {
            return aVar.c;
        }
        return null;
    }

    public AbstractComponentCallbacksC0598x9 e(String str) {
        for (a aVar : ((HashMap) this.a).values()) {
            if (aVar != null) {
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
                if (!str.equals(abstractComponentCallbacksC0598x9.e)) {
                    abstractComponentCallbacksC0598x9 = abstractComponentCallbacksC0598x9.t.c.e(str);
                }
                if (abstractComponentCallbacksC0598x9 != null) {
                    return abstractComponentCallbacksC0598x9;
                }
            }
        }
        return null;
    }

    public ArrayList f() {
        ArrayList arrayList = new ArrayList();
        for (a aVar : ((HashMap) this.a).values()) {
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public ColorStateList g(int i) {
        int resourceId;
        ColorStateList m;
        TypedArray typedArray = (TypedArray) this.a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m = AbstractC0152fm.m((Context) this.c, resourceId)) == null) ? typedArray.getColorStateList(i) : m;
    }

    public Drawable h(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : C6.n((Context) this.c, resourceId);
    }

    public Drawable i(int i) {
        int resourceId;
        Drawable d2;
        if (!((TypedArray) this.a).hasValue(i) || (resourceId = ((TypedArray) this.a).getResourceId(i, 0)) == 0) {
            return null;
        }
        B1 a = B1.a();
        Context context = (Context) this.c;
        synchronized (a) {
            d2 = a.a.d(context, resourceId, true);
        }
        return d2;
    }

    public Typeface j(int i, int i2, C0081d2 c0081d2) {
        int resourceId = ((TypedArray) this.a).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.b) == null) {
            this.b = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.b;
        ThreadLocal threadLocal = AbstractC0147fh.a;
        Context context = (Context) this.c;
        if (context.isRestricted()) {
            return null;
        }
        return AbstractC0147fh.b(context, resourceId, typedValue, i2, c0081d2, true, false);
    }

    public List k() {
        ArrayList arrayList;
        if (((ArrayList) this.b).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.b)) {
            arrayList = new ArrayList((ArrayList) this.b);
        }
        return arrayList;
    }

    @Override // defpackage.O3
    public void l() {
        View view = (View) this.a;
        view.clearAnimation();
        ((ViewGroup) this.b).endViewTransition(view);
        ((X6) this.c).d();
    }

    public void n(a aVar) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
        String str = abstractComponentCallbacksC0598x9.e;
        HashMap hashMap = (HashMap) this.a;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(abstractComponentCallbacksC0598x9.e, aVar);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + abstractComponentCallbacksC0598x9);
        }
    }

    public void o(a aVar) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = aVar.c;
        if (abstractComponentCallbacksC0598x9.A) {
            ((L9) this.c).b(abstractComponentCallbacksC0598x9);
        }
        if (((a) ((HashMap) this.a).put(abstractComponentCallbacksC0598x9.e, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + abstractComponentCallbacksC0598x9);
        }
    }

    public boolean p(int i, C0519u5 c0519u5, D5 d5) {
        int[] iArr = d5.p0;
        int i2 = iArr[0];
        C0392p3 c0392p3 = (C0392p3) this.b;
        c0392p3.a = i2;
        c0392p3.b = iArr[1];
        c0392p3.c = d5.q();
        c0392p3.d = d5.k();
        c0392p3.i = false;
        c0392p3.j = i;
        boolean z = c0392p3.a == 3;
        boolean z2 = c0392p3.b == 3;
        boolean z3 = z && d5.W > 0.0f;
        boolean z4 = z2 && d5.W > 0.0f;
        int[] iArr2 = d5.t;
        if (z3 && iArr2[0] == 4) {
            c0392p3.a = 1;
        }
        if (z4 && iArr2[1] == 4) {
            c0392p3.b = 1;
        }
        c0519u5.b(d5, c0392p3);
        d5.O(c0392p3.e);
        d5.L(c0392p3.f);
        d5.E = c0392p3.h;
        d5.I(c0392p3.g);
        c0392p3.j = 0;
        return c0392p3.i;
    }

    public void r() {
        ((TypedArray) this.a).recycle();
    }

    public void s(E5 e5, int i, int i2, int i3) {
        int i4 = e5.b0;
        int i5 = e5.c0;
        e5.b0 = 0;
        e5.c0 = 0;
        e5.O(i2);
        e5.L(i3);
        if (i4 < 0) {
            e5.b0 = 0;
        } else {
            e5.b0 = i4;
        }
        if (i5 < 0) {
            e5.c0 = 0;
        } else {
            e5.c0 = i5;
        }
        E5 e52 = (E5) this.c;
        e52.t0 = i;
        e52.U();
    }

    public void t(E5 e5) {
        ArrayList arrayList = (ArrayList) this.a;
        arrayList.clear();
        int size = e5.q0.size();
        for (int i = 0; i < size; i++) {
            D5 d5 = (D5) e5.q0.get(i);
            int[] iArr = d5.p0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(d5);
            }
        }
        e5.s0.b = true;
    }

    public C0491t2(Context context, TypedArray typedArray) {
        this.c = context;
        this.a = typedArray;
    }
}
