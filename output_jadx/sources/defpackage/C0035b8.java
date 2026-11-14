package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: b8, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0035b8 {
    public static final Object i = new Object();
    public static volatile C0035b8 j;
    public final ReentrantReadWriteLock a;
    public final Y2 b;
    public volatile int c;
    public final Handler d;
    public final X7 e;
    public final InterfaceC0009a8 f;
    public final int g;
    public final I6 h;

    public C0035b8(C0191h9 c0191h9) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock;
        this.c = 3;
        InterfaceC0009a8 interfaceC0009a8 = (InterfaceC0009a8) c0191h9.b;
        this.f = interfaceC0009a8;
        int i2 = c0191h9.a;
        this.g = i2;
        this.h = (I6) c0191h9.c;
        this.d = new Handler(Looper.getMainLooper());
        this.b = new Y2();
        X7 x7 = new X7(this);
        this.e = x7;
        reentrantReadWriteLock.writeLock().lock();
        if (i2 == 0) {
            try {
                this.c = 0;
            } catch (Throwable th) {
                this.a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                interfaceC0009a8.f(new W7(x7));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static C0035b8 a() {
        C0035b8 c0035b8;
        synchronized (i) {
            try {
                c0035b8 = j;
                if (!(c0035b8 != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return c0035b8;
    }

    public final int b() {
        this.a.readLock().lock();
        try {
            return this.c;
        } finally {
            this.a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.g == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.a.writeLock().lock();
        try {
            if (this.c == 0) {
                return;
            }
            this.c = 0;
            this.a.writeLock().unlock();
            X7 x7 = this.e;
            C0035b8 c0035b8 = x7.a;
            try {
                c0035b8.f.f(new W7(x7));
            } catch (Throwable th) {
                c0035b8.d(th);
            }
        } finally {
            this.a.writeLock().unlock();
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.a.writeLock().lock();
        try {
            this.c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.a.writeLock().unlock();
            this.d.post(new J3(arrayList, this.c, th));
        } catch (Throwable th2) {
            this.a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x015f A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #0 {all -> 0x0076, blocks: (B:119:0x005a, B:122:0x005f, B:124:0x0063, B:126:0x0070, B:29:0x0083, B:31:0x008d, B:33:0x0090, B:35:0x0094, B:37:0x00a4, B:39:0x00a7, B:43:0x00b4, B:46:0x00bc, B:51:0x00db, B:75:0x00e7, B:79:0x00f3, B:80:0x00fd, B:63:0x010c, B:66:0x0113, B:54:0x0118, B:56:0x0123, B:85:0x012a, B:87:0x012e, B:89:0x0134, B:91:0x0138, B:94:0x0140, B:97:0x014c, B:98:0x0151, B:100:0x015f, B:27:0x0079), top: B:118:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094 A[Catch: all -> 0x0076, TryCatch #0 {all -> 0x0076, blocks: (B:119:0x005a, B:122:0x005f, B:124:0x0063, B:126:0x0070, B:29:0x0083, B:31:0x008d, B:33:0x0090, B:35:0x0094, B:37:0x00a4, B:39:0x00a7, B:43:0x00b4, B:46:0x00bc, B:51:0x00db, B:75:0x00e7, B:79:0x00f3, B:80:0x00fd, B:63:0x010c, B:66:0x0113, B:54:0x0118, B:56:0x0123, B:85:0x012a, B:87:0x012e, B:89:0x0134, B:91:0x0138, B:94:0x0140, B:97:0x014c, B:98:0x0151, B:100:0x015f, B:27:0x0079), top: B:118:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x014c A[Catch: all -> 0x0076, TryCatch #0 {all -> 0x0076, blocks: (B:119:0x005a, B:122:0x005f, B:124:0x0063, B:126:0x0070, B:29:0x0083, B:31:0x008d, B:33:0x0090, B:35:0x0094, B:37:0x00a4, B:39:0x00a7, B:43:0x00b4, B:46:0x00bc, B:51:0x00db, B:75:0x00e7, B:79:0x00f3, B:80:0x00fd, B:63:0x010c, B:66:0x0113, B:54:0x0118, B:56:0x0123, B:85:0x012a, B:87:0x012e, B:89:0x0134, B:91:0x0138, B:94:0x0140, B:97:0x014c, B:98:0x0151, B:100:0x015f, B:27:0x0079), top: B:118:0x005a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence e(java.lang.CharSequence r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0035b8.e(java.lang.CharSequence, int, int):java.lang.CharSequence");
    }

    public final void f(Z7 z7) {
        AbstractC0145ff.f(z7, "initCallback cannot be null");
        this.a.writeLock().lock();
        try {
            if (this.c != 1 && this.c != 2) {
                this.b.add(z7);
                this.a.writeLock().unlock();
            }
            this.d.post(new J3(Arrays.asList(z7), this.c, (Throwable) null));
            this.a.writeLock().unlock();
        } catch (Throwable th) {
            this.a.writeLock().unlock();
            throw th;
        }
    }
}
