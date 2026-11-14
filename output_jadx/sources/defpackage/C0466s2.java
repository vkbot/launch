package defpackage;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;

/* renamed from: s2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0466s2 {
    public static final Class[] b = {Context.class, AttributeSet.class};
    public static final int[] c = {R.attr.onClick};
    public static final String[] d = {"android.widget.", "android.view.", "android.webkit."};
    public static final C0277ki e = new C0277ki();
    public final Object[] a = new Object[2];

    public C0054c1 a(Context context, AttributeSet attributeSet) {
        return new C0054c1(context, attributeSet);
    }

    public C0080d1 b(Context context, AttributeSet attributeSet) {
        return new C0080d1(context, attributeSet, com.omoda.launcher.R.attr.buttonStyle);
    }

    public C0131f1 c(Context context, AttributeSet attributeSet) {
        return new C0131f1(context, attributeSet, com.omoda.launcher.R.attr.checkboxStyle);
    }

    public L1 d(Context context, AttributeSet attributeSet) {
        return new L1(context, attributeSet);
    }

    public C0287l2 e(Context context, AttributeSet attributeSet) {
        return new C0287l2(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String concat;
        C0277ki c0277ki = e;
        Constructor constructor = (Constructor) c0277ki.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            c0277ki.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.a);
    }
}
