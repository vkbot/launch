package defpackage;

import android.os.Handler;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* loaded from: classes.dex */
public final class Rl extends AbstractC0098dj implements InterfaceC0192ha {
    public File e;
    public int f;
    public final /* synthetic */ TopOverlayAccessibilityService g;
    public final /* synthetic */ RemoteApp h;
    public final /* synthetic */ TextView i;
    public final /* synthetic */ TextView j;
    public final /* synthetic */ LinearLayout k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Rl(TopOverlayAccessibilityService topOverlayAccessibilityService, RemoteApp remoteApp, TextView textView, TextView textView2, LinearLayout linearLayout, S5 s5) {
        super(s5);
        this.g = topOverlayAccessibilityService;
        this.h = remoteApp;
        this.i = textView;
        this.j = textView2;
        this.k = linearLayout;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        return new Rl(this.g, this.h, this.i, this.j, this.k, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        File file;
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.f;
        TextView textView = this.j;
        TextView textView2 = this.i;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService = this.g;
            File externalCacheDir = topOverlayAccessibilityService.getExternalCacheDir();
            if (externalCacheDir == null) {
                externalCacheDir = topOverlayAccessibilityService.getCacheDir();
            }
            RemoteApp remoteApp = this.h;
            File file2 = new File(externalCacheDir, Si.N(remoteApp.getName(), " ", "_").concat(".apk"));
            if (T0.b(remoteApp.getId(), topOverlayAccessibilityService.B().b(), file2, new N2(topOverlayAccessibilityService, 5, textView2))) {
                T6 t6 = AbstractC0546v7.a;
                Ca ca = AbstractC0066cd.a;
                Nl nl = new Nl(textView2, null);
                this.e = file2;
                this.f = 1;
                if (AbstractC0348nb.l0(ca, nl, this) == enumC0291l6) {
                    return enumC0291l6;
                }
                file = file2;
                Handler handler = C0244jb.a;
                LinearLayout linearLayout = this.k;
                RemoteApp remoteApp2 = this.h;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.g;
                C0244jb.b(topOverlayAccessibilityService2, file, false, new Ol(linearLayout, textView2, textView, remoteApp2, topOverlayAccessibilityService2), 12);
            } else {
                T6 t62 = AbstractC0546v7.a;
                Ca ca2 = AbstractC0066cd.a;
                Pl pl = new Pl(textView2, textView, null);
                this.f = 2;
                if (AbstractC0348nb.l0(ca2, pl, this) == enumC0291l6) {
                    return enumC0291l6;
                }
            }
        } else if (i == 1) {
            file = this.e;
            AbstractC0171gf.v(obj);
            Handler handler2 = C0244jb.a;
            LinearLayout linearLayout2 = this.k;
            RemoteApp remoteApp22 = this.h;
            TopOverlayAccessibilityService topOverlayAccessibilityService22 = this.g;
            C0244jb.b(topOverlayAccessibilityService22, file, false, new Ol(linearLayout2, textView2, textView, remoteApp22, topOverlayAccessibilityService22), 12);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((Rl) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
