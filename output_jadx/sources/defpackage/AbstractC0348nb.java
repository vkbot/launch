package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.ImageView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.omoda.launcher.R;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: nb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0348nb implements InterfaceC0578we {
    public static final L a;
    public static final L e;
    public static final L f;
    public static final L g;
    public static final int[] b = new int[0];
    public static final Object[] c = new Object[0];
    public static final C0392p3 d = new Object();
    public static final boolean[] h = new boolean[3];
    public static final byte[] i = {48, 49, 53, 0};
    public static final byte[] j = {48, 49, 48, 0};
    public static final byte[] k = {48, 48, 57, 0};
    public static final byte[] l = {48, 48, 53, 0};
    public static final byte[] m = {48, 48, 49, 0};
    public static final byte[] n = {48, 48, 49, 0};
    public static final byte[] o = {48, 48, 50, 0};
    public static final int[] p = {R.attr.colorPrimary};
    public static final int[] q = {R.attr.colorPrimaryVariant};

    /* JADX WARN: Type inference failed for: r0v2, types: [p3, java.lang.Object] */
    static {
        int i2 = 27;
        a = new L(i2, "NO_DECISION");
        e = new L(i2, "REMOVED_TASK");
        f = new L(i2, "CLOSED_EMPTY");
        g = new L(i2, "CONDITION_FALSE");
    }

    public static ColorStateList A(Context context, C0491t2 c0491t2, int i2) {
        int resourceId;
        ColorStateList m2;
        TypedArray typedArray = (TypedArray) c0491t2.a;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (m2 = AbstractC0152fm.m(context, resourceId)) == null) ? c0491t2.g(i2) : m2;
    }

    public static ColorStateList B(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        ColorStateList m2;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (m2 = AbstractC0152fm.m(context, resourceId)) == null) ? typedArray.getColorStateList(i2) : m2;
    }

    public static Drawable D(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        Drawable n2;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (n2 = C6.n(context, resourceId)) == null) ? typedArray.getDrawable(i2) : n2;
    }

    public static Intent E(AbstractActivityC0028b1 abstractActivityC0028b1) {
        Intent a2 = AbstractC0503te.a(abstractActivityC0028b1);
        if (a2 != null) {
            return a2;
        }
        try {
            String G = G(abstractActivityC0028b1, abstractActivityC0028b1.getComponentName());
            if (G == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(abstractActivityC0028b1, G);
            try {
                return G(abstractActivityC0028b1, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + G + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static Intent F(AbstractActivityC0028b1 abstractActivityC0028b1, ComponentName componentName) {
        String G = G(abstractActivityC0028b1, componentName);
        if (G == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), G);
        return G(abstractActivityC0028b1, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String G(Activity activity, ComponentName componentName) {
        String string;
        ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(componentName, 269222528);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return activity.getPackageName() + string;
    }

    public static final void H(InterfaceC0110e6 interfaceC0110e6, Throwable th) {
        Throwable runtimeException;
        Iterator it = AbstractC0188h6.a.iterator();
        while (it.hasNext()) {
            try {
                ((I0) it.next()).g(interfaceC0110e6, th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    AbstractC0152fm.a(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            AbstractC0152fm.a(th, new C0292l7(interfaceC0110e6));
        } catch (Throwable unused) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v7, types: [p3, java.lang.Object] */
    public static void I(int i2, C0519u5 c0519u5, D5 d5, boolean z) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        C0394p5 c0394p53;
        C0394p5 c0394p54;
        if (d5.m) {
            return;
        }
        if (!(d5 instanceof E5) && d5.z() && l(d5)) {
            E5.V(d5, c0519u5, new Object());
        }
        C0394p5 i3 = d5.i(2);
        C0394p5 i4 = d5.i(4);
        int d2 = i3.d();
        int d3 = i4.d();
        HashSet hashSet = i3.a;
        char c2 = 0;
        if (hashSet != null && i3.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0394p5 c0394p55 = (C0394p5) it.next();
                D5 d52 = c0394p55.d;
                int i5 = i2 + 1;
                boolean l2 = l(d52);
                if (d52.z() && l2) {
                    E5.V(d52, c0519u5, new Object());
                }
                C0394p5 c0394p56 = d52.I;
                C0394p5 c0394p57 = d52.K;
                char c3 = ((c0394p55 == c0394p56 && (c0394p54 = c0394p57.f) != null && c0394p54.c) || (c0394p55 == c0394p57 && (c0394p53 = c0394p56.f) != null && c0394p53.c)) ? (char) 1 : c2;
                int i6 = d52.p0[c2];
                if (i6 != 3 || l2) {
                    if (!d52.z()) {
                        if (c0394p55 == c0394p56 && c0394p57.f == null) {
                            int e2 = c0394p56.e() + d2;
                            d52.J(e2, d52.q() + e2);
                            I(i5, c0519u5, d52, z);
                        } else if (c0394p55 == c0394p57 && c0394p56.f == null) {
                            int e3 = d2 - c0394p57.e();
                            d52.J(e3 - d52.q(), e3);
                            I(i5, c0519u5, d52, z);
                        } else if (c3 != 0 && !d52.x()) {
                            f0(i5, c0519u5, d52, z);
                        }
                    }
                } else if (i6 == 3 && d52.v >= 0 && d52.u >= 0 && ((d52.g0 == 8 || (d52.r == 0 && d52.W == 0.0f)) && !d52.x() && !d52.F && c3 != 0 && !d52.x())) {
                    g0(i5, d5, c0519u5, d52, z);
                }
                c2 = 0;
            }
        }
        if (d5 instanceof Aa) {
            return;
        }
        HashSet hashSet2 = i4.a;
        if (hashSet2 != null && i4.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C0394p5 c0394p58 = (C0394p5) it2.next();
                D5 d53 = c0394p58.d;
                int i7 = i2 + 1;
                boolean l3 = l(d53);
                if (d53.z() && l3) {
                    E5.V(d53, c0519u5, new Object());
                }
                C0394p5 c0394p59 = d53.I;
                C0394p5 c0394p510 = d53.K;
                boolean z2 = (c0394p58 == c0394p59 && (c0394p52 = c0394p510.f) != null && c0394p52.c) || (c0394p58 == c0394p510 && (c0394p5 = c0394p59.f) != null && c0394p5.c);
                int i8 = d53.p0[0];
                if (i8 != 3 || l3) {
                    if (!d53.z()) {
                        if (c0394p58 == c0394p59 && c0394p510.f == null) {
                            int e4 = c0394p59.e() + d3;
                            d53.J(e4, d53.q() + e4);
                            I(i7, c0519u5, d53, z);
                        } else if (c0394p58 == c0394p510 && c0394p59.f == null) {
                            int e5 = d3 - c0394p510.e();
                            d53.J(e5 - d53.q(), e5);
                            I(i7, c0519u5, d53, z);
                        } else if (z2 && !d53.x()) {
                            f0(i7, c0519u5, d53, z);
                        }
                    }
                } else if (i8 == 3 && d53.v >= 0 && d53.u >= 0) {
                    if (d53.g0 != 8) {
                        if (d53.r == 0) {
                            if (d53.W == 0.0f) {
                            }
                        }
                    }
                    if (!d53.x() && !d53.F && z2 && !d53.x()) {
                        g0(i7, d5, c0519u5, d53, z);
                    }
                }
            }
        }
        d5.m = true;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [Ce, Lc] */
    public static InterfaceC0621y7 J(InterfaceC0625yb interfaceC0625yb, boolean z, Cb cb, int i2) {
        Cb cb2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Throwable th;
        if ((i2 & 1) != 0) {
            z = false;
        }
        boolean z2 = (i2 & 2) != 0;
        Hb hb = (Hb) interfaceC0625yb;
        hb.getClass();
        if (z) {
            cb2 = cb instanceof Ab ? (Ab) cb : null;
            if (cb2 == null) {
                cb2 = new C0426qb(cb);
            }
        } else {
            cb2 = cb;
        }
        cb2.d = hb;
        while (true) {
            Object y = hb.y();
            if (y instanceof C0447r8) {
                C0447r8 c0447r8 = (C0447r8) y;
                if (c0447r8.a) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = Hb.a;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(hb, y, cb2)) {
                        if (atomicReferenceFieldUpdater2.get(hb) != y) {
                            break;
                        }
                    }
                    return cb2;
                }
                ?? lc = new Lc();
                Pa pa = c0447r8.a ? lc : new Pa(lc);
                do {
                    atomicReferenceFieldUpdater = Hb.a;
                    if (atomicReferenceFieldUpdater.compareAndSet(hb, c0447r8, pa)) {
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(hb) == c0447r8);
            } else {
                if (!(y instanceof Qa)) {
                    if (z2) {
                        C0006a5 c0006a5 = y instanceof C0006a5 ? (C0006a5) y : null;
                        cb.h(c0006a5 != null ? c0006a5.a : null);
                    }
                    return De.a;
                }
                Ce b2 = ((Qa) y).b();
                if (b2 == null) {
                    p(y, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    hb.I((Cb) y);
                } else {
                    InterfaceC0621y7 interfaceC0621y7 = De.a;
                    if (z && (y instanceof Eb)) {
                        synchronized (y) {
                            try {
                                th = ((Eb) y).d();
                                if (th != null) {
                                    if ((cb instanceof C0315m4) && !((Eb) y).f()) {
                                    }
                                }
                                if (hb.j((Qa) y, b2, cb2)) {
                                    if (th == null) {
                                        return cb2;
                                    }
                                    interfaceC0621y7 = cb2;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z2) {
                            cb.h(th);
                        }
                        return interfaceC0621y7;
                    }
                    if (hb.j((Qa) y, b2, cb2)) {
                        return cb2;
                    }
                }
            }
        }
    }

    public static boolean K(int i2, Rect rect, Rect rect2) {
        if (i2 == 17) {
            int i3 = rect.right;
            int i4 = rect2.right;
            return (i3 > i4 || rect.left >= i4) && rect.left > rect2.left;
        }
        if (i2 == 33) {
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            return (i5 > i6 || rect.top >= i6) && rect.top > rect2.top;
        }
        if (i2 == 66) {
            int i7 = rect.left;
            int i8 = rect2.left;
            return (i7 < i8 || rect.right <= i8) && rect.right < rect2.right;
        }
        if (i2 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        return (i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom;
    }

    public static boolean L(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [S5, f, Ci, java.lang.Object] */
    public static Ci M(InterfaceC0265k6 interfaceC0265k6, AbstractC0162g6 abstractC0162g6, InterfaceC0192ha interfaceC0192ha, int i2) {
        InterfaceC0110e6 interfaceC0110e6 = abstractC0162g6;
        if ((i2 & 1) != 0) {
            interfaceC0110e6 = C0497t8.a;
        }
        InterfaceC0110e6 i3 = C6.i(interfaceC0265k6.h(), interfaceC0110e6, true);
        T6 t6 = AbstractC0546v7.a;
        if (i3 != t6 && i3.b(T7.b) == null) {
            i3 = i3.f(t6);
        }
        ?? abstractC0129f = new AbstractC0129f(i3, true);
        int p2 = AbstractC0407pi.p(1);
        if (p2 == 0) {
            C6.S(interfaceC0192ha, abstractC0129f, abstractC0129f);
        } else if (p2 != 1) {
            if (p2 == 2) {
                C6.u(C6.f(abstractC0129f, abstractC0129f, interfaceC0192ha)).c(C0486sm.a);
            } else {
                if (p2 != 3) {
                    throw new RuntimeException();
                }
                try {
                    InterfaceC0110e6 interfaceC0110e62 = abstractC0129f.c;
                    Object P = AbstractC0152fm.P(interfaceC0110e62, null);
                    try {
                        AbstractC0152fm.b(interfaceC0192ha);
                        Object e2 = interfaceC0192ha.e(abstractC0129f, abstractC0129f);
                        if (e2 != EnumC0291l6.a) {
                            abstractC0129f.c(e2);
                        }
                    } finally {
                        AbstractC0152fm.K(interfaceC0110e62, P);
                    }
                } catch (Throwable th) {
                    abstractC0129f.c(AbstractC0171gf.e(th));
                }
            }
        }
        return abstractC0129f;
    }

    public static List N(Object obj) {
        List singletonList = Collections.singletonList(obj);
        q(singletonList, "singletonList(...)");
        return singletonList;
    }

    public static int O(int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.right;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.bottom;
        } else if (i2 == 66) {
            i3 = rect2.left;
            i4 = rect.right;
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i3 = rect2.top;
            i4 = rect.bottom;
        }
        return Math.max(0, i3 - i4);
    }

    public static int P(int i2, Rect rect, Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static TypedArray Q(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3, int... iArr2) {
        m(context, attributeSet, i2, i3);
        t(context, attributeSet, iArr, i2, i3, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
    }

    public static void T(Context context, String str) {
        if (str.equals("")) {
            context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return;
        }
        try {
            FileOutputStream openFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
            XmlSerializer newSerializer = Xml.newSerializer();
            try {
                try {
                    newSerializer.setOutput(openFileOutput, null);
                    newSerializer.startDocument("UTF-8", Boolean.TRUE);
                    newSerializer.startTag(null, "locales");
                    newSerializer.attribute(null, "application_locales", str);
                    newSerializer.endTag(null, "locales");
                    newSerializer.endDocument();
                    Log.d("AppLocalesStorageHelper", "Storing App Locales : app-locales: " + str + " persisted successfully.");
                    if (openFileOutput == null) {
                        return;
                    }
                } catch (Throwable th) {
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                Log.w("AppLocalesStorageHelper", "Storing App Locales : Failed to persist app-locales: ".concat(str), e2);
                if (openFileOutput == null) {
                    return;
                }
            }
            try {
                openFileOutput.close();
            } catch (IOException unused2) {
            }
        } catch (FileNotFoundException unused3) {
            Log.w("AppLocalesStorageHelper", "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing ");
        }
    }

    public static byte[] U(InputStream inputStream, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i3, i2 - i3);
            if (read < 0) {
                throw new IllegalStateException(AbstractC0407pi.h("Not enough bytes to read: ", i2));
            }
            i3 += read;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        if (r0.finished() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        throw new java.lang.IllegalStateException("Inflater did not finish");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] V(java.io.FileInputStream r8, int r9, int r10) {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]     // Catch: java.lang.Throwable -> L2e
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L2e
            r3 = 0
            r4 = r3
            r5 = r4
        Le:
            boolean r6 = r0.finished()     // Catch: java.lang.Throwable -> L2e
            if (r6 != 0) goto L57
            boolean r6 = r0.needsDictionary()     // Catch: java.lang.Throwable -> L2e
            if (r6 != 0) goto L57
            if (r4 >= r9) goto L57
            int r6 = r8.read(r2)     // Catch: java.lang.Throwable -> L2e
            if (r6 < 0) goto L3b
            r0.setInput(r2, r3, r6)     // Catch: java.lang.Throwable -> L2e
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.lang.Throwable -> L2e java.util.zip.DataFormatException -> L30
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            goto L8a
        L30:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L3b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2e
            r8.<init>()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            r8.append(r10)     // Catch: java.lang.Throwable -> L2e
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r9 = " bytes"
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L57:
            if (r4 != r9) goto L6b
            boolean r8 = r0.finished()     // Catch: java.lang.Throwable -> L2e
            if (r8 == 0) goto L63
            r0.end()
            return r1
        L63:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L6b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2e
            r8.<init>()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            r8.append(r10)     // Catch: java.lang.Throwable -> L2e
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r9 = " actual="
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            r8.append(r4)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L8a:
            r0.end()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.V(java.io.FileInputStream, int, int):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r3 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        if (r2.isEmpty() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        android.util.Log.d("AppLocalesStorageHelper", "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: ".concat(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        r9.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x002d, code lost:
    
        if (r6 != 4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x003a, code lost:
    
        if (r4.getName().equals("locales") == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x003c, code lost:
    
        r2 = r4.getAttributeValue(null, "application_locales");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x004e, code lost:
    
        if (r3 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String W(android.content.Context r9) {
        /*
            java.lang.String r0 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.lang.String r1 = "AppLocalesStorageHelper"
            java.lang.String r2 = ""
            java.io.FileInputStream r3 = r9.openFileInput(r0)     // Catch: java.io.FileNotFoundException -> L6b
            org.xmlpull.v1.XmlPullParser r4 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            java.lang.String r5 = "UTF-8"
            r4.setInput(r3, r5)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            int r5 = r4.getDepth()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
        L17:
            int r6 = r4.next()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            r7 = 1
            if (r6 == r7) goto L43
            r7 = 3
            if (r6 != r7) goto L2a
            int r8 = r4.getDepth()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            if (r8 <= r5) goto L43
            goto L2a
        L28:
            r9 = move-exception
            goto L65
        L2a:
            if (r6 == r7) goto L17
            r7 = 4
            if (r6 != r7) goto L30
            goto L17
        L30:
            java.lang.String r6 = r4.getName()     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            java.lang.String r7 = "locales"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
            if (r6 == 0) goto L17
            java.lang.String r5 = "application_locales"
            r6 = 0
            java.lang.String r2 = r4.getAttributeValue(r6, r5)     // Catch: java.lang.Throwable -> L28 java.lang.Throwable -> L49
        L43:
            if (r3 == 0) goto L51
        L45:
            r3.close()     // Catch: java.io.IOException -> L51
            goto L51
        L49:
            java.lang.String r4 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r1, r4)     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L51
            goto L45
        L51:
            boolean r3 = r2.isEmpty()
            if (r3 != 0) goto L61
            java.lang.String r9 = "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "
            java.lang.String r9 = r9.concat(r2)
            android.util.Log.d(r1, r9)
            goto L64
        L61:
            r9.deleteFile(r0)
        L64:
            return r2
        L65:
            if (r3 == 0) goto L6a
            r3.close()     // Catch: java.io.IOException -> L6a
        L6a:
            throw r9
        L6b:
            java.lang.String r9 = "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r1, r9)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.W(android.content.Context):java.lang.String");
    }

    public static long X(InputStream inputStream, int i2) {
        byte[] U = U(inputStream, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 += (U[i3] & 255) << (i3 * 8);
        }
        return j2;
    }

    public static void Y(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = drawable.mutate();
        B7.h(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public static void Z(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
    }

    public static void a0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean a2 = Qm.a(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = a2 || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(a2);
        checkableImageButton.setPressable(a2);
        checkableImageButton.setLongClickable(z);
        Rm.s(checkableImageButton, z2 ? 1 : 2);
    }

    public static void b0(EditorInfo editorInfo, CharSequence charSequence, int i2, int i3) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i3);
    }

    public static void c0(Drawable drawable, int i2) {
        B7.g(drawable, i2);
    }

    public static void d0(Drawable drawable, ColorStateList colorStateList) {
        B7.h(drawable, colorStateList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x0283, code lost:
    
        if (r2.d == r7) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0109, code lost:
    
        if (r4.d == r13) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0440 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x06af A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x06e8  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x06ec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0707 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04aa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0591 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x069f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0113 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(defpackage.E5 r36, defpackage.C0349nc r37, java.util.ArrayList r38, int r39) {
        /*
            Method dump skipped, instructions count: 1813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.e(E5, nc, java.util.ArrayList, int):void");
    }

    public static void e0(Drawable drawable, PorterDuff.Mode mode) {
        B7.i(drawable, mode);
    }

    public static void f(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                B7.h(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
                B7.h(drawable, ColorStateList.valueOf(colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                B7.i(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static void f0(int i2, C0519u5 c0519u5, D5 d5, boolean z) {
        float f2 = d5.d0;
        C0394p5 c0394p5 = d5.I;
        int d2 = c0394p5.f.d();
        C0394p5 c0394p52 = d5.K;
        int d3 = c0394p52.f.d();
        int e2 = c0394p5.e() + d2;
        int e3 = d3 - c0394p52.e();
        if (d2 == d3) {
            f2 = 0.5f;
        } else {
            d2 = e2;
            d3 = e3;
        }
        int q2 = d5.q();
        int i3 = (d3 - d2) - q2;
        if (d2 > d3) {
            i3 = (d2 - d3) - q2;
        }
        int i4 = ((int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3)) + d2;
        int i5 = i4 + q2;
        if (d2 > d3) {
            i5 = i4 - q2;
        }
        d5.J(i4, i5);
        I(i2 + 1, c0519u5, d5, z);
    }

    public static boolean g(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void g0(int i2, D5 d5, C0519u5 c0519u5, D5 d52, boolean z) {
        float f2 = d52.d0;
        C0394p5 c0394p5 = d52.I;
        int e2 = c0394p5.e() + c0394p5.f.d();
        C0394p5 c0394p52 = d52.K;
        int d2 = c0394p52.f.d() - c0394p52.e();
        if (d2 >= e2) {
            int q2 = d52.q();
            if (d52.g0 != 8) {
                int i3 = d52.r;
                if (i3 == 2) {
                    q2 = (int) (d52.d0 * 0.5f * (d5 instanceof E5 ? d5.q() : d5.T.q()));
                } else if (i3 == 0) {
                    q2 = d2 - e2;
                }
                q2 = Math.max(d52.u, q2);
                int i4 = d52.v;
                if (i4 > 0) {
                    q2 = Math.min(i4, q2);
                }
            }
            int i5 = e2 + ((int) ((f2 * ((d2 - e2) - q2)) + 0.5f));
            d52.J(i5, q2 + i5);
            I(i2 + 1, c0519u5, d52, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r10.bottom <= r12.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        if (r9 == 17) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
    
        if (r9 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        r11 = O(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
    
        if (r9 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        if (r9 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        if (r9 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (r9 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
    
        r9 = r12.bottom;
        r10 = r10.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        if (r11 >= java.lang.Math.max(1, r9 - r10)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
    
        throw new java.lang.IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        r9 = r12.right;
        r10 = r10.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0065, code lost:
    
        r9 = r10.top;
        r10 = r12.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        r9 = r10.left;
        r10 = r12.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0033, code lost:
    
        if (r10.right <= r12.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x003a, code lost:
    
        if (r10.top >= r12.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0041, code lost:
    
        if (r10.left >= r12.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
            boolean r0 = i(r9, r10, r11)
            boolean r1 = i(r9, r10, r12)
            r2 = 0
            if (r1 != 0) goto L78
            if (r0 != 0) goto Lf
            goto L78
        Lf:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r3 = 33
            r4 = 66
            r5 = 17
            r6 = 1
            if (r9 == r5) goto L3d
            if (r9 == r3) goto L36
            if (r9 == r4) goto L2f
            if (r9 != r1) goto L29
            int r7 = r10.bottom
            int r8 = r12.top
            if (r7 > r8) goto L77
            goto L43
        L29:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r0)
            throw r9
        L2f:
            int r7 = r10.right
            int r8 = r12.left
            if (r7 > r8) goto L77
            goto L43
        L36:
            int r7 = r10.top
            int r8 = r12.bottom
            if (r7 < r8) goto L77
            goto L43
        L3d:
            int r7 = r10.left
            int r8 = r12.right
            if (r7 < r8) goto L77
        L43:
            if (r9 == r5) goto L77
            if (r9 != r4) goto L48
            goto L77
        L48:
            int r11 = O(r9, r10, r11)
            if (r9 == r5) goto L6a
            if (r9 == r3) goto L65
            if (r9 == r4) goto L60
            if (r9 != r1) goto L5a
            int r9 = r12.bottom
            int r10 = r10.bottom
        L58:
            int r9 = r9 - r10
            goto L6f
        L5a:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r0)
            throw r9
        L60:
            int r9 = r12.right
            int r10 = r10.right
            goto L58
        L65:
            int r9 = r10.top
            int r10 = r12.top
            goto L58
        L6a:
            int r9 = r10.left
            int r10 = r12.left
            goto L58
        L6f:
            int r9 = java.lang.Math.max(r6, r9)
            if (r11 >= r9) goto L76
            r2 = r6
        L76:
            return r2
        L77:
            return r6
        L78:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.h(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static void h0(int i2, C0519u5 c0519u5, D5 d5) {
        float f2 = d5.e0;
        C0394p5 c0394p5 = d5.J;
        int d2 = c0394p5.f.d();
        C0394p5 c0394p52 = d5.L;
        int d3 = c0394p52.f.d();
        int e2 = c0394p5.e() + d2;
        int e3 = d3 - c0394p52.e();
        if (d2 == d3) {
            f2 = 0.5f;
        } else {
            d2 = e2;
            d3 = e3;
        }
        int k2 = d5.k();
        int i3 = (d3 - d2) - k2;
        if (d2 > d3) {
            i3 = (d2 - d3) - k2;
        }
        int i4 = (int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3);
        int i5 = d2 + i4;
        int i6 = i5 + k2;
        if (d2 > d3) {
            i5 = d2 - i4;
            i6 = i5 - k2;
        }
        d5.K(i5, i6);
        k0(i2 + 1, c0519u5, d5);
    }

    public static boolean i(int i2, Rect rect, Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static void i0(int i2, D5 d5, C0519u5 c0519u5, D5 d52) {
        float f2 = d52.e0;
        C0394p5 c0394p5 = d52.J;
        int e2 = c0394p5.e() + c0394p5.f.d();
        C0394p5 c0394p52 = d52.L;
        int d2 = c0394p52.f.d() - c0394p52.e();
        if (d2 >= e2) {
            int k2 = d52.k();
            if (d52.g0 != 8) {
                int i3 = d52.s;
                if (i3 == 2) {
                    k2 = (int) (f2 * 0.5f * (d5 instanceof E5 ? d5.k() : d5.T.k()));
                } else if (i3 == 0) {
                    k2 = d2 - e2;
                }
                k2 = Math.max(d52.x, k2);
                int i4 = d52.y;
                if (i4 > 0) {
                    k2 = Math.min(i4, k2);
                }
            }
            int i5 = e2 + ((int) ((f2 * ((d2 - e2) - k2)) + 0.5f));
            d52.K(i5, k2 + i5);
            k0(i2 + 1, c0519u5, d52);
        }
    }

    public static int j(int i2, int i3, int[] iArr) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else {
                if (i7 <= i3) {
                    return i6;
                }
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }

    public static void j0(String str) {
        RuntimeException runtimeException = new RuntimeException("lateinit property " + str + " has not been initialized");
        Z(runtimeException, AbstractC0348nb.class.getName());
        throw runtimeException;
    }

    public static int k(long[] jArr, int i2, long j2) {
        int i3 = i2 - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            long j3 = jArr[i5];
            if (j3 < j2) {
                i4 = i5 + 1;
            } else {
                if (j3 <= j2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    /* JADX WARN: Type inference failed for: r10v14, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v7, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v2, types: [p3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [p3, java.lang.Object] */
    public static void k0(int i2, C0519u5 c0519u5, D5 d5) {
        C0394p5 c0394p5;
        C0394p5 c0394p52;
        C0394p5 c0394p53;
        C0394p5 c0394p54;
        C0394p5 c0394p55;
        if (d5.n) {
            return;
        }
        if (!(d5 instanceof E5) && d5.z() && l(d5)) {
            E5.V(d5, c0519u5, new Object());
        }
        C0394p5 i3 = d5.i(3);
        C0394p5 i4 = d5.i(5);
        int d2 = i3.d();
        int d3 = i4.d();
        HashSet hashSet = i3.a;
        if (hashSet != null && i3.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0394p5 c0394p56 = (C0394p5) it.next();
                D5 d52 = c0394p56.d;
                int i5 = i2 + 1;
                boolean l2 = l(d52);
                if (d52.z() && l2) {
                    E5.V(d52, c0519u5, new Object());
                }
                C0394p5 c0394p57 = d52.J;
                C0394p5 c0394p58 = d52.L;
                boolean z = (c0394p56 == c0394p57 && (c0394p55 = c0394p58.f) != null && c0394p55.c) || (c0394p56 == c0394p58 && (c0394p54 = c0394p57.f) != null && c0394p54.c);
                int i6 = d52.p0[1];
                if (i6 != 3 || l2) {
                    if (!d52.z()) {
                        if (c0394p56 == c0394p57 && c0394p58.f == null) {
                            int e2 = c0394p57.e() + d2;
                            d52.K(e2, d52.k() + e2);
                            k0(i5, c0519u5, d52);
                        } else if (c0394p56 == c0394p58 && c0394p57.f == null) {
                            int e3 = d2 - c0394p58.e();
                            d52.K(e3 - d52.k(), e3);
                            k0(i5, c0519u5, d52);
                        } else if (z && !d52.y()) {
                            h0(i5, c0519u5, d52);
                        }
                    }
                } else if (i6 == 3 && d52.y >= 0 && d52.x >= 0 && (d52.g0 == 8 || (d52.s == 0 && d52.W == 0.0f))) {
                    if (!d52.y() && !d52.F && z && !d52.y()) {
                        i0(i5, d5, c0519u5, d52);
                    }
                }
            }
        }
        if (d5 instanceof Aa) {
            return;
        }
        HashSet hashSet2 = i4.a;
        if (hashSet2 != null && i4.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C0394p5 c0394p59 = (C0394p5) it2.next();
                D5 d53 = c0394p59.d;
                int i7 = i2 + 1;
                boolean l3 = l(d53);
                if (d53.z() && l3) {
                    E5.V(d53, c0519u5, new Object());
                }
                C0394p5 c0394p510 = d53.J;
                C0394p5 c0394p511 = d53.L;
                boolean z2 = (c0394p59 == c0394p510 && (c0394p53 = c0394p511.f) != null && c0394p53.c) || (c0394p59 == c0394p511 && (c0394p52 = c0394p510.f) != null && c0394p52.c);
                int i8 = d53.p0[1];
                if (i8 != 3 || l3) {
                    if (!d53.z()) {
                        if (c0394p59 == c0394p510 && c0394p511.f == null) {
                            int e4 = c0394p510.e() + d3;
                            d53.K(e4, d53.k() + e4);
                            k0(i7, c0519u5, d53);
                        } else if (c0394p59 == c0394p511 && c0394p510.f == null) {
                            int e5 = d3 - c0394p511.e();
                            d53.K(e5 - d53.k(), e5);
                            k0(i7, c0519u5, d53);
                        } else if (z2 && !d53.y()) {
                            h0(i7, c0519u5, d53);
                        }
                    }
                } else if (i8 == 3 && d53.y >= 0 && d53.x >= 0) {
                    if (d53.g0 != 8) {
                        if (d53.s == 0) {
                            if (d53.W == 0.0f) {
                            }
                        }
                    }
                    if (!d53.y() && !d53.F && z2 && !d53.y()) {
                        i0(i7, d5, c0519u5, d53);
                    }
                }
            }
        }
        C0394p5 i9 = d5.i(6);
        if (i9.a != null && i9.c) {
            int d4 = i9.d();
            Iterator it3 = i9.a.iterator();
            while (it3.hasNext()) {
                C0394p5 c0394p512 = (C0394p5) it3.next();
                D5 d54 = c0394p512.d;
                int i10 = i2 + 1;
                boolean l4 = l(d54);
                if (d54.z() && l4) {
                    E5.V(d54, c0519u5, new Object());
                }
                if (d54.p0[1] != 3 || l4) {
                    if (!d54.z() && c0394p512 == (c0394p5 = d54.M)) {
                        int e6 = c0394p512.e() + d4;
                        if (d54.E) {
                            int i11 = e6 - d54.a0;
                            int i12 = d54.V + i11;
                            d54.Z = i11;
                            d54.J.l(i11);
                            d54.L.l(i12);
                            c0394p5.l(e6);
                            d54.l = true;
                        }
                        k0(i10, c0519u5, d54);
                    }
                }
            }
        }
        d5.n = true;
    }

    public static boolean l(D5 d5) {
        int[] iArr = d5.p0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        D5 d52 = d5.T;
        E5 e5 = d52 != null ? (E5) d52 : null;
        if (e5 != null) {
            int i4 = e5.p0[0];
        }
        if (e5 != null) {
            int i5 = e5.p0[1];
        }
        boolean z = i2 == 1 || d5.A() || i2 == 2 || (i2 == 3 && d5.r == 0 && d5.W == 0.0f && d5.t(0)) || (i2 == 3 && d5.r == 1 && d5.u(0, d5.q()));
        boolean z2 = i3 == 1 || d5.B() || i3 == 2 || (i3 == 3 && d5.s == 0 && d5.W == 0.0f && d5.t(1)) || (i3 == 3 && d5.s == 1 && d5.u(1, d5.k()));
        if (d5.W <= 0.0f || !(z || z2)) {
            return z && z2;
        }
        return true;
    }

    public static final Object l0(AbstractC0162g6 abstractC0162g6, InterfaceC0192ha interfaceC0192ha, S5 s5) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        Qa qa;
        InterfaceC0110e6 i2 = s5.i();
        InterfaceC0110e6 f2 = !((Boolean) abstractC0162g6.e(Boolean.FALSE, V4.f)).booleanValue() ? i2.f(abstractC0162g6) : C6.i(i2, abstractC0162g6, false);
        InterfaceC0625yb interfaceC0625yb = (InterfaceC0625yb) f2.b(T7.f);
        if (interfaceC0625yb != null && !interfaceC0625yb.a()) {
            throw ((Hb) interfaceC0625yb).u();
        }
        if (f2 == i2) {
            Ah ah = new Ah(s5, f2);
            return AbstractC0171gf.s(ah, ah, interfaceC0192ha);
        }
        T7 t7 = T7.b;
        if (g(f2.b(t7), i2.b(t7))) {
            C0359nm c0359nm = new C0359nm(s5, f2);
            InterfaceC0110e6 interfaceC0110e6 = c0359nm.c;
            Object P = AbstractC0152fm.P(interfaceC0110e6, null);
            try {
                return AbstractC0171gf.s(c0359nm, c0359nm, interfaceC0192ha);
            } finally {
                AbstractC0152fm.K(interfaceC0110e6, P);
            }
        }
        Ah ah2 = new Ah(s5, f2);
        C6.S(interfaceC0192ha, ah2, ah2);
        do {
            atomicIntegerFieldUpdater = C0496t7.e;
            int i3 = atomicIntegerFieldUpdater.get(ah2);
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                Object y = ah2.y();
                Ra ra = y instanceof Ra ? (Ra) y : null;
                if (ra != null && (qa = ra.a) != null) {
                    y = qa;
                }
                if (y instanceof C0006a5) {
                    throw ((C0006a5) y).a;
                }
                return y;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(ah2, 0, 1));
        return EnumC0291l6.a;
    }

    public static void m(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Yf.B, i2, i3);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                u(context, q, "Theme.MaterialComponents");
            }
        }
        u(context, p, "Theme.AppCompat");
    }

    public static void m0(ByteArrayOutputStream byteArrayOutputStream, long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) ((j2 >> (i3 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void n(E5 e5, C0349nc c0349nc, D5 d5) {
        d5.o = -1;
        d5.p = -1;
        int i2 = e5.p0[0];
        int[] iArr = d5.p0;
        if (i2 != 2 && iArr[0] == 4) {
            C0394p5 c0394p5 = d5.I;
            int i3 = c0394p5.g;
            int q2 = e5.q();
            C0394p5 c0394p52 = d5.K;
            int i4 = q2 - c0394p52.g;
            c0394p5.i = c0349nc.k(c0394p5);
            c0394p52.i = c0349nc.k(c0394p52);
            c0349nc.d(c0394p5.i, i3);
            c0349nc.d(c0394p52.i, i4);
            d5.o = 2;
            d5.Y = i3;
            int i5 = i4 - i3;
            d5.U = i5;
            int i6 = d5.b0;
            if (i5 < i6) {
                d5.U = i6;
            }
        }
        if (e5.p0[1] == 2 || iArr[1] != 4) {
            return;
        }
        C0394p5 c0394p53 = d5.J;
        int i7 = c0394p53.g;
        int k2 = e5.k();
        C0394p5 c0394p54 = d5.L;
        int i8 = k2 - c0394p54.g;
        c0394p53.i = c0349nc.k(c0394p53);
        c0394p54.i = c0349nc.k(c0394p54);
        c0349nc.d(c0394p53.i, i7);
        c0349nc.d(c0394p54.i, i8);
        if (d5.a0 > 0 || d5.g0 == 8) {
            C0394p5 c0394p55 = d5.M;
            C0433qi k3 = c0349nc.k(c0394p55);
            c0394p55.i = k3;
            c0349nc.d(k3, d5.a0 + i7);
        }
        d5.p = 2;
        d5.Z = i7;
        int i9 = i8 - i7;
        d5.V = i9;
        int i10 = d5.c0;
        if (i9 < i10) {
            d5.V = i10;
        }
    }

    public static void n0(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        m0(byteArrayOutputStream, i2, 2);
    }

    public static void o(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        Z(nullPointerException, AbstractC0348nb.class.getName());
        throw nullPointerException;
    }

    public static void p(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        Z(nullPointerException, AbstractC0348nb.class.getName());
        throw nullPointerException;
    }

    public static void q(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        Z(nullPointerException, AbstractC0348nb.class.getName());
        throw nullPointerException;
    }

    public static void r(Object obj, String str) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = AbstractC0348nb.class.getName();
            int i2 = 0;
            while (!stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            while (stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
            Z(nullPointerException, AbstractC0348nb.class.getName());
            throw nullPointerException;
        }
    }

    public static void s(int i2, int i3, int i4) {
        if (i2 < 0 || i3 > i4) {
            throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
        }
        if (i2 <= i3) {
            return;
        }
        throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r0.getResourceId(0, -1) != (-1)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void t(android.content.Context r5, android.util.AttributeSet r6, int[] r7, int r8, int r9, int... r10) {
        /*
            int[] r0 = defpackage.Yf.B
            android.content.res.TypedArray r0 = r5.obtainStyledAttributes(r6, r0, r8, r9)
            r1 = 2
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L12
            r0.recycle()
            return
        L12:
            int r1 = r10.length
            r3 = 1
            r4 = -1
            if (r1 != 0) goto L1f
            int r5 = r0.getResourceId(r2, r4)
            if (r5 == r4) goto L3a
        L1d:
            r2 = r3
            goto L3a
        L1f:
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r7, r8, r9)
            int r6 = r10.length
            r7 = r2
        L25:
            if (r7 >= r6) goto L36
            r8 = r10[r7]
            int r8 = r5.getResourceId(r8, r4)
            if (r8 != r4) goto L33
            r5.recycle()
            goto L3a
        L33:
            int r7 = r7 + 1
            goto L25
        L36:
            r5.recycle()
            goto L1d
        L3a:
            r0.recycle()
            if (r2 == 0) goto L40
            return
        L40:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.t(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    public static void u(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!obtainStyledAttributes.hasValue(i2)) {
                obtainStyledAttributes.recycle();
                throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
            }
        }
        obtainStyledAttributes.recycle();
    }

    public static int v(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    public static byte[] w(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public static ImageView.ScaleType x(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 5 ? i2 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1, types: [h9, Y7] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C0191h9 y(android.content.Context r8) {
        /*
            android.content.pm.PackageManager r0 = r8.getPackageManager()
            java.lang.String r1 = "Package manager required to locate emoji font provider"
            defpackage.AbstractC0145ff.f(r0, r1)
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r2 = "androidx.content.action.LOAD_EMOJI_FONT"
            r1.<init>(r2)
            r2 = 0
            java.util.List r1 = r0.queryIntentContentProviders(r1, r2)
            java.util.Iterator r1 = r1.iterator()
        L19:
            boolean r3 = r1.hasNext()
            r4 = 0
            if (r3 == 0) goto L35
            java.lang.Object r3 = r1.next()
            android.content.pm.ResolveInfo r3 = (android.content.pm.ResolveInfo) r3
            android.content.pm.ProviderInfo r3 = r3.providerInfo
            if (r3 == 0) goto L19
            android.content.pm.ApplicationInfo r5 = r3.applicationInfo
            if (r5 == 0) goto L19
            int r5 = r5.flags
            r6 = 1
            r5 = r5 & r6
            if (r5 != r6) goto L19
            goto L36
        L35:
            r3 = r4
        L36:
            if (r3 != 0) goto L3a
        L38:
            r2 = r4
            goto L6d
        L3a:
            java.lang.String r1 = r3.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.lang.String r3 = r3.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r5 = 64
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r3, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            android.content.pm.Signature[] r0 = r0.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r5.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            int r6 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
        L4c:
            if (r2 >= r6) goto L5a
            r7 = r0[r2]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r5.add(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            int r2 = r2 + 1
            goto L4c
        L5a:
            java.util.List r0 = java.util.Collections.singletonList(r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            f9 r2 = new f9     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.lang.String r5 = "emojicompat-emoji-font"
            r2.<init>(r1, r3, r5, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            goto L6d
        L66:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L38
        L6d:
            if (r2 != 0) goto L70
            goto L7a
        L70:
            h9 r4 = new h9
            g9 r0 = new g9
            r0.<init>(r8, r2)
            r4.<init>(r0)
        L7a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0348nb.y(android.content.Context):h9");
    }

    public static final boolean z(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    public abstract void C(C0122ei c0122ei, float f2, float f3);

    public abstract View R(int i2);

    public abstract boolean S();
}
