package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import com.omoda.launcher.data.AppInfo;
import com.omoda.launcher.service.TopOverlayAccessibilityService;
import java.util.Set;

/* renamed from: dl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0100dl extends Nb implements InterfaceC0089da {
    public final /* synthetic */ TopOverlayAccessibilityService b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0100dl(TopOverlayAccessibilityService topOverlayAccessibilityService, boolean z) {
        super(1);
        this.b = topOverlayAccessibilityService;
        this.c = z;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        Object obj2;
        AppInfo appInfo = (AppInfo) obj;
        AbstractC0348nb.r(appInfo, "app");
        TopOverlayAccessibilityService topOverlayAccessibilityService = this.b;
        B4 b4 = topOverlayAccessibilityService.V0;
        Intent intent = null;
        if (!this.c) {
            b4 = null;
        }
        P8 tile = appInfo.getTile();
        if (b4 != null) {
            topOverlayAccessibilityService.F();
            b4.h(appInfo);
        } else if (tile != null) {
            String label = appInfo.getLabel();
            Set set = O8.a;
            if (!tile.d || O8.e(tile, topOverlayAccessibilityService.B())) {
                EnumC0197hf enumC0197hf = tile.f;
                if (enumC0197hf != null) {
                    AbstractC0348nb.M(topOverlayAccessibilityService.x, null, new C0660zl(topOverlayAccessibilityService, enumC0197hf, label, null), 3);
                } else {
                    ComponentName componentName = tile.b;
                    if (componentName == null && enumC0197hf == null) {
                        Lm B = topOverlayAccessibilityService.B();
                        AbstractC0348nb.r(B, "vhal");
                        byte[] bArr = {1, 0};
                        if (B.a() && (obj2 = B.b) != null) {
                            try {
                                Class<?> cls = obj2.getClass();
                                Class cls2 = Integer.TYPE;
                                cls.getMethod("setProperty", Class.class, cls2, cls2, Object.class).invoke(obj2, byte[].class, 561037312, 0, bArr);
                            } catch (Throwable unused) {
                            }
                        }
                        Log.w("TopOverlayA11y", "360 camera command not sent");
                    } else {
                        if (componentName != null) {
                            try {
                                Intent addCategory = tile.c ? new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER") : new Intent();
                                AbstractC0348nb.o(addCategory);
                                intent = addCategory.setComponent(componentName).addFlags(270532608);
                            } catch (Exception e) {
                                Log.e("TopOverlayA11y", "Stock program " + tile.a + " failed", e);
                            }
                        }
                        topOverlayAccessibilityService.startActivity(intent);
                    }
                }
            } else {
                C0255jm c0255jm = C0255jm.a;
                String j = O8.j(O8.i(topOverlayAccessibilityService, C0255jm.a()), "no_igon");
                if (j != null) {
                    Toast.makeText(topOverlayAccessibilityService, j, 0).show();
                }
            }
        } else {
            topOverlayAccessibilityService.P(appInfo.getPackageName(), null);
        }
        return C0486sm.a;
    }
}
