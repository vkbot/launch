package defpackage;

import android.os.Handler;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* renamed from: ll, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0306ll extends Nb implements S9 {
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ RemoteApp c;
    public final /* synthetic */ File d;
    public final /* synthetic */ C0203hl e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0306ll(TopOverlayAccessibilityService topOverlayAccessibilityService, RemoteApp remoteApp, File file, C0203hl c0203hl) {
        super(0);
        this.b = topOverlayAccessibilityService;
        this.c = remoteApp;
        this.d = file;
        this.e = c0203hl;
    }

    @Override // defpackage.S9
    public final Object d() {
        TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
        TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.b;
        topOverlayAccessibilityService2.getClass();
        Handler handler = C0244jb.a;
        RemoteApp remoteApp = this.c;
        C0244jb.c(null, new Ol(this.d, this.e, topOverlayAccessibilityService2, topOverlayAccessibilityService2, remoteApp), topOverlayAccessibilityService2, remoteApp.getPackageName());
        return C0486sm.a;
    }
}
