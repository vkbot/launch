package defpackage;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.appbar.MaterialToolbar;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class C6 {
    public static final String[] h;
    public static final L j;
    public static final L k;
    public static final L l;
    public static final L m;
    public static final L n;
    public static final C0491t2 q;
    public static C0491t2 r;
    public static C0016af w;
    public static Object x;
    public static Object y;
    public static long z;
    public static final int[] a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] d = {R.attr.name, R.attr.pathData, R.attr.fillType};
    public static final int[] e = {R.attr.drawable};
    public static final int[] f = {R.attr.name, R.attr.animation};
    public static final Object[] g = new Object[0];
    public static final String[] i = {"standard", "accelerate", "decelerate", "linear"};
    public static final C0447r8 o = new C0447r8(false);
    public static final C0447r8 p = new C0447r8(true);
    public static final byte[] s = {112, 114, 111, 0};
    public static final byte[] t = {112, 114, 109, 0};
    public static final float[] u = {0.3f, 0.5f, 0.7f};
    public static final G0 v = new G0(6);

    static {
        int i2 = 27;
        h = r2;
        String[] strArr = {"\ufff8ﾜﾐﾑﾋﾚﾇﾋ\ufff8ﾓﾖﾜﾚﾑﾌﾚ\ufff5ﾞﾑﾛﾍﾐﾖﾛﾠﾖﾛ\uffff\ufff1ﾳﾖﾜﾚﾑﾌﾚﾲﾞﾑﾞﾘﾚﾍ\ufff4ﾻﾚﾉﾖﾜﾚ\uffdfﾶﾻￅ\uffdf\ufff6ﾞﾜﾋﾖﾉﾞﾋﾚﾛ\ufff1ﾏﾐﾌﾋﾏﾐﾑﾚﾠﾜﾐﾊﾑﾋ\ufff1ﾏﾐﾌﾋﾏﾐﾑﾚﾠﾜﾐﾊﾑﾋ\ufff1ﾏﾐﾌﾋﾏﾐﾑﾚﾠﾜﾐﾊﾑﾋ￭ﾌﾔﾖﾏﾠﾏﾐﾌﾋﾏﾐﾑﾚﾠﾐﾑﾜﾚ￭ﾌﾔﾖﾏﾠﾏﾐﾌﾋﾏﾐﾑﾚﾠﾐﾑﾜﾚ￭ﾌﾔﾖﾏﾠﾏﾐﾌﾋﾏﾐﾑﾚﾠﾐﾑﾜﾚ\ufffbﾜﾐﾛﾚ\uffefﾋﾐﾪﾏﾏﾚﾍﾼﾞﾌﾚￗ\uffd1\uffd1\uffd1ￖ\ufffeￒ\uffff\ufffeￒ\uffff\ufff6ﾞﾜﾋﾖﾉﾞﾋﾚﾛ\ufff1ﾳﾖﾜﾚﾑﾌﾚﾲﾞﾑﾞﾘﾚﾍ￪ﾾﾜﾋﾖﾉﾞﾋﾖﾐﾑ\uffdfﾌﾊﾜﾜﾚﾌﾌﾙﾊﾓ\ufff1ﾳﾖﾜﾚﾑﾌﾚﾲﾞﾑﾞﾘﾚﾍ\uffdfﾾﾜﾋﾖﾉﾞﾋﾖﾐﾑ\uffdfﾙﾞﾖﾓﾚﾛￅ\uffdfﾜﾐﾛﾚ\uffdfﾒﾖﾌﾒﾞﾋﾜﾗ\ufff6ﾞﾜﾋﾖﾉﾞﾋﾚﾛ\ufff1ﾳﾖﾜﾚﾑﾌﾚﾲﾞﾑﾞﾘﾚﾍ\ufff2ﾌﾚﾋﾾﾜﾋﾖﾉﾞﾋﾚﾛￗ�ﾖﾛ\ufff5ﾷﾒﾞﾜﾬﾷﾾￍￊ\uffc9\ufff2ﾘﾚﾋﾽﾆﾋﾚﾌￗ\uffd1\uffd1\uffd1ￖ\ufff5ﾷﾒﾞﾜﾬﾷﾾￍￊ\uffc9\uffefﾋﾐﾪﾏﾏﾚﾍﾼﾞﾌﾚￗ\uffd1\uffd1\uffd1ￖ\ufff2ﾘﾚﾋﾽﾆﾋﾚﾌￗ\uffd1\uffd1\uffd1ￖ\ufff2ﾋﾐﾬﾋﾍﾖﾑﾘￗ\uffd1\uffd1\uffd1ￖ\uffefﾋﾐﾪﾏﾏﾚﾍﾼﾞﾌﾚￗ\uffd1\uffd1\uffd1ￖ\ufff1ﾌﾊﾝﾌﾋﾍﾖﾑﾘￗ\uffd1\uffd1\uffd1ￖ\ufff1ﾌﾊﾝﾌﾋﾍﾖﾑﾘￗ\uffd1\uffd1\uffd1ￖ\ufff1ﾳﾖﾜﾚﾑﾌﾚﾲﾞﾑﾞﾘﾚﾍ\ufff8ﾓﾖﾜﾚﾑﾌﾚ\ufff6ﾞﾜﾋﾖﾉﾞﾋﾚﾛ\ufff1ﾏﾐﾌﾋﾏﾐﾑﾚﾠﾜﾐﾊﾑﾋ￭ﾌﾔﾖﾏﾠﾏﾐﾌﾋﾏﾐﾑﾚﾠﾐﾑﾜﾚ￩ﾐﾒﾐﾛﾞￒﾜￊￒﾓﾞﾊﾑﾜﾗﾚﾍￒￍￏￍ\uffc9\uffff"};
        j = new L(i2, "COMPLETING_ALREADY");
        k = new L(i2, "COMPLETING_WAITING_CHILDREN");
        l = new L(i2, "COMPLETING_RETRY");
        m = new L(i2, "TOO_LATE_TO_CANCEL");
        n = new L(i2, "SEALED");
        Object obj = null;
        q = new C0491t2(obj, obj, obj);
    }

    public static int A(int i2, int i3, float f2) {
        return U4.b(U4.d(i3, Math.round(Color.alpha(i3) * f2)), i2);
    }

    public static K1 B(Context context, AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9, boolean z2, boolean z3) {
        int i2;
        C0573w9 c0573w9 = abstractComponentCallbacksC0598x9.H;
        int i3 = c0573w9 == null ? 0 : c0573w9.f;
        if (z3) {
            if (z2) {
                if (c0573w9 != null) {
                    i2 = c0573w9.d;
                }
                i2 = 0;
            } else {
                if (c0573w9 != null) {
                    i2 = c0573w9.e;
                }
                i2 = 0;
            }
        } else if (z2) {
            if (c0573w9 != null) {
                i2 = c0573w9.b;
            }
            i2 = 0;
        } else {
            if (c0573w9 != null) {
                i2 = c0573w9.c;
            }
            i2 = 0;
        }
        abstractComponentCallbacksC0598x9.z(0, 0, 0, 0);
        ViewGroup viewGroup = abstractComponentCallbacksC0598x9.D;
        if (viewGroup != null && viewGroup.getTag(com.omoda.launcher.R.id.visible_removing_fragment_view_tag) != null) {
            abstractComponentCallbacksC0598x9.D.setTag(com.omoda.launcher.R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = abstractComponentCallbacksC0598x9.D;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        if (i2 == 0 && i3 != 0) {
            i2 = i3 != 4097 ? i3 != 4099 ? i3 != 8194 ? -1 : z2 ? com.omoda.launcher.R.animator.fragment_close_enter : com.omoda.launcher.R.animator.fragment_close_exit : z2 ? com.omoda.launcher.R.animator.fragment_fade_enter : com.omoda.launcher.R.animator.fragment_fade_exit : z2 ? com.omoda.launcher.R.animator.fragment_open_enter : com.omoda.launcher.R.animator.fragment_open_exit;
        }
        if (i2 != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i2));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
                    if (loadAnimation != null) {
                        return new K1(loadAnimation);
                    }
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
                if (loadAnimator != null) {
                    return new K1(loadAnimator);
                }
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                if (loadAnimation2 != null) {
                    return new K1(loadAnimation2);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.OutputStream, java.io.ByteArrayOutputStream, K8] */
    public static byte[] D(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i2 = (int) length;
            byte[] bArr = new byte[i2];
            int i3 = i2;
            int i4 = 0;
            while (i3 > 0) {
                int read = fileInputStream.read(bArr, i4, i3);
                if (read < 0) {
                    break;
                }
                i3 -= read;
                i4 += read;
            }
            if (i3 > 0) {
                bArr = Arrays.copyOf(bArr, i4);
                AbstractC0348nb.q(bArr, "copyOf(...)");
            } else {
                int read2 = fileInputStream.read();
                if (read2 != -1) {
                    ?? byteArrayOutputStream = new ByteArrayOutputStream(8193);
                    byteArrayOutputStream.write(read2);
                    AbstractC0152fm.h(fileInputStream, byteArrayOutputStream);
                    int size = byteArrayOutputStream.size() + i2;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    byte[] a2 = byteArrayOutputStream.a();
                    bArr = Arrays.copyOf(bArr, size);
                    AbstractC0348nb.q(bArr, "copyOf(...)");
                    System.arraycopy(a2, 0, bArr, i2, byteArrayOutputStream.size());
                }
            }
            c(fileInputStream, null);
            return bArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static int[] E(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            iArr[i4] = i3;
        }
        return iArr;
    }

    public static C0266k7[] F(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, C0266k7[] c0266k7Arr) {
        byte[] bArr3 = AbstractC0348nb.n;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, AbstractC0348nb.o)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int X = (int) AbstractC0348nb.X(fileInputStream, 2);
            byte[] V = AbstractC0348nb.V(fileInputStream, (int) AbstractC0348nb.X(fileInputStream, 4), (int) AbstractC0348nb.X(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(V);
            try {
                C0266k7[] H = H(byteArrayInputStream, bArr2, X, c0266k7Arr);
                byteArrayInputStream.close();
                return H;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(AbstractC0348nb.i, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int X2 = (int) AbstractC0348nb.X(fileInputStream, 1);
        byte[] V2 = AbstractC0348nb.V(fileInputStream, (int) AbstractC0348nb.X(fileInputStream, 4), (int) AbstractC0348nb.X(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(V2);
        try {
            C0266k7[] G = G(byteArrayInputStream2, X2, c0266k7Arr);
            byteArrayInputStream2.close();
            return G;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static C0266k7[] G(ByteArrayInputStream byteArrayInputStream, int i2, C0266k7[] c0266k7Arr) {
        if (byteArrayInputStream.available() == 0) {
            return new C0266k7[0];
        }
        if (i2 != c0266k7Arr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i2];
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int X = (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            iArr[i3] = (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            strArr[i3] = new String(AbstractC0348nb.U(byteArrayInputStream, X), StandardCharsets.UTF_8);
        }
        for (int i4 = 0; i4 < i2; i4++) {
            C0266k7 c0266k7 = c0266k7Arr[i4];
            if (!c0266k7.b.equals(strArr[i4])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i5 = iArr[i4];
            c0266k7.e = i5;
            c0266k7.h = E(byteArrayInputStream, i5);
        }
        return c0266k7Arr;
    }

    public static C0266k7[] H(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, C0266k7[] c0266k7Arr) {
        if (byteArrayInputStream.available() == 0) {
            return new C0266k7[0];
        }
        if (i2 != c0266k7Arr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            AbstractC0348nb.X(byteArrayInputStream, 2);
            String str = new String(AbstractC0348nb.U(byteArrayInputStream, (int) AbstractC0348nb.X(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long X = AbstractC0348nb.X(byteArrayInputStream, 4);
            int X2 = (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            C0266k7 c0266k7 = null;
            if (c0266k7Arr.length > 0) {
                int indexOf = str.indexOf("!");
                if (indexOf < 0) {
                    indexOf = str.indexOf(":");
                }
                String substring = indexOf > 0 ? str.substring(indexOf + 1) : str;
                int i4 = 0;
                while (true) {
                    if (i4 >= c0266k7Arr.length) {
                        break;
                    }
                    if (c0266k7Arr[i4].b.equals(substring)) {
                        c0266k7 = c0266k7Arr[i4];
                        break;
                    }
                    i4++;
                }
            }
            if (c0266k7 == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            c0266k7.d = X;
            int[] E = E(byteArrayInputStream, X2);
            if (Arrays.equals(bArr, AbstractC0348nb.m)) {
                c0266k7.e = X2;
                c0266k7.h = E;
            }
        }
        return c0266k7Arr;
    }

    public static C0266k7[] I(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (!Arrays.equals(bArr, AbstractC0348nb.j)) {
            throw new IllegalStateException("Unsupported version");
        }
        int X = (int) AbstractC0348nb.X(fileInputStream, 1);
        byte[] V = AbstractC0348nb.V(fileInputStream, (int) AbstractC0348nb.X(fileInputStream, 4), (int) AbstractC0348nb.X(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(V);
        try {
            C0266k7[] J = J(byteArrayInputStream, str, X);
            byteArrayInputStream.close();
            return J;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static C0266k7[] J(ByteArrayInputStream byteArrayInputStream, String str, int i2) {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new C0266k7[0];
        }
        C0266k7[] c0266k7Arr = new C0266k7[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int X = (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            int X2 = (int) AbstractC0348nb.X(byteArrayInputStream, 2);
            c0266k7Arr[i3] = new C0266k7(str, new String(AbstractC0348nb.U(byteArrayInputStream, X), StandardCharsets.UTF_8), AbstractC0348nb.X(byteArrayInputStream, 4), X2, (int) AbstractC0348nb.X(byteArrayInputStream, 4), (int) AbstractC0348nb.X(byteArrayInputStream, 4), new int[X2], new TreeMap());
        }
        for (int i4 = 0; i4 < i2; i4++) {
            C0266k7 c0266k7 = c0266k7Arr[i4];
            int available = byteArrayInputStream.available() - c0266k7.f;
            int i5 = 0;
            while (true) {
                int available2 = byteArrayInputStream.available();
                treeMap = c0266k7.i;
                if (available2 <= available) {
                    break;
                }
                i5 += (int) AbstractC0348nb.X(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i5), 1);
                for (int X3 = (int) AbstractC0348nb.X(byteArrayInputStream, 2); X3 > 0; X3--) {
                    AbstractC0348nb.X(byteArrayInputStream, 2);
                    int X4 = (int) AbstractC0348nb.X(byteArrayInputStream, 1);
                    if (X4 != 6 && X4 != 7) {
                        while (X4 > 0) {
                            AbstractC0348nb.X(byteArrayInputStream, 1);
                            for (int X5 = (int) AbstractC0348nb.X(byteArrayInputStream, 1); X5 > 0; X5--) {
                                AbstractC0348nb.X(byteArrayInputStream, 2);
                            }
                            X4--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != available) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            c0266k7.h = E(byteArrayInputStream, c0266k7.e);
            int i6 = c0266k7.g;
            BitSet valueOf = BitSet.valueOf(AbstractC0348nb.U(byteArrayInputStream, (((i6 * 2) + 7) & (-8)) / 8));
            for (int i7 = 0; i7 < i6; i7++) {
                int i8 = valueOf.get(i7) ? 2 : 0;
                if (valueOf.get(i7 + i6)) {
                    i8 |= 4;
                }
                if (i8 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i7));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i7), Integer.valueOf(i8 | num.intValue()));
                }
            }
        }
        return c0266k7Arr;
    }

    public static final Object K(Object obj) {
        return obj instanceof C0006a5 ? AbstractC0171gf.e(((C0006a5) obj).a) : obj;
    }

    public static int L(Context context, int i2, int i3) {
        TypedValue H = AbstractC0152fm.H(context, i2);
        return (H == null || H.type != 16) ? i3 : H.data;
    }

    public static TimeInterpolator M(Context context, int i2, Interpolator interpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return interpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!z(valueOf, "cubic-bezier") && !z(valueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (z(valueOf, "cubic-bezier")) {
            String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
            if (split.length == 4) {
                return AbstractC0094df.b(q(split, 0), q(split, 1), q(split, 2), q(split, 3));
            }
            throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
        }
        if (!z(valueOf, "path")) {
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(valueOf));
        }
        String substring = valueOf.substring(5, valueOf.length() - 1);
        Path path = new Path();
        C0119ef[] k2 = AbstractC0145ff.k(substring);
        if (k2 != null) {
            try {
                C0119ef.b(k2, path);
            } catch (RuntimeException e2) {
                throw new RuntimeException("Error in parsing " + substring, e2);
            }
        } else {
            path = null;
        }
        return AbstractC0094df.c(path);
    }

    public static final void N(N3 n3, S5 s5, boolean z2) {
        Object obj = N3.g.get(n3);
        Throwable d2 = n3.d(obj);
        Object e2 = d2 != null ? AbstractC0171gf.e(d2) : n3.e(obj);
        if (!z2) {
            s5.c(e2);
            return;
        }
        AbstractC0348nb.p(s5, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        C0471s7 c0471s7 = (C0471s7) s5;
        T5 t5 = c0471s7.e;
        InterfaceC0110e6 interfaceC0110e6 = t5.b;
        AbstractC0348nb.o(interfaceC0110e6);
        Object P = AbstractC0152fm.P(interfaceC0110e6, c0471s7.g);
        C0359nm X = P != AbstractC0152fm.o ? X(t5, interfaceC0110e6, P) : null;
        try {
            t5.c(e2);
        } finally {
            if (X == null || X.L()) {
                AbstractC0152fm.K(interfaceC0110e6, P);
            }
        }
    }

    public static int O(double d2) {
        if (Double.isNaN(d2)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d2 > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d2 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d2);
    }

    public static int P(float f2) {
        if (Float.isNaN(f2)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f2);
    }

    public static void S(InterfaceC0192ha interfaceC0192ha, AbstractC0129f abstractC0129f, AbstractC0129f abstractC0129f2) {
        try {
            AbstractC0152fm.L(u(f(abstractC0129f, abstractC0129f2, interfaceC0192ha)), C0486sm.a, null);
        } catch (Throwable th) {
            abstractC0129f2.c(AbstractC0171gf.e(th));
            throw th;
        }
    }

    public static final Object[] T(Collection collection) {
        int size = collection.size();
        Object[] objArr = g;
        if (size == 0) {
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return objArr;
        }
        Object[] objArr2 = new Object[size];
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            objArr2[i2] = it.next();
            if (i3 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i4);
                AbstractC0348nb.q(objArr2, "copyOf(...)");
            } else if (!it.hasNext()) {
                Object[] copyOf = Arrays.copyOf(objArr2, i3);
                AbstractC0348nb.q(copyOf, "copyOf(...)");
                return copyOf;
            }
            i2 = i3;
        }
    }

    public static final Object[] U(Collection collection, Object[] objArr) {
        Object[] objArr2;
        objArr.getClass();
        int size = collection.size();
        int i2 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArr2 = objArr;
        } else {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            AbstractC0348nb.p(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr2 = (Object[]) newInstance;
        }
        while (true) {
            int i3 = i2 + 1;
            objArr2[i2] = it.next();
            if (i3 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i4);
                AbstractC0348nb.q(objArr2, "copyOf(...)");
            } else if (!it.hasNext()) {
                if (objArr2 == objArr) {
                    objArr[i3] = null;
                    return objArr;
                }
                Object[] copyOf = Arrays.copyOf(objArr2, i3);
                AbstractC0348nb.q(copyOf, "copyOf(...)");
                return copyOf;
            }
            i2 = i3;
        }
    }

    public static final String V(S5 s5) {
        Object e2;
        if (s5 instanceof C0471s7) {
            return s5.toString();
        }
        try {
            e2 = s5 + '@' + p(s5);
        } catch (Throwable th) {
            e2 = AbstractC0171gf.e(th);
        }
        if (AbstractC0276kh.a(e2) != null) {
            e2 = s5.getClass().getName() + '@' + p(s5);
        }
        return (String) e2;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean W(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, C0266k7[] c0266k7Arr) {
        long j2;
        ArrayList arrayList;
        int length;
        byte[] bArr2 = AbstractC0348nb.i;
        int i2 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = AbstractC0348nb.j;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] e2 = e(c0266k7Arr, bArr3);
                AbstractC0348nb.m0(byteArrayOutputStream, c0266k7Arr.length, 1);
                AbstractC0348nb.m0(byteArrayOutputStream, e2.length, 4);
                byte[] w2 = AbstractC0348nb.w(e2);
                AbstractC0348nb.m0(byteArrayOutputStream, w2.length, 4);
                byteArrayOutputStream.write(w2);
                return true;
            }
            byte[] bArr4 = AbstractC0348nb.l;
            if (Arrays.equals(bArr, bArr4)) {
                AbstractC0348nb.m0(byteArrayOutputStream, c0266k7Arr.length, 1);
                for (C0266k7 c0266k7 : c0266k7Arr) {
                    int size = c0266k7.i.size() * 4;
                    String k2 = k(c0266k7.a, c0266k7.b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    AbstractC0348nb.n0(byteArrayOutputStream, k2.getBytes(charset).length);
                    AbstractC0348nb.n0(byteArrayOutputStream, c0266k7.h.length);
                    AbstractC0348nb.m0(byteArrayOutputStream, size, 4);
                    AbstractC0348nb.m0(byteArrayOutputStream, c0266k7.c, 4);
                    byteArrayOutputStream.write(k2.getBytes(charset));
                    Iterator it = c0266k7.i.keySet().iterator();
                    while (it.hasNext()) {
                        AbstractC0348nb.n0(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        AbstractC0348nb.n0(byteArrayOutputStream, 0);
                    }
                    for (int i3 : c0266k7.h) {
                        AbstractC0348nb.n0(byteArrayOutputStream, i3);
                    }
                }
                return true;
            }
            byte[] bArr5 = AbstractC0348nb.k;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] e3 = e(c0266k7Arr, bArr5);
                AbstractC0348nb.m0(byteArrayOutputStream, c0266k7Arr.length, 1);
                AbstractC0348nb.m0(byteArrayOutputStream, e3.length, 4);
                byte[] w3 = AbstractC0348nb.w(e3);
                AbstractC0348nb.m0(byteArrayOutputStream, w3.length, 4);
                byteArrayOutputStream.write(w3);
                return true;
            }
            byte[] bArr6 = AbstractC0348nb.m;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            AbstractC0348nb.n0(byteArrayOutputStream, c0266k7Arr.length);
            for (C0266k7 c0266k72 : c0266k7Arr) {
                String k3 = k(c0266k72.a, c0266k72.b, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                AbstractC0348nb.n0(byteArrayOutputStream, k3.getBytes(charset2).length);
                TreeMap treeMap = c0266k72.i;
                AbstractC0348nb.n0(byteArrayOutputStream, treeMap.size());
                AbstractC0348nb.n0(byteArrayOutputStream, c0266k72.h.length);
                AbstractC0348nb.m0(byteArrayOutputStream, c0266k72.c, 4);
                byteArrayOutputStream.write(k3.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    AbstractC0348nb.n0(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i4 : c0266k72.h) {
                    AbstractC0348nb.n0(byteArrayOutputStream, i4);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            AbstractC0348nb.n0(byteArrayOutputStream2, c0266k7Arr.length);
            int i5 = 2;
            int i6 = 2;
            for (C0266k7 c0266k73 : c0266k7Arr) {
                AbstractC0348nb.m0(byteArrayOutputStream2, c0266k73.c, 4);
                AbstractC0348nb.m0(byteArrayOutputStream2, c0266k73.d, 4);
                AbstractC0348nb.m0(byteArrayOutputStream2, c0266k73.g, 4);
                String k4 = k(c0266k73.a, c0266k73.b, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = k4.getBytes(charset3).length;
                AbstractC0348nb.n0(byteArrayOutputStream2, length2);
                i6 = i6 + 14 + length2;
                byteArrayOutputStream2.write(k4.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i6 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i6 + ", does not match actual size " + byteArray.length);
            }
            No no = new No(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(no);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i7 = 0;
            int i8 = 0;
            while (i7 < c0266k7Arr.length) {
                try {
                    C0266k7 c0266k74 = c0266k7Arr[i7];
                    AbstractC0348nb.n0(byteArrayOutputStream3, i7);
                    AbstractC0348nb.n0(byteArrayOutputStream3, c0266k74.e);
                    i8 = i8 + 4 + (c0266k74.e * 2);
                    int[] iArr = c0266k74.h;
                    int length3 = iArr.length;
                    int i9 = i2;
                    while (i2 < length3) {
                        int i10 = iArr[i2];
                        AbstractC0348nb.n0(byteArrayOutputStream3, i10 - i9);
                        i2++;
                        i9 = i10;
                    }
                    i7++;
                    i2 = 0;
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i8 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i8 + ", does not match actual size " + byteArray2.length);
            }
            No no2 = new No(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(no2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i11 = 0;
            int i12 = 0;
            while (i11 < c0266k7Arr.length) {
                try {
                    C0266k7 c0266k75 = c0266k7Arr[i11];
                    Iterator it3 = c0266k75.i.entrySet().iterator();
                    int i13 = 0;
                    while (it3.hasNext()) {
                        i13 |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        a0(byteArrayOutputStream4, c0266k75);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            b0(byteArrayOutputStream4, c0266k75);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            AbstractC0348nb.n0(byteArrayOutputStream3, i11);
                            int length4 = byteArray3.length + i5 + byteArray4.length;
                            int i14 = i12 + 6;
                            ArrayList arrayList4 = arrayList3;
                            AbstractC0348nb.m0(byteArrayOutputStream3, length4, 4);
                            AbstractC0348nb.n0(byteArrayOutputStream3, i13);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i12 = i14 + length4;
                            i11++;
                            arrayList3 = arrayList4;
                            i5 = 2;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i12 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i12 + ", does not match actual size " + byteArray5.length);
            }
            No no3 = new No(4, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList2.add(no3);
            long j3 = 4;
            long size2 = j3 + j3 + 4 + (arrayList2.size() * 16);
            AbstractC0348nb.m0(byteArrayOutputStream, arrayList2.size(), 4);
            int i15 = 0;
            while (i15 < arrayList2.size()) {
                No no4 = (No) arrayList2.get(i15);
                int i16 = no4.a;
                if (i16 == 1) {
                    j2 = 0;
                } else if (i16 == 2) {
                    j2 = 1;
                } else if (i16 == 3) {
                    j2 = 2;
                } else if (i16 == 4) {
                    j2 = 3;
                } else {
                    if (i16 != 5) {
                        throw null;
                    }
                    j2 = 4;
                }
                AbstractC0348nb.m0(byteArrayOutputStream, j2, 4);
                AbstractC0348nb.m0(byteArrayOutputStream, size2, 4);
                byte[] bArr7 = no4.b;
                if (no4.c) {
                    long length5 = bArr7.length;
                    byte[] w4 = AbstractC0348nb.w(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(w4);
                    AbstractC0348nb.m0(byteArrayOutputStream, w4.length, 4);
                    AbstractC0348nb.m0(byteArrayOutputStream, length5, 4);
                    length = w4.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    AbstractC0348nb.m0(byteArrayOutputStream, bArr7.length, 4);
                    AbstractC0348nb.m0(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i15++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i17 = 0; i17 < arrayList6.size(); i17++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i17));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static final C0359nm X(S5 s5, InterfaceC0110e6 interfaceC0110e6, Object obj) {
        C0359nm c0359nm = null;
        if (!(s5 instanceof InterfaceC0317m6)) {
            return null;
        }
        if (interfaceC0110e6.b(C0385om.a) != null) {
            InterfaceC0317m6 interfaceC0317m6 = (InterfaceC0317m6) s5;
            while (true) {
                if ((interfaceC0317m6 instanceof C0496t7) || (interfaceC0317m6 = interfaceC0317m6.g()) == null) {
                    break;
                }
                if (interfaceC0317m6 instanceof C0359nm) {
                    c0359nm = (C0359nm) interfaceC0317m6;
                    break;
                }
            }
            if (c0359nm != null) {
                c0359nm.M(interfaceC0110e6, obj);
            }
        }
        return c0359nm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0087, code lost:
    
        r5 = r4.getLeftApp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f0, code lost:
    
        r12 = defpackage.AbstractC0221id.q0(new defpackage.C0016af(r12, r14));
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008f A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:6:0x0009, B:8:0x0014, B:11:0x0020, B:17:0x002e, B:19:0x0038, B:22:0x0044, B:27:0x004f, B:32:0x005e, B:36:0x0087, B:39:0x008f, B:40:0x00a6, B:42:0x00d4, B:43:0x00e0, B:46:0x00de, B:47:0x009b, B:48:0x006a, B:51:0x0071, B:54:0x007e, B:58:0x00f0, B:59:0x00fc, B:62:0x00fa), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4 A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:6:0x0009, B:8:0x0014, B:11:0x0020, B:17:0x002e, B:19:0x0038, B:22:0x0044, B:27:0x004f, B:32:0x005e, B:36:0x0087, B:39:0x008f, B:40:0x00a6, B:42:0x00d4, B:43:0x00e0, B:46:0x00de, B:47:0x009b, B:48:0x006a, B:51:0x0071, B:54:0x007e, B:58:0x00f0, B:59:0x00fc, B:62:0x00fa), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00de A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:6:0x0009, B:8:0x0014, B:11:0x0020, B:17:0x002e, B:19:0x0038, B:22:0x0044, B:27:0x004f, B:32:0x005e, B:36:0x0087, B:39:0x008f, B:40:0x00a6, B:42:0x00d4, B:43:0x00e0, B:46:0x00de, B:47:0x009b, B:48:0x006a, B:51:0x0071, B:54:0x007e, B:58:0x00f0, B:59:0x00fc, B:62:0x00fa), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:6:0x0009, B:8:0x0014, B:11:0x0020, B:17:0x002e, B:19:0x0038, B:22:0x0044, B:27:0x004f, B:32:0x005e, B:36:0x0087, B:39:0x008f, B:40:0x00a6, B:42:0x00d4, B:43:0x00e0, B:46:0x00de, B:47:0x009b, B:48:0x006a, B:51:0x0071, B:54:0x007e, B:58:0x00f0, B:59:0x00fc, B:62:0x00fa), top: B:5:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String Y(java.lang.String r12, java.util.Set r13, android.content.Intent r14) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C6.Y(java.lang.String, java.util.Set, android.content.Intent):java.lang.String");
    }

    public static void Z(ByteArrayOutputStream byteArrayOutputStream, C0266k7 c0266k7, String str) {
        Charset charset = StandardCharsets.UTF_8;
        AbstractC0348nb.n0(byteArrayOutputStream, str.getBytes(charset).length);
        AbstractC0348nb.n0(byteArrayOutputStream, c0266k7.e);
        AbstractC0348nb.m0(byteArrayOutputStream, c0266k7.f, 4);
        AbstractC0348nb.m0(byteArrayOutputStream, c0266k7.c, 4);
        AbstractC0348nb.m0(byteArrayOutputStream, c0266k7.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
    
        if (r3 != null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.view.View r6) {
        /*
            java.lang.String r0 = "view"
            defpackage.AbstractC0348nb.r(r6, r0)
            android.content.Context r0 = r6.getContext()
            java.lang.String r1 = "getContext(...)"
            defpackage.AbstractC0348nb.q(r0, r1)
            jm r1 = defpackage.C0255jm.a
            android.content.SharedPreferences r1 = defpackage.C0255jm.d()
            java.lang.String r2 = "covers_mode"
            java.lang.String r3 = "with_bg"
            java.lang.String r1 = r1.getString(r2, r3)
            if (r1 != 0) goto L1f
            goto L20
        L1f:
            r3 = r1
        L20:
            java.lang.String r1 = "black"
            boolean r1 = r3.equals(r1)
            r2 = 0
            if (r1 == 0) goto L2b
            r1 = 0
            goto L60
        L2b:
            java.lang.String r1 = "no_bg"
            boolean r1 = r3.equals(r1)
            java.lang.String r3 = "drawable"
            java.lang.String r4 = "cover"
            if (r1 == 0) goto L4e
            Xj r1 = defpackage.T7.m
            if (r1 == 0) goto L4a
            android.content.res.Resources r4 = r0.getResources()
            java.lang.String r5 = r0.getPackageName()
            java.lang.String r1 = r1.b
            int r1 = r4.getIdentifier(r1, r3, r5)
            goto L60
        L4a:
            defpackage.AbstractC0348nb.j0(r4)
            throw r2
        L4e:
            Xj r1 = defpackage.T7.m
            if (r1 == 0) goto Lc2
            android.content.res.Resources r4 = r0.getResources()
            java.lang.String r5 = r0.getPackageName()
            java.lang.String r1 = r1.a
            int r1 = r4.getIdentifier(r1, r3, r5)
        L60:
            if (r1 != 0) goto L6a
            android.graphics.drawable.ColorDrawable r0 = new android.graphics.drawable.ColorDrawable
            r1 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r0.<init>(r1)
            goto Lbe
        L6a:
            af r3 = defpackage.C6.w
            if (r3 == 0) goto L82
            java.lang.Object r4 = r3.a
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            if (r4 != r1) goto L79
            goto L7a
        L79:
            r3 = r2
        L7a:
            if (r3 == 0) goto L82
            java.lang.Object r3 = r3.b
            android.graphics.drawable.Drawable$ConstantState r3 = (android.graphics.drawable.Drawable.ConstantState) r3
            if (r3 != 0) goto Lb1
        L82:
            android.content.Context r3 = r0.getApplicationContext()
            android.content.res.Resources r3 = r3.getResources()
            android.graphics.drawable.Drawable r3 = r3.getDrawable(r1, r2)
            android.graphics.drawable.Drawable$ConstantState r3 = r3.getConstantState()
            if (r3 == 0) goto La0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r1)
            af r5 = new af
            r5.<init>(r4, r3)
            defpackage.C6.w = r5
            goto La1
        La0:
            r3 = r2
        La1:
            if (r3 != 0) goto Lb1
            android.content.res.Resources r0 = r0.getResources()
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r1, r2)
            java.lang.String r1 = "getDrawable(...)"
            defpackage.AbstractC0348nb.q(r0, r1)
            goto Lbe
        Lb1:
            android.content.res.Resources r0 = r0.getResources()
            android.graphics.drawable.Drawable r0 = r3.newDrawable(r0)
            java.lang.String r1 = "newDrawable(...)"
            defpackage.AbstractC0348nb.q(r0, r1)
        Lbe:
            r6.setBackground(r0)
            return
        Lc2:
            defpackage.AbstractC0348nb.j0(r4)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C6.a(android.view.View):void");
    }

    public static void a0(ByteArrayOutputStream byteArrayOutputStream, C0266k7 c0266k7) {
        byte[] bArr = new byte[(((c0266k7.g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : c0266k7.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i2 = intValue / 8;
                bArr[i2] = (byte) (bArr[i2] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i3 = intValue + c0266k7.g;
                int i4 = i3 / 8;
                bArr[i4] = (byte) ((1 << (i3 % 8)) | bArr[i4]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void b(String str) {
        Log.w("IcmClock", str + " — retrying in 5 min");
        y = null;
        z = SystemClock.elapsedRealtime() + 300000;
    }

    public static void b0(ByteArrayOutputStream byteArrayOutputStream, C0266k7 c0266k7) {
        int i2 = 0;
        for (Map.Entry entry : c0266k7.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                AbstractC0348nb.n0(byteArrayOutputStream, intValue - i2);
                AbstractC0348nb.n0(byteArrayOutputStream, 0);
                i2 = intValue;
            }
        }
    }

    public static final void c(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                AbstractC0152fm.a(th, th2);
            }
        }
    }

    public static ComponentName d(Context context) {
        AbstractC0348nb.r(context, "context");
        return new ComponentName(context, (Class<?>) TopOverlayAccessibilityService.class);
    }

    public static byte[] e(C0266k7[] c0266k7Arr, byte[] bArr) {
        int i2 = 0;
        for (C0266k7 c0266k7 : c0266k7Arr) {
            i2 += ((((c0266k7.g * 2) + 7) & (-8)) / 8) + (c0266k7.e * 2) + k(c0266k7.a, c0266k7.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + c0266k7.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, AbstractC0348nb.k)) {
            for (C0266k7 c0266k72 : c0266k7Arr) {
                Z(byteArrayOutputStream, c0266k72, k(c0266k72.a, c0266k72.b, bArr));
                b0(byteArrayOutputStream, c0266k72);
                int[] iArr = c0266k72.h;
                int length = iArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    int i5 = iArr[i3];
                    AbstractC0348nb.n0(byteArrayOutputStream, i5 - i4);
                    i3++;
                    i4 = i5;
                }
                a0(byteArrayOutputStream, c0266k72);
            }
        } else {
            for (C0266k7 c0266k73 : c0266k7Arr) {
                Z(byteArrayOutputStream, c0266k73, k(c0266k73.a, c0266k73.b, bArr));
            }
            for (C0266k7 c0266k74 : c0266k7Arr) {
                b0(byteArrayOutputStream, c0266k74);
                int[] iArr2 = c0266k74.h;
                int length2 = iArr2.length;
                int i6 = 0;
                int i7 = 0;
                while (i6 < length2) {
                    int i8 = iArr2[i6];
                    AbstractC0348nb.n0(byteArrayOutputStream, i8 - i7);
                    i6++;
                    i7 = i8;
                }
                a0(byteArrayOutputStream, c0266k74);
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static S5 f(S5 s5, S5 s52, InterfaceC0192ha interfaceC0192ha) {
        AbstractC0348nb.r(interfaceC0192ha, "<this>");
        if (interfaceC0192ha instanceof AbstractC0236j3) {
            return ((AbstractC0236j3) interfaceC0192ha).a(s52, s5);
        }
        InterfaceC0110e6 i2 = s52.i();
        return i2 == C0497t8.a ? new C0374ob(s52, s5, interfaceC0192ha) : new C0400pb(s52, i2, interfaceC0192ha, s5);
    }

    public static boolean g(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z2 = true;
        for (File file2 : listFiles) {
            z2 = g(file2) && z2;
        }
        return z2;
    }

    public static void h(Context context, Handler handler) {
        AbstractC0348nb.r(context, "context");
        AbstractC0348nb.r(handler, "handler");
        ContentResolver contentResolver = context.getContentResolver();
        if (!y(context)) {
            String string = Settings.Secure.getString(contentResolver, "enabled_accessibility_services");
            if (string == null) {
                string = "";
            }
            String flattenToString = d(context).flattenToString();
            AbstractC0348nb.q(flattenToString, "flattenToString(...)");
            try {
                if (string.length() != 0) {
                    flattenToString = string + ':' + flattenToString;
                }
                Settings.Secure.putString(contentResolver, "enabled_accessibility_services", flattenToString);
            } catch (Exception e2) {
                AbstractC0407pi.m(e2, new StringBuilder("putString ENABLED_ACCESSIBILITY_SERVICES failed: "), "AccessibilityRecovery");
            }
        }
        try {
            Settings.Secure.putInt(contentResolver, "accessibility_enabled", 0);
        } catch (Exception unused) {
        }
        handler.postDelayed(new O(0, contentResolver), 200L);
    }

    public static final InterfaceC0110e6 i(InterfaceC0110e6 interfaceC0110e6, InterfaceC0110e6 interfaceC0110e62, boolean z2) {
        Boolean bool = Boolean.FALSE;
        V4 v4 = V4.f;
        boolean booleanValue = ((Boolean) interfaceC0110e6.e(bool, v4)).booleanValue();
        boolean booleanValue2 = ((Boolean) interfaceC0110e62.e(bool, v4)).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return interfaceC0110e6.f(interfaceC0110e62);
        }
        C0497t8 c0497t8 = C0497t8.a;
        InterfaceC0110e6 interfaceC0110e63 = (InterfaceC0110e6) interfaceC0110e6.e(c0497t8, new V4(2, 7));
        Object obj = interfaceC0110e62;
        if (booleanValue2) {
            obj = interfaceC0110e62.e(c0497t8, V4.e);
        }
        return interfaceC0110e63.f((InterfaceC0110e6) obj);
    }

    public static void j(Context context) {
        int i2;
        AbstractC0348nb.r(context, "context");
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.setComponentEnabledSetting(d(context), 1, 1);
            try {
                i2 = packageManager.getApplicationEnabledSetting(context.getPackageName());
            } catch (Exception unused) {
                i2 = 0;
            }
            int i3 = i2 != 1 ? 1 : 0;
            packageManager.setApplicationEnabledSetting(context.getPackageName(), i3, 1);
            Log.d("AccessibilityRecovery", "Forced AMS rescan via app-level enabled flip: " + i2 + " -> " + i3);
        } catch (Exception e2) {
            AbstractC0407pi.m(e2, new StringBuilder("force AMS rescan (setApplicationEnabledSetting) failed: "), "AccessibilityRecovery");
        }
    }

    public static String k(String str, String str2, byte[] bArr) {
        byte[] bArr2 = AbstractC0348nb.m;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = AbstractC0348nb.l;
        String str3 = (equals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append((Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!");
        sb.append(str2);
        return sb.toString();
    }

    public static int l(Context context, int i2, int i3) {
        Integer num;
        TypedValue H = AbstractC0152fm.H(context, i2);
        if (H != null) {
            int i4 = H.resourceId;
            num = Integer.valueOf(i4 != 0 ? O5.a(context, i4) : H.data);
        } else {
            num = null;
        }
        return num != null ? num.intValue() : i3;
    }

    public static int m(View view, int i2) {
        Context context = view.getContext();
        TypedValue J = AbstractC0152fm.J(view.getContext(), i2, view.getClass().getCanonicalName());
        int i3 = J.resourceId;
        return i3 != 0 ? O5.a(context, i3) : J.data;
    }

    public static Drawable n(Context context, int i2) {
        return Yg.b().c(context, i2);
    }

    public static final String p(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static float q(String[] strArr, int i2) {
        float parseFloat = Float.parseFloat(strArr[i2]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static String r(long j2) {
        String[] strArr = h;
        long j3 = 4294967295L & j2;
        long j4 = (j3 ^ (j3 >>> 33)) * 7109453100751455733L;
        long k2 = AbstractC0171gf.k(((j4 ^ (j4 >>> 28)) * (-3808689974395783757L)) >>> 32);
        long j5 = (k2 >>> 32) & 65535;
        long k3 = AbstractC0171gf.k(k2);
        int i2 = (int) (((j2 >>> 32) ^ j5) ^ ((k3 >>> 16) & (-65536)));
        long k4 = AbstractC0171gf.k(k3) ^ (strArr[i2 / 8191].charAt(i2 % 8191) << 32);
        int i3 = (int) ((k4 >>> 32) & 65535);
        char[] cArr = new char[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4 + 1;
            k4 = AbstractC0171gf.k(k4) ^ (strArr[i5 / 8191].charAt(i5 % 8191) << 32);
            cArr[i4] = (char) ((k4 >>> 32) & 65535);
        }
        return new String(cArr);
    }

    public static ArrayList s(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < materialToolbar.getChildCount(); i2++) {
            View childAt = materialToolbar.getChildAt(i2);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    public static List t(Context context) {
        AbstractC0348nb.r(context, "context");
        try {
            Object systemService = context.getSystemService("accessibility");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
            List<AccessibilityServiceInfo> installedAccessibilityServiceList = ((AccessibilityManager) systemService).getInstalledAccessibilityServiceList();
            AbstractC0348nb.q(installedAccessibilityServiceList, "getInstalledAccessibilityServiceList(...)");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = installedAccessibilityServiceList.iterator();
            while (it.hasNext()) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(((AccessibilityServiceInfo) it.next()).getId());
                if (unflattenFromString != null) {
                    arrayList.add(unflattenFromString);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return C0547v8.a;
        }
    }

    public static S5 u(S5 s5) {
        AbstractC0348nb.r(s5, "<this>");
        T5 t5 = s5 instanceof T5 ? (T5) s5 : null;
        if (t5 == null) {
            return s5;
        }
        S5 s52 = t5.c;
        if (s52 != null) {
            return s52;
        }
        InterfaceC0110e6 interfaceC0110e6 = t5.b;
        AbstractC0348nb.o(interfaceC0110e6);
        U5 u5 = (U5) interfaceC0110e6.b(T7.b);
        S5 c0471s7 = u5 != null ? new C0471s7((AbstractC0162g6) u5, t5) : t5;
        t5.c = c0471s7;
        return c0471s7;
    }

    public static final boolean v(int i2) {
        return i2 == 1 || i2 == 2;
    }

    public static boolean w(int i2) {
        boolean z2;
        if (i2 != 0) {
            ThreadLocal threadLocal = U4.a;
            double[] dArr = (double[]) threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int red = Color.red(i2);
            int green = Color.green(i2);
            int blue = Color.blue(i2);
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d2 = red / 255.0d;
            double pow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = green / 255.0d;
            double pow2 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            double d4 = blue / 255.0d;
            double pow3 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
            z2 = false;
            dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
            double d5 = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
            dArr[1] = d5;
            dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
            if (d5 / 100.0d > 0.5d) {
                return true;
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    public static boolean x(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static boolean y(Context context) {
        boolean z2 = true;
        AbstractC0348nb.r(context, "context");
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
            if (string == null) {
                string = "";
            }
            ComponentName d2 = d(context);
            List O = Si.O(string, new char[]{':'});
            if (!O.isEmpty()) {
                Iterator it = O.iterator();
                while (it.hasNext()) {
                    if (AbstractC0348nb.g(ComponentName.unflattenFromString((String) it.next()), d2)) {
                        break;
                    }
                }
            }
            z2 = false;
            return z2;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean z(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public abstract Object C(int i2, Intent intent);

    public abstract void Q(boolean z2);

    public abstract void R(boolean z2);

    public abstract InputFilter[] o(InputFilter[] inputFilterArr);
}
