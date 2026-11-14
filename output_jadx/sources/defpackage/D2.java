package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.media.AudioRecord;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import android.widget.TextView;
import androidx.profileinstaller.ProfileInstallerInitializer;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.IOException;
import java.util.Random;

/* loaded from: classes.dex */
public final /* synthetic */ class D2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ D2(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        long j;
        long j2;
        long j3;
        int i = 1;
        switch (this.a) {
            case 0:
                Runnable runnable = (Runnable) this.c;
                E2 e2 = (E2) this.b;
                e2.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    e2.a();
                }
            case 1:
                ((ProfileInstallerInitializer) this.b).getClass();
                Nf.a(Looper.getMainLooper()).postDelayed(new RunnableC0209i1((Context) this.c, i), new Random().nextInt(Math.max(1000, 1)) + 5000);
                return;
            case 2:
                ((AbstractC0145ff) this.b).A((Typeface) this.c);
                return;
            case 3:
                C0658zj c0658zj = (C0658zj) this.b;
                AbstractC0348nb.r(c0658zj, "this$0");
                C0434qj c0434qj = (C0434qj) this.c;
                AbstractC0348nb.r(c0434qj, "this$1");
                C0658zj.b(c0658zj, c0434qj.c());
                return;
            case 4:
                EnumC0331mk enumC0331mk = EnumC0331mk.a;
                C0435qk c0435qk = (C0435qk) this.b;
                J2 j22 = (J2) this.c;
                long[] jArr = C0435qk.i;
                AbstractC0348nb.r(c0435qk, "this$0");
                AbstractC0348nb.r(j22, "$self");
                try {
                    Context context = C0357nk.a;
                    if (C0357nk.f) {
                        C0279kk c0279kk = C0357nk.b;
                        if (c0279kk == null) {
                            AbstractC0348nb.j0("base");
                            throw null;
                        }
                        j3 = c0279kk.a();
                    } else {
                        j3 = 0;
                    }
                    Fe a = Ge.a(j3);
                    if (a != null) {
                        z = C0357nk.d(a.a, a.b);
                        if (!z) {
                            try {
                                Log.w("TimeSyncWatchdog", "time from " + a.b + " rejected — keeping retry cadence");
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    Log.e("TimeSyncWatchdog", "time acquisition threw", th);
                                    c0435qk.e = false;
                                    if (z) {
                                        c0435qk.d = 0;
                                    } else {
                                        c0435qk.d++;
                                    }
                                    boolean z2 = c0435qk.g;
                                    c0435qk.g = false;
                                    if (z2) {
                                        j2 = 0;
                                    } else {
                                        if (!z) {
                                            Context context2 = C0357nk.a;
                                            if (C0357nk.c() == enumC0331mk) {
                                                j2 = c0435qk.d <= 4 ? jArr[c0435qk.d] : 600000L;
                                            }
                                        }
                                        j2 = 21600000;
                                    }
                                    if (c0435qk.f) {
                                        c0435qk.b.removeCallbacks(j22);
                                        c0435qk.b.postDelayed(j22, j2);
                                        return;
                                    }
                                    return;
                                } catch (Throwable th2) {
                                    c0435qk.e = false;
                                    if (z) {
                                        c0435qk.d = 0;
                                    } else {
                                        c0435qk.d++;
                                    }
                                    boolean z3 = c0435qk.g;
                                    c0435qk.g = false;
                                    if (z3) {
                                        j = 0;
                                    } else {
                                        if (!z) {
                                            Context context3 = C0357nk.a;
                                            if (C0357nk.c() == enumC0331mk) {
                                                j = c0435qk.d <= 4 ? jArr[c0435qk.d] : 600000L;
                                            }
                                        }
                                        j = 21600000;
                                    }
                                    if (c0435qk.f) {
                                        c0435qk.b.removeCallbacks(j22);
                                        c0435qk.b.postDelayed(j22, j);
                                    }
                                    throw th2;
                                }
                            }
                        }
                    } else {
                        Log.w("TimeSyncWatchdog", "no time source answered (attempt " + (c0435qk.d + 1) + ')');
                        z = false;
                    }
                    c0435qk.e = false;
                    if (z) {
                        c0435qk.d = 0;
                    } else {
                        c0435qk.d++;
                    }
                    boolean z4 = c0435qk.g;
                    c0435qk.g = false;
                    j2 = z4 ? 0L : (!z && C0357nk.c() == enumC0331mk) ? c0435qk.d <= 4 ? jArr[c0435qk.d] : 600000L : 21600000L;
                } catch (Throwable th3) {
                    th = th3;
                    z = false;
                }
                if (c0435qk.f) {
                    c0435qk.b.removeCallbacks(j22);
                    c0435qk.b.postDelayed(j22, j2);
                    return;
                }
                return;
            case 5:
                TopOverlayAccessibilityService topOverlayAccessibilityService = (TopOverlayAccessibilityService) this.b;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                TextView textView = topOverlayAccessibilityService.l;
                if (textView == null) {
                    return;
                }
                if (topOverlayAccessibilityService.n) {
                    textView.setVisibility(8);
                    return;
                }
                Float f = (Float) this.c;
                Float f2 = f != null ? f : null;
                if (f2 == null) {
                    textView.setVisibility(8);
                    return;
                }
                String valueOf = String.valueOf(Math.round(f2.floatValue()));
                SpannableString spannableString = new SpannableString(AbstractC0407pi.i(valueOf, "°C"));
                spannableString.setSpan(new RelativeSizeSpan(0.6f), valueOf.length(), valueOf.length() + 2, 33);
                textView.setText(spannableString);
                textView.setVisibility(0);
                return;
            default:
                AudioRecord audioRecord = (AudioRecord) this.b;
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream((ParcelFileDescriptor) this.c);
                byte[] bArr = new byte[3200];
                try {
                    try {
                        audioRecord.startRecording();
                        while (Nn.b) {
                            int read = audioRecord.read(bArr, 0, 3200);
                            if (read > 0) {
                                byte[] bArr2 = Nn.e;
                                if (bArr2 != null) {
                                    int min = Math.min(read, bArr2.length - Nn.f);
                                    autoCloseOutputStream.write(bArr2, Nn.f, min);
                                    if (min < read) {
                                        autoCloseOutputStream.write(new byte[read - min]);
                                    }
                                    int i2 = Nn.f + min;
                                    Nn.f = i2;
                                    if (i2 >= bArr2.length) {
                                        Nn.e = null;
                                    }
                                } else {
                                    autoCloseOutputStream.write(bArr, 0, read);
                                }
                            }
                        }
                        try {
                            audioRecord.stop();
                        } catch (Throwable unused) {
                        }
                        audioRecord.release();
                    } catch (Throwable th4) {
                        try {
                            audioRecord.stop();
                        } catch (Throwable unused2) {
                        }
                        audioRecord.release();
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                        Nn.b = false;
                        throw th4;
                    }
                } catch (IOException e) {
                    Log.i("VoiceMic", "Cherry Voice stopped listening: " + e);
                    Nn.c = SystemClock.elapsedRealtime() + ((long) 5000);
                    try {
                        audioRecord.stop();
                    } catch (Throwable unused4) {
                    }
                    audioRecord.release();
                } catch (Throwable th5) {
                    Log.w("VoiceMic", "capture: " + th5);
                    Nn.c = SystemClock.elapsedRealtime() + 30000;
                    try {
                        audioRecord.stop();
                    } catch (Throwable unused5) {
                    }
                    audioRecord.release();
                }
                try {
                    autoCloseOutputStream.close();
                } catch (Throwable unused6) {
                }
                Nn.b = false;
                return;
        }
    }
}
