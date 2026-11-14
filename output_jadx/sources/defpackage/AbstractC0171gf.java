package defpackage;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Binder;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: gf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0171gf {
    public static int a(Context context, String str) {
        int c;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String d = G2.d(str);
        if (d != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            int myUid2 = Process.myUid();
            String packageName2 = context.getPackageName();
            if (myUid2 == myUid && He.a(packageName2, packageName)) {
                AppOpsManager c2 = H2.c(context);
                c = H2.a(c2, d, Binder.getCallingUid(), packageName);
                if (c == 0) {
                    c = H2.a(c2, d, myUid, H2.b(context));
                }
            } else {
                c = G2.c((AppOpsManager) G2.a(context, AppOpsManager.class), d, packageName);
            }
            if (c != 0) {
                return -2;
            }
        }
        return 0;
    }

    public static final void b(int i, int i2) {
        String str;
        if (i <= 0 || i2 <= 0) {
            if (i != i2) {
                str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
            } else {
                str = "size " + i + " must be greater than zero.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    public static final C0250jh e(Throwable th) {
        AbstractC0348nb.r(th, "exception");
        return new C0250jh(th);
    }

    public static G1 f(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        G1 g1;
        if (i(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new G1((Shader) null, (ColorStateList) null, typedValue.data);
            }
            try {
                g1 = G1.b(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
                g1 = null;
            }
            if (g1 != null) {
                return g1;
            }
        }
        return new G1((Shader) null, (ColorStateList) null, 0);
    }

    public static boolean i(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static boolean j() {
        return TopOverlayAccessibilityService.n1 != null;
    }

    public static long k(long j) {
        short s = (short) (j & 65535);
        short s2 = (short) ((j >>> 16) & 65535);
        short s3 = (short) (s + s2);
        short s4 = (short) (s2 ^ s);
        return ((((short) ((s4 >>> 22) | (s4 << 10))) | (((short) (((short) ((s3 >>> 23) | (s3 << 9))) + s)) << 16)) << 16) | ((short) (((short) (((short) ((s << 13) | (s >>> 19))) ^ s4)) ^ (s4 << 5)));
    }

    public static TypedArray l(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static final Object s(Ah ah, Ah ah2, InterfaceC0192ha interfaceC0192ha) {
        Object c0006a5;
        Object D;
        Qa qa;
        try {
            AbstractC0152fm.b(interfaceC0192ha);
            c0006a5 = interfaceC0192ha.e(ah2, ah);
        } catch (Throwable th) {
            c0006a5 = new C0006a5(th, false);
        }
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        if (c0006a5 == enumC0291l6 || (D = ah.D(c0006a5)) == C6.k) {
            return enumC0291l6;
        }
        if (D instanceof C0006a5) {
            throw ((C0006a5) D).a;
        }
        Ra ra = D instanceof Ra ? (Ra) D : null;
        return (ra == null || (qa = ra.a) == null) ? D : qa;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long t(java.lang.String r22, long r23, long r25, long r27) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0171gf.t(java.lang.String, long, long, long):long");
    }

    public static int u(String str, int i, int i2, int i3, int i4) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return (int) t(str, i, i2, i3);
    }

    public static final void v(Object obj) {
        if (obj instanceof C0250jh) {
            throw ((C0250jh) obj).a;
        }
    }

    public abstract int c(View view, int i);

    public abstract int d(View view, int i);

    public int g(View view) {
        return 0;
    }

    public int h() {
        return 0;
    }

    public abstract void m(int i);

    public abstract void n(Typeface typeface, boolean z);

    public void o(View view, int i) {
    }

    public abstract void p(int i);

    public abstract void q(View view, int i, int i2);

    public abstract void r(View view, float f, float f2);

    public abstract boolean w(View view, int i);
}
