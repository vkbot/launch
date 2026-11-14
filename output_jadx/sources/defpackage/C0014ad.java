package defpackage;

import android.widget.LinearLayout;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.data.AppInfo;

/* renamed from: ad, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0014ad extends Nb implements InterfaceC0089da {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ MainActivity c;
    public final /* synthetic */ Q7 d;
    public final /* synthetic */ C0040bd e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0014ad(boolean z, MainActivity mainActivity, Q7 q7, C0040bd c0040bd) {
        super(1);
        this.b = z;
        this.c = mainActivity;
        this.d = q7;
        this.e = c0040bd;
    }

    @Override // defpackage.InterfaceC0089da
    public final Object h(Object obj) {
        AppInfo appInfo = (AppInfo) obj;
        AbstractC0348nb.r(appInfo, "app");
        boolean z = this.b;
        MainActivity mainActivity = this.c;
        Q7 q7 = this.d;
        if (z) {
            mainActivity.y = appInfo;
            q7.j.setVisibility(8);
            LinearLayout linearLayout = q7.h;
            linearLayout.setVisibility(0);
            q7.f.setImageDrawable(mainActivity.B(appInfo.getIcon()));
            q7.g.setText(appInfo.getLabel());
            linearLayout.setOnClickListener(new Xc(mainActivity, q7, 6));
        } else {
            mainActivity.z = appInfo;
            q7.s.setVisibility(8);
            LinearLayout linearLayout2 = q7.q;
            linearLayout2.setVisibility(0);
            q7.o.setImageDrawable(mainActivity.B(appInfo.getIcon()));
            q7.p.setText(appInfo.getLabel());
            linearLayout2.setOnClickListener(new Xc(mainActivity, q7, 7));
        }
        if (mainActivity.y != null && mainActivity.z != null) {
            q7.c.setAlpha(1.0f);
        }
        this.e.d();
        return C0486sm.a;
    }
}
