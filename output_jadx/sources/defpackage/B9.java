package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.a;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class B9 implements LayoutInflater.Factory2 {
    public final J9 a;

    public B9(J9 j9) {
        this.a = j9;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [android.widget.FrameLayout, android.view.View, androidx.fragment.app.FragmentContainerView, android.view.ViewGroup] */
    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        a f;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9;
        View view2;
        String str2;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        J9 j9 = this.a;
        if (equals) {
            ?? frameLayout = new FrameLayout(context, attributeSet);
            frameLayout.d = true;
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Wf.b);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
            }
            String string = obtainStyledAttributes.getString(1);
            obtainStyledAttributes.recycle();
            int id = frameLayout.getId();
            AbstractComponentCallbacksC0598x9 z2 = j9.z(id);
            if (classAttribute != null && z2 == null) {
                if (id <= 0) {
                    if (string != null) {
                        str2 = " with tag ".concat(string);
                    } else {
                        str2 = "";
                    }
                    throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str2);
                }
                E9 B = j9.B();
                context.getClassLoader();
                AbstractComponentCallbacksC0598x9 a = B.a(classAttribute);
                a.C = true;
                C0623y9 c0623y9 = a.s;
                if ((c0623y9 == null ? null : c0623y9.r) != null) {
                    a.C = true;
                }
                C0133f3 c0133f3 = new C0133f3(j9);
                c0133f3.o = true;
                a.D = frameLayout;
                int id2 = frameLayout.getId();
                Class<?> cls = a.getClass();
                int modifiers = cls.getModifiers();
                if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
                    if (string != null) {
                        String str3 = a.x;
                        if (str3 != null && !string.equals(str3)) {
                            throw new IllegalStateException("Can't change tag of fragment " + a + ": was " + a.x + " now " + string);
                        }
                        a.x = string;
                    }
                    if (id2 != 0) {
                        if (id2 == -1) {
                            throw new IllegalArgumentException("Can't add fragment " + a + " with tag " + string + " to container view with no id");
                        }
                        int i = a.v;
                        if (i != 0 && i != id2) {
                            throw new IllegalStateException("Can't change container ID of fragment " + a + ": was " + a.v + " now " + id2);
                        }
                        a.v = id2;
                        a.w = id2;
                    }
                    c0133f3.b(new O9(1, a));
                    J9 j92 = c0133f3.p;
                    a.r = j92;
                    if (!c0133f3.g) {
                        if (j92.n != null && !j92.A) {
                            j92.w(true);
                            c0133f3.a(j92.C, j92.D);
                            j92.b = true;
                            try {
                                j92.M(j92.C, j92.D);
                                j92.d();
                                j92.W();
                                j92.t();
                                ((HashMap) j92.c.a).values().removeAll(Collections.singleton(null));
                            } catch (Throwable th) {
                                j92.d();
                                throw th;
                            }
                        }
                    } else {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                } else {
                    throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
                }
            }
            Iterator it = j9.c.f().iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x92 = aVar.c;
                if (abstractComponentCallbacksC0598x92.w == frameLayout.getId() && (view2 = abstractComponentCallbacksC0598x92.E) != null && view2.getParent() == null) {
                    abstractComponentCallbacksC0598x92.D = frameLayout;
                    aVar.b();
                }
            }
            return frameLayout;
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, Wf.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes2.getString(0);
        }
        int resourceId = obtainStyledAttributes2.getResourceId(1, -1);
        String string2 = obtainStyledAttributes2.getString(2);
        obtainStyledAttributes2.recycle();
        if (attributeValue != null) {
            try {
                z = AbstractComponentCallbacksC0598x9.class.isAssignableFrom(E9.b(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (z) {
                int id3 = view != null ? view.getId() : 0;
                if (id3 == -1 && resourceId == -1 && string2 == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                AbstractComponentCallbacksC0598x9 z3 = resourceId != -1 ? j9.z(resourceId) : null;
                if (z3 == null && string2 != null) {
                    C0491t2 c0491t2 = j9.c;
                    ArrayList arrayList = (ArrayList) c0491t2.b;
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            abstractComponentCallbacksC0598x9 = (AbstractComponentCallbacksC0598x9) arrayList.get(size);
                            if (abstractComponentCallbacksC0598x9 != null && string2.equals(abstractComponentCallbacksC0598x9.x)) {
                                break;
                            }
                            size--;
                        } else {
                            for (a aVar2 : ((HashMap) c0491t2.a).values()) {
                                if (aVar2 != null) {
                                    abstractComponentCallbacksC0598x9 = aVar2.c;
                                    if (string2.equals(abstractComponentCallbacksC0598x9.x)) {
                                    }
                                }
                            }
                            z3 = null;
                        }
                    }
                    z3 = abstractComponentCallbacksC0598x9;
                }
                if (z3 == null && id3 != -1) {
                    z3 = j9.z(id3);
                }
                if (z3 == null) {
                    E9 B2 = j9.B();
                    context.getClassLoader();
                    z3 = B2.a(attributeValue);
                    z3.m = true;
                    z3.v = resourceId != 0 ? resourceId : id3;
                    z3.w = id3;
                    z3.x = string2;
                    z3.n = true;
                    z3.r = j9;
                    C0623y9 c0623y92 = j9.n;
                    z3.s = c0623y92;
                    AbstractActivityC0028b1 abstractActivityC0028b1 = c0623y92.s;
                    z3.C = true;
                    if ((c0623y92 == null ? null : c0623y92.r) != null) {
                        z3.C = true;
                    }
                    f = j9.a(z3);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Fragment " + z3 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else if (!z3.n) {
                    z3.n = true;
                    z3.r = j9;
                    C0623y9 c0623y93 = j9.n;
                    z3.s = c0623y93;
                    AbstractActivityC0028b1 abstractActivityC0028b12 = c0623y93.s;
                    z3.C = true;
                    if ((c0623y93 == null ? null : c0623y93.r) != null) {
                        z3.C = true;
                    }
                    f = j9.f(z3);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Retained Fragment " + z3 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id3) + " with another fragment for " + attributeValue);
                }
                z3.D = (ViewGroup) view;
                f.k();
                f.j();
                View view3 = z3.E;
                if (view3 != null) {
                    if (resourceId != 0) {
                        view3.setId(resourceId);
                    }
                    if (z3.E.getTag() == null) {
                        z3.E.setTag(string2);
                    }
                    z3.E.addOnAttachStateChangeListener(new A9(this, f));
                    return z3.E;
                }
                throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
            }
        }
        return null;
    }
}
