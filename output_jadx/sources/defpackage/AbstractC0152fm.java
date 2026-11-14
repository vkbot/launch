package defpackage;

import android.R;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EdgeEffect;
import android.widget.TextView;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: fm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0152fm {
    public static final Object e = null;
    public static final L f;
    public static final L g;
    public static final L o;
    public static long p;
    public static final float[][] a = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    public static final float[][] b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    public static final float[] c = {95.047f, 100.0f, 108.883f};
    public static final float[][] d = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};
    public static final C0088d9 h = new Object();
    public static final int[] i = {R.attr.theme, com.omoda.launcher.R.attr.theme};
    public static final int[] j = {com.omoda.launcher.R.attr.materialThemeOverlay};
    public static final T7 k = new T7(28);
    public static final Of l = new Object();
    public static final Of m = new Object();
    public static final Of n = new Object();

    /* JADX WARN: Type inference failed for: r1v11, types: [Of, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12, types: [Of, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [Of, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [d9, java.lang.Object] */
    static {
        int i2 = 27;
        f = new L(i2, "UNDEFINED");
        g = new L(i2, "REUSABLE_CLAIMED");
        o = new L(i2, "NO_THREAD_ELEMENTS");
    }

    public static float A(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return S7.c(edgeEffect, f2, f3);
        }
        R7.a(edgeEffect, f2, f3);
        return f2;
    }

    public static InterfaceC0346n9 B(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlResourceParser.require(2, null, "font-family");
        if (xmlResourceParser.getName().equals("font-family")) {
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), Vf.b);
            String string = obtainAttributes.getString(0);
            String string2 = obtainAttributes.getString(4);
            String string3 = obtainAttributes.getString(5);
            int resourceId = obtainAttributes.getResourceId(1, 0);
            int integer = obtainAttributes.getInteger(2, 1);
            int integer2 = obtainAttributes.getInteger(3, 500);
            String string4 = obtainAttributes.getString(6);
            obtainAttributes.recycle();
            if (string != null && string2 != null && string3 != null) {
                while (xmlResourceParser.next() != 3) {
                    O(xmlResourceParser);
                }
                return new C0424q9(new C0139f9(string, string2, string3, F(resources, resourceId)), integer, integer2, string4);
            }
            ArrayList arrayList = new ArrayList();
            while (xmlResourceParser.next() != 3) {
                if (xmlResourceParser.getEventType() == 2) {
                    if (xmlResourceParser.getName().equals("font")) {
                        TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), Vf.c);
                        int i2 = obtainAttributes2.getInt(obtainAttributes2.hasValue(8) ? 8 : 1, 400);
                        boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i3 = obtainAttributes2.hasValue(9) ? 9 : 3;
                        String string5 = obtainAttributes2.getString(obtainAttributes2.hasValue(7) ? 7 : 4);
                        int i4 = obtainAttributes2.getInt(i3, 0);
                        int i5 = obtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = obtainAttributes2.getResourceId(i5, 0);
                        String string6 = obtainAttributes2.getString(i5);
                        obtainAttributes2.recycle();
                        while (xmlResourceParser.next() != 3) {
                            O(xmlResourceParser);
                        }
                        arrayList.add(new C0398p9(string6, i2, z, string5, i4, resourceId2));
                    } else {
                        O(xmlResourceParser);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                return new C0372o9((C0398p9[]) arrayList.toArray(new C0398p9[0]));
            }
        } else {
            O(xmlResourceParser);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [hj, je] */
    public static C0247je E(MappedByteBuffer mappedByteBuffer) {
        long j2;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i2 = duplicate.getShort() & 65535;
        if (i2 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        duplicate.position(duplicate.position() + 6);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                j2 = -1;
                break;
            }
            int i4 = duplicate.getInt();
            duplicate.position(duplicate.position() + 4);
            j2 = duplicate.getInt() & 4294967295L;
            duplicate.position(duplicate.position() + 4);
            if (1835365473 == i4) {
                break;
            }
            i3++;
        }
        if (j2 != -1) {
            duplicate.position(duplicate.position() + ((int) (j2 - duplicate.position())));
            duplicate.position(duplicate.position() + 12);
            long j3 = duplicate.getInt() & 4294967295L;
            for (int i5 = 0; i5 < j3; i5++) {
                int i6 = duplicate.getInt();
                long j4 = duplicate.getInt() & 4294967295L;
                duplicate.getInt();
                if (1164798569 == i6 || 1701669481 == i6) {
                    duplicate.position((int) (j4 + j2));
                    ?? abstractC0201hj = new AbstractC0201hj();
                    duplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int position = duplicate.position() + duplicate.getInt(duplicate.position());
                    abstractC0201hj.d = duplicate;
                    abstractC0201hj.a = position;
                    int i7 = position - duplicate.getInt(position);
                    abstractC0201hj.b = i7;
                    abstractC0201hj.c = ((ByteBuffer) abstractC0201hj.d).getShort(i7);
                    return abstractC0201hj;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static List F(Resources resources, int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (AbstractC0320m9.a(obtainTypedArray, 0) == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i2);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static void G(Context context, RemoteApp remoteApp) {
        Long l2;
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(remoteApp, "app");
        try {
            l2 = Long.valueOf(context.getPackageManager().getPackageInfo(remoteApp.getPackageName(), 0).lastUpdateTime);
        } catch (Exception unused) {
            l2 = null;
        }
        if (l2 != null) {
            long longValue = l2.longValue();
            JSONObject put = new JSONObject().put("id", remoteApp.getId()).put("version", remoteApp.getVersion());
            Object modVersion = remoteApp.getModVersion();
            if (modVersion == null) {
                modVersion = JSONObject.NULL;
            }
            context.getApplicationContext().getSharedPreferences("install_ledger", 0).edit().putString(remoteApp.getPackageName(), put.put("mod", modVersion).put("lut", longValue).toString()).apply();
        }
    }

    public static TypedValue H(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean I(Context context, int i2, boolean z) {
        TypedValue H = H(context, i2);
        return (H == null || H.type != 18) ? z : H.data != 0;
    }

    public static TypedValue J(Context context, int i2, String str) {
        TypedValue H = H(context, i2);
        if (H != null) {
            return H;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i2)));
    }

    public static final void K(InterfaceC0110e6 interfaceC0110e6, Object obj) {
        if (obj == o) {
            return;
        }
        if (!(obj instanceof C0227ik)) {
            Object e2 = interfaceC0110e6.e(null, V4.h);
            AbstractC0348nb.p(e2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            AbstractC0407pi.n(e2);
            throw null;
        }
        C0227ik c0227ik = (C0227ik) obj;
        InterfaceC0150fk[] interfaceC0150fkArr = c0227ik.b;
        int length = interfaceC0150fkArr.length - 1;
        if (length < 0) {
            return;
        }
        InterfaceC0150fk interfaceC0150fk = interfaceC0150fkArr[length];
        AbstractC0348nb.o(null);
        Object obj2 = c0227ik.a[length];
        throw null;
    }

    public static final void L(S5 s5, Object obj, InterfaceC0089da interfaceC0089da) {
        if (!(s5 instanceof C0471s7)) {
            s5.c(obj);
            return;
        }
        C0471s7 c0471s7 = (C0471s7) s5;
        Throwable a2 = AbstractC0276kh.a(obj);
        Object c0032b5 = a2 == null ? interfaceC0089da != null ? new C0032b5(obj, interfaceC0089da) : obj : new C0006a5(a2, false);
        T5 t5 = c0471s7.e;
        t5.i();
        AbstractC0162g6 abstractC0162g6 = c0471s7.d;
        boolean h2 = abstractC0162g6.h();
        InterfaceC0110e6 interfaceC0110e6 = t5.b;
        if (h2) {
            c0471s7.f = c0032b5;
            c0471s7.c = 1;
            AbstractC0348nb.o(interfaceC0110e6);
            abstractC0162g6.g(interfaceC0110e6, c0471s7);
            return;
        }
        H8 a3 = AbstractC0176gk.a();
        if (a3.c >= 4294967296L) {
            c0471s7.f = c0032b5;
            c0471s7.c = 1;
            T2 t2 = a3.e;
            if (t2 == null) {
                t2 = new T2();
                a3.e = t2;
            }
            t2.c(c0471s7);
            return;
        }
        a3.k(true);
        try {
            AbstractC0348nb.o(interfaceC0110e6);
            InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) interfaceC0110e6.b(T7.f);
            if (interfaceC0625yb == null || interfaceC0625yb.a()) {
                Object obj2 = c0471s7.g;
                AbstractC0348nb.o(interfaceC0110e6);
                Object P = P(interfaceC0110e6, obj2);
                C0359nm X = P != o ? C6.X(t5, interfaceC0110e6, P) : null;
                try {
                    t5.c(obj);
                } finally {
                    if (X == null || X.L()) {
                        K(interfaceC0110e6, P);
                    }
                }
            } else {
                CancellationException u = ((Hb) interfaceC0625yb).u();
                c0471s7.a(c0032b5, u);
                c0471s7.c(AbstractC0171gf.e(u));
            }
            do {
            } while (a3.l());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void N(View view, Ed ed) {
        V7 v7 = ed.a.b;
        if (v7 == null || !v7.a) {
            return;
        }
        float f2 = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = AbstractC0205hn.a;
            f2 += Xm.i((View) parent);
        }
        Dd dd = ed.a;
        if (dd.l != f2) {
            dd.l = f2;
            ed.l();
        }
    }

    public static void O(XmlResourceParser xmlResourceParser) {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }

    public static final Object P(InterfaceC0110e6 interfaceC0110e6, Object obj) {
        if (obj == null) {
            obj = interfaceC0110e6.e(0, V4.g);
            AbstractC0348nb.o(obj);
        }
        if (obj == 0) {
            return o;
        }
        if (obj instanceof Integer) {
            return interfaceC0110e6.e(new C0227ik(interfaceC0110e6, ((Number) obj).intValue()), V4.i);
        }
        AbstractC0407pi.n(obj);
        throw null;
    }

    public static boolean Q(int i2, int i3, int i4, int i5) {
        return (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2)) || (i5 == 1 || i5 == 2 || (i5 == 4 && i3 != 2));
    }

    public static Context R(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j, i2, i3);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z = (context instanceof R5) && ((R5) context).a == resourceId;
        if (resourceId == 0 || z) {
            return context;
        }
        R5 r5 = new R5(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, i);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            r5.getTheme().applyStyle(resourceId2, true);
        }
        return r5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01b5, code lost:
    
        if (r5 == null) goto L122;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:60:0x015e. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x028a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c1  */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void S(android.content.Context r19, java.util.concurrent.Executor r20, defpackage.Kf r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0152fm.S(android.content.Context, java.util.concurrent.Executor, Kf, boolean):void");
    }

    public static float T() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    public static void a(Throwable th, Throwable th2) {
        AbstractC0348nb.r(th, "<this>");
        AbstractC0348nb.r(th2, "exception");
        if (th != th2) {
            Integer num = AbstractC0575wb.a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = AbstractC0504tf.a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static void b(Object obj) {
        if (obj != null) {
            if (obj instanceof InterfaceC0399pa) {
                if ((obj instanceof InterfaceC0425qa ? ((InterfaceC0425qa) obj).f() : obj instanceof S9 ? 0 : obj instanceof InterfaceC0089da ? 1 : obj instanceof InterfaceC0192ha ? 2 : -1) == 2) {
                    return;
                }
            }
            ClassCastException classCastException = new ClassCastException((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to kotlin.jvm.functions.Function2");
            AbstractC0348nb.Z(classCastException, AbstractC0152fm.class.getName());
            throw classCastException;
        }
    }

    public static void f(int i2) {
        AbstractC0270kb abstractC0270kb = new AbstractC0270kb(2, 36, 1);
        if (2 > i2 || i2 > abstractC0270kb.b) {
            throw new IllegalArgumentException("radix " + i2 + " was not in valid range " + new AbstractC0270kb(2, 36, 1));
        }
    }

    public static int g(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static void h(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        int read = inputStream.read(bArr);
        while (read >= 0) {
            outputStream.write(bArr, 0, read);
            read = inputStream.read(bArr);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [nb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [nb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [nb, java.lang.Object] */
    public static AbstractC0348nb i(int i2) {
        if (i2 != 0 && i2 == 1) {
            return new Object();
        }
        return new Object();
    }

    public static final Object j(long j2, T5 t5) {
        EnumC0291l6 enumC0291l6;
        Object e2;
        InterfaceC0625yb interfaceC0625yb;
        C0486sm c0486sm = C0486sm.a;
        if (j2 <= 0) {
            return c0486sm;
        }
        N3 n3 = new N3(C6.u(t5));
        InterfaceC0621y7 m2 = n3.m();
        if (m2 != null && !(N3.g.get(n3) instanceof Ee)) {
            m2.c();
            N3.h.set(n3, De.a);
        }
        InterfaceC0110e6 interfaceC0110e6 = n3.e;
        if (j2 < Long.MAX_VALUE) {
            InterfaceC0059c6 b2 = interfaceC0110e6.b(T7.b);
            InterfaceC0034b7 interfaceC0034b7 = b2 instanceof InterfaceC0034b7 ? (InterfaceC0034b7) b2 : null;
            if (interfaceC0034b7 == null) {
                interfaceC0034b7 = H6.a;
            }
            interfaceC0034b7.c(j2, n3);
        }
        boolean o2 = n3.o();
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = N3.f;
            int i2 = atomicIntegerFieldUpdater.get(n3);
            int i3 = i2 >> 29;
            enumC0291l6 = EnumC0291l6.a;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (o2) {
                    n3.q();
                }
                Object obj = N3.g.get(n3);
                if (obj instanceof C0006a5) {
                    throw ((C0006a5) obj).a;
                }
                if (C6.v(n3.c) && (interfaceC0625yb = (InterfaceC0625yb) interfaceC0110e6.b(T7.f)) != null && !interfaceC0625yb.a()) {
                    CancellationException u = ((Hb) interfaceC0625yb).u();
                    n3.a(obj, u);
                    throw u;
                }
                e2 = n3.e(obj);
            } else if (atomicIntegerFieldUpdater.compareAndSet(n3, i2, 536870912 + (536870911 & i2))) {
                if (((InterfaceC0621y7) N3.h.get(n3)) == null) {
                    n3.m();
                }
                if (o2) {
                    n3.q();
                }
                e2 = enumC0291l6;
            }
        }
        return e2 == enumC0291l6 ? e2 : c0486sm;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, On] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Object, On] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    public static On k(D5 d5, int i2, ArrayList arrayList, On on) {
        int i3;
        int i4 = i2 == 0 ? d5.n0 : d5.o0;
        if (i4 != -1 && (on == 0 || i4 != on.b)) {
            int i5 = 0;
            while (true) {
                if (i5 >= arrayList.size()) {
                    break;
                }
                On on2 = (On) arrayList.get(i5);
                if (on2.b == i4) {
                    if (on != 0) {
                        on.c(i2, on2);
                        arrayList.remove((Object) on);
                    }
                    on = on2;
                } else {
                    i5++;
                }
            }
        } else if (i4 != -1) {
            return on;
        }
        On on3 = on;
        if (on == 0) {
            if (d5 instanceof Ga) {
                Ga ga = (Ga) d5;
                int i6 = 0;
                while (true) {
                    if (i6 >= ga.r0) {
                        i3 = -1;
                        break;
                    }
                    D5 d52 = ga.q0[i6];
                    if ((i2 == 0 && (i3 = d52.n0) != -1) || (i2 == 1 && (i3 = d52.o0) != -1)) {
                        break;
                    }
                    i6++;
                }
                if (i3 != -1) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList.size()) {
                            break;
                        }
                        On on4 = (On) arrayList.get(i7);
                        if (on4.b == i3) {
                            on = on4;
                            break;
                        }
                        i7++;
                    }
                }
            }
            if (on == 0) {
                on = new Object();
                on.a = new ArrayList();
                on.d = null;
                on.e = -1;
                int i8 = On.f;
                On.f = i8 + 1;
                on.b = i8;
                on.c = i2;
            }
            arrayList.add(on);
            on3 = on;
        }
        ArrayList arrayList2 = on3.a;
        if (!arrayList2.contains(d5)) {
            arrayList2.add(d5);
            if (d5 instanceof Aa) {
                Aa aa = (Aa) d5;
                aa.t0.c(aa.u0 == 0 ? 1 : 0, on3, arrayList);
            }
            int i9 = on3.b;
            if (i2 == 0) {
                d5.n0 = i9;
                d5.I.c(i2, on3, arrayList);
                d5.K.c(i2, on3, arrayList);
            } else {
                d5.o0 = i9;
                d5.J.c(i2, on3, arrayList);
                d5.M.c(i2, on3, arrayList);
                d5.L.c(i2, on3, arrayList);
            }
            d5.P.c(i2, on3, arrayList);
        }
        return on3;
    }

    public static InterfaceC0059c6 l(InterfaceC0059c6 interfaceC0059c6, InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        if (AbstractC0348nb.g(interfaceC0059c6.getKey(), interfaceC0085d6)) {
            return interfaceC0059c6;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0047, code lost:
    
        if (r5.c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            ch r1 = new ch
            r1.<init>(r0, r8)
            java.lang.Object r2 = defpackage.AbstractC0147fh.c
            monitor-enter(r2)
            java.util.WeakHashMap r3 = defpackage.AbstractC0147fh.b     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L50
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L50
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            bh r5 = (defpackage.C0044bh) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L50
            android.content.res.Configuration r6 = r5.b     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4d
            if (r8 != 0) goto L3f
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L49
            goto L3f
        L3c:
            r8 = move-exception
            goto Lb9
        L3f:
            if (r8 == 0) goto L4d
            int r6 = r5.c     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4d
        L49:
            android.content.res.ColorStateList r3 = r5.a     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L52
        L4d:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L50:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L52:
            if (r3 == 0) goto L55
            goto Lb8
        L55:
            java.lang.ThreadLocal r2 = defpackage.AbstractC0147fh.a
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L67
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L67:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L76
            r3 = 31
            if (r2 > r3) goto L76
            goto L87
        L76:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = defpackage.T4.a(r0, r2, r8)     // Catch: java.lang.Exception -> L7f
            goto L87
        L7f:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L87:
            if (r4 == 0) goto Lb4
            java.lang.Object r2 = defpackage.AbstractC0147fh.c
            monitor-enter(r2)
            java.util.WeakHashMap r0 = defpackage.AbstractC0147fh.b     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L9f
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L9f
            if (r3 != 0) goto La1
            android.util.SparseArray r3 = new android.util.SparseArray     // Catch: java.lang.Throwable -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9f
            r0.put(r1, r3)     // Catch: java.lang.Throwable -> L9f
            goto La1
        L9f:
            r8 = move-exception
            goto Lb2
        La1:
            bh r0 = new bh     // Catch: java.lang.Throwable -> L9f
            android.content.res.Resources r1 = r1.a     // Catch: java.lang.Throwable -> L9f
            android.content.res.Configuration r1 = r1.getConfiguration()     // Catch: java.lang.Throwable -> L9f
            r0.<init>(r4, r1, r8)     // Catch: java.lang.Throwable -> L9f
            r3.append(r9, r0)     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            r3 = r4
            goto Lb8
        Lb2:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L9f
            throw r8
        Lb4:
            android.content.res.ColorStateList r3 = defpackage.AbstractC0018ah.b(r0, r9, r8)
        Lb8:
            return r3
        Lb9:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0152fm.m(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static float n(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return S7.b(edgeEffect);
        }
        return 0.0f;
    }

    public static C0558vj o(Context context, C0139f9 c0139f9) {
        Cursor cursor;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = c0139f9.a;
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
        }
        String str2 = resolveContentProvider.packageName;
        String str3 = c0139f9.b;
        if (!str2.equals(str3)) {
            throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str3);
        }
        Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        C0088d9 c0088d9 = h;
        Collections.sort(arrayList, c0088d9);
        List list = c0139f9.d;
        if (list == null) {
            list = F(resources, 0);
        }
        int i2 = 0;
        loop1: while (true) {
            cursor = null;
            if (i2 >= list.size()) {
                resolveContentProvider = null;
                break;
            }
            ArrayList arrayList2 = new ArrayList((Collection) list.get(i2));
            Collections.sort(arrayList2, c0088d9);
            if (arrayList.size() == arrayList2.size()) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (!Arrays.equals((byte[]) arrayList.get(i3), (byte[]) arrayList2.get(i3))) {
                        break;
                    }
                }
                break loop1;
            }
            i2++;
        }
        if (resolveContentProvider == null) {
            return new C0558vj(1, (C0448r9[]) null);
        }
        String str4 = resolveContentProvider.authority;
        ArrayList arrayList3 = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str4).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str4).appendPath("file").build();
        try {
            cursor = AbstractC0113e9.a(context.getContentResolver(), build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0139f9.c}, null, null);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                arrayList3 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    arrayList3.add(new C0448r9(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, columnIndex != -1 ? cursor.getInt(columnIndex) : 0));
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return new C0558vj(0, (C0448r9[]) arrayList3.toArray(new C0448r9[0]));
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static final Class p(Jb jb) {
        AbstractC0348nb.r(jb, "<this>");
        Class a2 = ((InterfaceC0518u4) jb).a();
        if (!a2.isPrimitive()) {
            return a2;
        }
        String name = a2.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? a2 : Double.class;
            case 104431:
                return !name.equals("int") ? a2 : Integer.class;
            case 3039496:
                return !name.equals("byte") ? a2 : Byte.class;
            case 3052374:
                return !name.equals("char") ? a2 : Character.class;
            case 3327612:
                return !name.equals("long") ? a2 : Long.class;
            case 3625364:
                return !name.equals("void") ? a2 : Void.class;
            case 64711720:
                return !name.equals("boolean") ? a2 : Boolean.class;
            case 97526364:
                return !name.equals("float") ? a2 : Float.class;
            case 109413500:
                return !name.equals("short") ? a2 : Short.class;
            default:
                return a2;
        }
    }

    public static final void q(InterfaceC0110e6 interfaceC0110e6, Throwable th) {
        try {
            I0 i0 = (I0) interfaceC0110e6.b(T7.c);
            if (i0 != null) {
                i0.g(interfaceC0110e6, th);
            } else {
                AbstractC0348nb.H(interfaceC0110e6, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                a(runtimeException, th);
                th = runtimeException;
            }
            AbstractC0348nb.H(interfaceC0110e6, th);
        }
    }

    public static C0115eb r(TopOverlayAccessibilityService topOverlayAccessibilityService, String str) {
        Long l2;
        AbstractC0348nb.r(str, "packageName");
        String string = topOverlayAccessibilityService.getApplicationContext().getSharedPreferences("install_ledger", 0).getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            long j2 = jSONObject.getLong("lut");
            try {
                l2 = Long.valueOf(topOverlayAccessibilityService.getPackageManager().getPackageInfo(str, 0).lastUpdateTime);
            } catch (Exception unused) {
                l2 = null;
            }
            if (l2 == null || j2 != l2.longValue()) {
                return null;
            }
            int i2 = jSONObject.getInt("id");
            String string2 = jSONObject.getString("version");
            AbstractC0348nb.q(string2, "getString(...)");
            return new C0115eb(i2, string2, jSONObject.isNull("mod") ? null : jSONObject.getString("mod"));
        } catch (Exception e2) {
            AbstractC0407pi.m(e2, AbstractC0407pi.l("Bad ledger record for ", str, ": "), "InstallLedger");
            return null;
        }
    }

    public static int s(float f2) {
        if (f2 < 1.0f) {
            return -16777216;
        }
        if (f2 > 99.0f) {
            return -1;
        }
        float f3 = (f2 + 16.0f) / 116.0f;
        float f4 = f2 > 8.0f ? f3 * f3 * f3 : f2 / 903.2963f;
        float f5 = f3 * f3 * f3;
        boolean z = f5 > 0.008856452f;
        float f6 = z ? f5 : ((f3 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f5 = ((f3 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = c;
        return U4.a(f6 * fArr[0], f4 * fArr[1], f5 * fArr[2]);
    }

    public static float t(int i2) {
        float f2 = i2 / 255.0f;
        return (f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public static float u(float f2, float... fArr) {
        for (float f3 : fArr) {
            f2 = Math.max(f2, f3);
        }
        return f2;
    }

    public static InterfaceC0110e6 v(InterfaceC0059c6 interfaceC0059c6, InterfaceC0085d6 interfaceC0085d6) {
        AbstractC0348nb.r(interfaceC0085d6, "key");
        return AbstractC0348nb.g(interfaceC0059c6.getKey(), interfaceC0085d6) ? C0497t8.a : interfaceC0059c6;
    }

    public static void w(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public static void x(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public abstract void C(C0362o c0362o, C0362o c0362o2);

    public abstract void D(C0362o c0362o, Thread thread);

    public abstract boolean c(AbstractFutureC0388p abstractFutureC0388p, C0284l c0284l);

    public abstract boolean d(AbstractFutureC0388p abstractFutureC0388p, Object obj, Object obj2);

    public abstract boolean e(AbstractFutureC0388p abstractFutureC0388p, C0362o c0362o, C0362o c0362o2);

    public abstract void y(Throwable th);

    public abstract void z(C0446r7 c0446r7);
}
