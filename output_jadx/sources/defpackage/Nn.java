package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioRecordingConfiguration;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Nn {
    public static volatile boolean b;
    public static volatile long c;
    public static volatile long d;
    public static volatile byte[] e;
    public static int f;
    public static Context g;
    public static final Uri a = Uri.parse("content://com.cherryvoice.offline/audio");
    public static final C0149fj h = new C0149fj(Ph.l);
    public static final RunnableC0112e8 i = new RunnableC0112e8(2);

    public static final boolean a() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Object obj;
        Context context = g;
        if (context == null) {
            AbstractC0348nb.j0("app");
            throw null;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            Iterator<T> it = runningAppProcesses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (AbstractC0348nb.g(((ActivityManager.RunningAppProcessInfo) obj).processName, "ru.yandex.yandexnavi")) {
                    break;
                }
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj;
            if (runningAppProcessInfo != null) {
                int i2 = runningAppProcessInfo.importance;
                if (i2 == 100 || i2 == 200) {
                    return true;
                }
                Context context2 = g;
                if (context2 == null) {
                    AbstractC0348nb.j0("app");
                    throw null;
                }
                AudioManager audioManager = (AudioManager) context2.getSystemService(AudioManager.class);
                List<AudioRecordingConfiguration> activeRecordingConfigurations = audioManager != null ? audioManager.getActiveRecordingConfigurations() : null;
                if (activeRecordingConfigurations == null) {
                    activeRecordingConfigurations = C0547v8.a;
                }
                Boolean d2 = d(activeRecordingConfigurations);
                if (d2 != null) {
                    return d2.booleanValue();
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b() {
        /*
            r0 = 0
            android.content.Context r1 = defpackage.Nn.g     // Catch: java.lang.Exception -> L2d
            if (r1 == 0) goto L27
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.lang.Exception -> L2d
            android.net.Uri r2 = defpackage.Nn.a     // Catch: java.lang.Exception -> L2d
            android.content.ContentProviderClient r1 = r1.acquireUnstableContentProviderClient(r2)     // Catch: java.lang.Exception -> L2d
            if (r1 == 0) goto L2d
            java.lang.String r3 = "w"
            android.os.ParcelFileDescriptor r2 = r1.openFile(r2, r3)     // Catch: java.lang.Throwable -> L1b
            r1.close()     // Catch: java.lang.Exception -> L2d
            goto L2e
        L1b:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L1d
        L1d:
            r3 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L22
            goto L26
        L22:
            r1 = move-exception
            defpackage.AbstractC0152fm.a(r2, r1)     // Catch: java.lang.Exception -> L2d
        L26:
            throw r3     // Catch: java.lang.Exception -> L2d
        L27:
            java.lang.String r1 = "app"
            defpackage.AbstractC0348nb.j0(r1)     // Catch: java.lang.Exception -> L2d
            throw r0     // Catch: java.lang.Exception -> L2d
        L2d:
            r2 = r0
        L2e:
            r3 = 30000(0x7530, double:1.4822E-319)
            if (r2 != 0) goto L3a
            long r0 = android.os.SystemClock.elapsedRealtime()
            long r0 = r0 + r3
            defpackage.Nn.c = r0
            goto L8e
        L3a:
            r1 = 16000(0x3e80, float:2.2421E-41)
            r5 = 16
            r6 = 2
            int r1 = android.media.AudioRecord.getMinBufferSize(r1, r5, r6)
            android.media.AudioRecord r11 = new android.media.AudioRecord     // Catch: java.lang.Exception -> L56
            r5 = 6400(0x1900, float:8.968E-42)
            int r10 = java.lang.Math.max(r1, r5)     // Catch: java.lang.Exception -> L56
            r6 = 6
            r7 = 16000(0x3e80, float:2.2421E-41)
            r8 = 16
            r9 = 2
            r5 = r11
            r5.<init>(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L56
            r0 = r11
        L56:
            java.lang.String r1 = "VoiceMic"
            if (r0 == 0) goto L7a
            int r5 = r0.getState()
            r6 = 1
            if (r5 == r6) goto L62
            goto L7a
        L62:
            defpackage.Nn.b = r6
            java.lang.String r3 = "the navigator does not listen (closed, map hidden): microphone -> Cherry Voice"
            android.util.Log.i(r1, r3)
            java.lang.Thread r1 = new java.lang.Thread
            D2 r3 = new D2
            r4 = 6
            r3.<init>(r0, r4, r2)
            java.lang.String r0 = "voice-mic-capture"
            r1.<init>(r3, r0)
            r1.start()
            goto L8e
        L7a:
            java.lang.String r5 = "no microphone"
            android.util.Log.w(r1, r5)
            if (r0 == 0) goto L84
            r0.release()
        L84:
            r2.close()
            long r0 = android.os.SystemClock.elapsedRealtime()
            long r0 = r0 + r3
            defpackage.Nn.c = r0
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Nn.b():void");
    }

    public static final byte[] c(File file) {
        int i2;
        ByteBuffer order = ByteBuffer.wrap(C6.D(file)).order(ByteOrder.LITTLE_ENDIAN);
        int i3 = 12;
        int i4 = 16000;
        short s = 1;
        while (true) {
            int i5 = i3 + 8;
            if (i5 > order.limit()) {
                throw new IOException("no data in " + file);
            }
            int i6 = order.getInt(i3);
            int i7 = order.getInt(i3 + 4);
            if (i6 == 544501094) {
                s = order.getShort(i3 + 10);
                i4 = order.getInt(i3 + 12);
            } else if (i6 == 1635017060) {
                int min = (Math.min(i7, (order.limit() - i3) - 8) / 2) / s;
                int i8 = i4 % 16000;
                int i9 = i8 == 0 ? i4 / 16000 : 1;
                int i10 = i8 == 0 ? min / i9 : (int) ((min * 16000) / i4);
                ByteBuffer order2 = ByteBuffer.allocate(i10 * 2).order(ByteOrder.LITTLE_ENDIAN);
                int i11 = 0;
                while (i11 < i10) {
                    if (i8 == 0) {
                        int i12 = 0;
                        for (int i13 = 0; i13 < i9; i13++) {
                            i12 += order.getShort((((i11 * i9) + i13) * 2 * s) + i5);
                        }
                        order2.putShort((short) (i12 / i9));
                        i2 = i11;
                    } else {
                        i2 = i11;
                        order2.putShort(order.getShort((Math.min(min - 1, (int) ((i11 * i4) / 16000)) * 2 * s) + i5));
                    }
                    i11 = i2 + 1;
                }
                byte[] array = order2.array();
                AbstractC0348nb.q(array, "array(...)");
                return array;
            }
            i3 += i7 + 8 + (i7 & 1);
        }
    }

    public static Boolean d(List list) {
        try {
            Context context = g;
            if (context == null) {
                AbstractC0348nb.j0("app");
                throw null;
            }
            int packageUid = context.getPackageManager().getPackageUid("ru.yandex.yandexnavi", 0);
            ArrayList arrayList = new ArrayList(N4.r0(list));
            Iterator it = list.iterator();
            while (true) {
                int i2 = -1;
                if (!it.hasNext()) {
                    break;
                }
                AudioRecordingConfiguration audioRecordingConfiguration = (AudioRecordingConfiguration) it.next();
                try {
                    Object invoke = audioRecordingConfiguration.getClass().getMethod("getClientUid", null).invoke(audioRecordingConfiguration, null);
                    AbstractC0348nb.p(invoke, "null cannot be cast to non-null type kotlin.Int");
                    i2 = ((Integer) invoke).intValue();
                } catch (Throwable unused) {
                }
                arrayList.add(Integer.valueOf(i2));
            }
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (((Number) it2.next()).intValue() == -1) {
                        return null;
                    }
                }
            }
            return Boolean.valueOf(arrayList.contains(Integer.valueOf(packageUid)));
        } catch (Exception unused2) {
            return Boolean.FALSE;
        }
    }
}
