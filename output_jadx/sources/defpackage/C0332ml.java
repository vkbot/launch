package defpackage;

import android.os.Handler;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* renamed from: ml, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0332ml extends Nb implements InterfaceC0192ha {
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ RemoteApp c;
    public final /* synthetic */ C0203hl d;
    public final /* synthetic */ Jl e;
    public final /* synthetic */ File f;
    public final /* synthetic */ TopOverlayAccessibilityService g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0332ml(TopOverlayAccessibilityService topOverlayAccessibilityService, RemoteApp remoteApp, C0203hl c0203hl, Jl jl, File file, TopOverlayAccessibilityService topOverlayAccessibilityService2) {
        super(2);
        this.b = topOverlayAccessibilityService;
        this.c = remoteApp;
        this.d = c0203hl;
        this.e = jl;
        this.f = file;
        this.g = topOverlayAccessibilityService2;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        String str = (String) obj2;
        AbstractC0348nb.r(str, "msg");
        C0203hl c0203hl = this.d;
        RemoteApp remoteApp = this.c;
        if (booleanValue) {
            AbstractC0152fm.G(this.b, remoteApp);
            c0203hl.e(Boolean.TRUE, str);
        } else {
            File file = this.f;
            Jl jl = this.e;
            Handler handler = C0244jb.a;
            if (Si.H(str, "INSTALL_FAILED_VERSION_DOWNGRADE") || Si.H(str, "INSTALL_FAILED_UPDATE_INCOMPATIBLE")) {
                jl.e(new C0306ll(this.g, remoteApp, file, c0203hl), new S4(6, file));
            } else {
                file.delete();
                c0203hl.e(Boolean.FALSE, str);
            }
        }
        return C0486sm.a;
    }
}
