package defpackage;

import android.content.Intent;
import android.view.View;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.data.PresetRepository;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Gk implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ int c;

    public /* synthetic */ Gk(int i, TopOverlayAccessibilityService topOverlayAccessibilityService) {
        this.a = 2;
        this.c = i;
        this.b = topOverlayAccessibilityService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.c;
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
        switch (this.a) {
            case 0:
                TopOverlayAccessibilityService topOverlayAccessibilityService2 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                topOverlayAccessibilityService.L = -1;
                Intent intent = new Intent(topOverlayAccessibilityService, (Class<?>) MainActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("edit_preset_index", i);
                topOverlayAccessibilityService.startActivity(intent);
                topOverlayAccessibilityService.M();
                return;
            case 1:
                TopOverlayAccessibilityService topOverlayAccessibilityService3 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                PresetRepository presetRepository = topOverlayAccessibilityService.I;
                if (presetRepository == null) {
                    AbstractC0348nb.j0("presetRepository");
                    throw null;
                }
                presetRepository.deletePreset(i);
                topOverlayAccessibilityService.L = -1;
                topOverlayAccessibilityService.D0();
                return;
            default:
                TopOverlayAccessibilityService topOverlayAccessibilityService4 = TopOverlayAccessibilityService.n1;
                AbstractC0348nb.r(topOverlayAccessibilityService, "this$0");
                if (i > 0) {
                    topOverlayAccessibilityService.D();
                    return;
                }
                topOverlayAccessibilityService.D();
                String packageName = topOverlayAccessibilityService.getPackageName();
                AbstractC0348nb.q(packageName, "getPackageName(...)");
                topOverlayAccessibilityService.Q(packageName);
                return;
        }
    }

    public /* synthetic */ Gk(TopOverlayAccessibilityService topOverlayAccessibilityService, int i, int i2) {
        this.a = i2;
        this.b = topOverlayAccessibilityService;
        this.c = i;
    }
}
