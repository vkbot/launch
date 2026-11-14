package defpackage;

import android.os.Handler;
import com.omoda.launcher.data.RemoteApp;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.io.File;

/* renamed from: ol, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0384ol extends AbstractC0098dj implements InterfaceC0192ha {
    public int e;
    public final /* synthetic */ TopOverlayAccessibilityService f;
    public final /* synthetic */ RemoteApp g;
    public final /* synthetic */ TopOverlayAccessibilityService h;
    public final /* synthetic */ B4 i;
    public final /* synthetic */ C0203hl j;
    public final /* synthetic */ Jl k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0384ol(TopOverlayAccessibilityService topOverlayAccessibilityService, RemoteApp remoteApp, TopOverlayAccessibilityService topOverlayAccessibilityService2, B4 b4, C0203hl c0203hl, Jl jl, S5 s5) {
        super(s5);
        this.f = topOverlayAccessibilityService;
        this.g = remoteApp;
        this.h = topOverlayAccessibilityService2;
        this.i = b4;
        this.j = c0203hl;
        this.k = jl;
    }

    @Override // defpackage.AbstractC0236j3
    public final S5 a(S5 s5, Object obj) {
        C0203hl c0203hl = this.j;
        Jl jl = this.k;
        return new C0384ol(this.f, this.g, this.h, this.i, c0203hl, jl, s5);
    }

    @Override // defpackage.AbstractC0236j3
    public final Object b(Object obj) {
        EnumC0291l6 enumC0291l6 = EnumC0291l6.a;
        int i = this.e;
        C0486sm c0486sm = C0486sm.a;
        if (i == 0) {
            AbstractC0171gf.v(obj);
            TopOverlayAccessibilityService topOverlayAccessibilityService = this.f;
            File externalCacheDir = topOverlayAccessibilityService.getExternalCacheDir();
            if (externalCacheDir == null) {
                externalCacheDir = topOverlayAccessibilityService.getCacheDir();
            }
            RemoteApp remoteApp = this.g;
            File file = new File(externalCacheDir, Si.N(remoteApp.getName(), " ", "_").concat(".apk"));
            boolean b = T0.b(remoteApp.getId(), topOverlayAccessibilityService.B().b(), file, new N2(topOverlayAccessibilityService, 3, this.i));
            C0203hl c0203hl = this.j;
            if (b) {
                Handler handler = C0244jb.a;
                Jl jl = this.k;
                RemoteApp remoteApp2 = this.g;
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = this.h;
                C0244jb.a(topOverlayAccessibilityService2, file, true, true, new C0332ml(topOverlayAccessibilityService2, remoteApp2, c0203hl, jl, file, this.f));
                return c0486sm;
            }
            T6 t6 = AbstractC0546v7.a;
            Ca ca = AbstractC0066cd.a;
            C0280kl c0280kl = new C0280kl(c0203hl, null);
            this.e = 1;
            if (AbstractC0348nb.l0(ca, c0280kl, this) == enumC0291l6) {
                return enumC0291l6;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC0171gf.v(obj);
        }
        return c0486sm;
    }

    @Override // defpackage.InterfaceC0192ha
    public final Object e(Object obj, Object obj2) {
        return ((C0384ol) a((S5) obj2, (InterfaceC0265k6) obj)).b(C0486sm.a);
    }
}
