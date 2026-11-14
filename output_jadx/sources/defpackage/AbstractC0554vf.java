package defpackage;

import android.app.AlarmManager;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.os.StatFs;
import android.os.Trace;
import android.util.Log;
import android.view.View;
import com.omoda.launcher.R;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Set;
import java.util.TimeZone;

/* renamed from: vf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0554vf implements InterfaceC0637yn {
    public static long a;
    public static Method b;

    /* JADX WARN: Type inference failed for: r3v1, types: [S5, java.lang.Object, Mh] */
    public static final void d(View view) {
        AbstractC0348nb.r(view, "<this>");
        C0386on c0386on = new C0386on(view, null);
        ?? obj = new Object();
        obj.d = C6.f(obj, obj, c0386on);
        while (obj.hasNext()) {
            View view2 = (View) obj.next();
            C0579wf c0579wf = (C0579wf) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (c0579wf == null) {
                c0579wf = new C0579wf();
                view2.setTag(R.id.pooling_container_listener_holder_tag, c0579wf);
            }
            ArrayList arrayList = c0579wf.a;
            int o0 = M4.o0(arrayList);
            if (-1 < o0) {
                arrayList.get(o0).getClass();
                throw new ClassCastException();
            }
        }
    }

    public static float e(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static int f(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static long g() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return Long.MAX_VALUE;
        }
    }

    public static EnumC0411pm h() {
        C0255jm c0255jm = C0255jm.a;
        EnumC0411pm enumC0411pm = null;
        String string = C0255jm.d().getString("unified_mode", null);
        if (string == null) {
            EnumC0411pm enumC0411pm2 = EnumC0411pm.d;
            string = "off";
        }
        EnumC0411pm[] values = EnumC0411pm.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            EnumC0411pm enumC0411pm3 = values[i];
            if (AbstractC0348nb.g(enumC0411pm3.a, string)) {
                enumC0411pm = enumC0411pm3;
                break;
            }
            i++;
        }
        return enumC0411pm == null ? EnumC0411pm.d : enumC0411pm;
    }

    public static int i(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        throw new IllegalArgumentException(AbstractC0407pi.h("type needs to be >= FIRST and <= LAST, type=", i));
    }

    public static boolean j() {
        if (h() != EnumC0411pm.d) {
            C0255jm c0255jm = C0255jm.a;
            if (!C0255jm.c()) {
                Sb.a.getClass();
                if (!Sb.a()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean k() {
        try {
            if (b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (b == null) {
                a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) b.invoke(null, Long.valueOf(a))).booleanValue();
        } catch (Exception e) {
            if (!(e instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e);
                return false;
            }
            Throwable cause = e.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static MappedByteBuffer l(Context context, Uri uri) {
        try {
            ParcelFileDescriptor a2 = AbstractC0204hm.a(context.getContentResolver(), uri, "r", null);
            if (a2 == null) {
                if (a2 != null) {
                    a2.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(a2.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    a2.close();
                    return map;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    a2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static final String m(Reader reader) {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int read = reader.read(cArr);
        while (read >= 0) {
            stringWriter.write(cArr, 0, read);
            read = reader.read(cArr);
        }
        String stringWriter2 = stringWriter.toString();
        AbstractC0348nb.q(stringWriter2, "toString(...)");
        return stringWriter2;
    }

    public static Set n(Object... objArr) {
        return objArr.length > 0 ? Z2.Y(objArr) : C0597x8.a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [mb, kb] */
    public static C0322mb o(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new AbstractC0270kb(i, i2 - 1, 1);
        }
        C0322mb c0322mb = C0322mb.d;
        return C0322mb.d;
    }

    public static void p(Context context, int i) {
        String str;
        AbstractC0348nb.r(context, "ctx");
        int f = f(C6.O(i / 60.0d), -12, 14);
        if (f >= 0) {
            str = AbstractC0407pi.h("Etc/GMT-", f);
        } else {
            str = "Etc/GMT+" + (-f);
        }
        if (AbstractC0348nb.g(TimeZone.getDefault().getID(), str)) {
            return;
        }
        try {
            Object systemService = context.getSystemService("alarm");
            AbstractC0348nb.p(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            ((AlarmManager) systemService).setTimeZone(str);
            Log.i("SystemZone", "timezone := " + str + " (offset " + i + "m)");
        } catch (Exception e) {
            AbstractC0407pi.m(e, AbstractC0407pi.l("setTimeZone(", str, ") failed: "), "SystemZone");
        }
    }

    @Override // defpackage.InterfaceC0637yn
    public void b(View view) {
    }

    @Override // defpackage.InterfaceC0637yn
    public void c() {
    }
}
