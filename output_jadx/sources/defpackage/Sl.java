package defpackage;

import android.os.Handler;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* loaded from: classes.dex */
public final class Sl extends AbstractC0098dj implements InterfaceC0192ha {
    public final /* synthetic */ TopOverlayAccessibilityService e;
    public final /* synthetic */ File f;
    public final /* synthetic */ RemoteApp g;
    public final /* synthetic */ C0203hl h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Sl(TopOverlayAccessibilityService topOverlayAccessibilityService, File file, RemoteApp remoteApp, C0203hl c0203hl, S5 s5) {
        super(s5);
        this.e = topOverlayAccessibilityService;
        this.f = file;
        this.g = remoteApp;
        this.h = c0203hl;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        C0203hl c0203hl = this.h;
        return new Sl(this.e, this.f, this.g, c0203hl, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        AbstractC0171gf.v(obj);
        Handler handler = C0244jb.a;
        C0203hl c0203hl = this.h;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.e;
        C0244jb.b(topOverlayAccessibilityService, this.f, false, new C0203hl(topOverlayAccessibilityService, this.g, c0203hl, 3), 12);
        return C0486sm.a;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        Sl sl = (Sl) a((S5) obj2, (InterfaceC0265k6) obj);
        C0486sm c0486sm = C0486sm.a;
        sl.b(c0486sm);
        return c0486sm;
    }
}
