package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: gm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0178gm {
    public static final Of a;
    public static final Sc b;

    /* JADX WARN: Type inference failed for: r0v0, types: [Of, java.lang.Object] */
    static {
        ?? obj = new Object();
        new ConcurrentHashMap();
        a = obj;
        b = new Sc(16);
    }

    public static Typeface a(Context context, C0448r9[] c0448r9Arr, int i) {
        int i2;
        ParcelFileDescriptor openFileDescriptor;
        a.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = c0448r9Arr.length;
            FontFamily.Builder builder = null;
            while (i2 < length) {
                C0448r9 c0448r9 = c0448r9Arr[i2];
                try {
                    openFileDescriptor = contentResolver.openFileDescriptor(c0448r9.a, "r", null);
                } catch (IOException unused) {
                }
                if (openFileDescriptor != null) {
                    try {
                        Font build = new Font.Builder(openFileDescriptor).setWeight(c0448r9.c).setSlant(c0448r9.d ? 1 : 0).setTtcIndex(c0448r9.b).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(build);
                        } else {
                            builder.addFont(build);
                        }
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                        break;
                    }
                } else {
                    i2 = openFileDescriptor == null ? i2 + 1 : 0;
                }
                openFileDescriptor.close();
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(Of.a(build2, i).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if (r3.equals(r4) == false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface b(android.content.Context r14, defpackage.InterfaceC0346n9 r15, android.content.res.Resources r16, int r17, java.lang.String r18, int r19, int r20, defpackage.AbstractC0145ff r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0178gm.b(android.content.Context, n9, android.content.res.Resources, int, java.lang.String, int, int, ff, boolean):android.graphics.Typeface");
    }

    public static Typeface c(Resources resources, int i, String str, int i2, int i3) {
        Typeface typeface;
        a.getClass();
        try {
            Font build = new Font.Builder(resources, i).build();
            typeface = new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            typeface = null;
        }
        if (typeface != null) {
            b.b(d(resources, i, str, i2, i3), typeface);
        }
        return typeface;
    }

    public static String d(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }
}
