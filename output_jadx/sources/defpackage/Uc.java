package defpackage;

import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.omoda.launcher.MainActivity;
import com.omoda.launcher.service.TopOverlayAccessibilityService;

/* loaded from: classes.dex */
public final /* synthetic */ class Uc implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ Uc(MainActivity mainActivity, int i) {
        this.a = i;
        this.b = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = 3;
        int i2 = 1;
        int i3 = 0;
        int i4 = 2;
        MainActivity mainActivity = this.b;
        switch (this.a) {
            case 0:
                MainActivity mainActivity2 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                B4 b4 = new B4(2, mainActivity);
                S4 s4 = new S4(i, mainActivity);
                B4 b42 = new B4(b4);
                S4 s42 = new S4(s4);
                TopOverlayAccessibilityService topOverlayAccessibilityService = TopOverlayAccessibilityService.n1;
                if (topOverlayAccessibilityService != null) {
                    topOverlayAccessibilityService.w.post(new RunnableC0061c8(topOverlayAccessibilityService, b42, s42, i4));
                    return;
                }
                return;
            case 1:
                MainActivity mainActivity3 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.y = null;
                mainActivity.z = null;
                mainActivity.A = 0.7f;
                Q7 a = Q7.a(mainActivity.getLayoutInflater());
                mainActivity.u(a);
                a.j.setOnClickListener(new Xc(mainActivity, a, i3));
                a.s.setOnClickListener(new Xc(mainActivity, a, i2));
                View view2 = a.e;
                view2.post(new O(12, a));
                view2.setOnTouchListener(new Wc(a, mainActivity));
                a.d.setOnClickListener(new Uc(mainActivity, i4));
                a.c.setOnClickListener(new Uc(mainActivity, i));
                FrameLayout frameLayout = a.i;
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                AbstractC0348nb.p(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                FrameLayout frameLayout2 = a.r;
                ViewGroup.LayoutParams layoutParams3 = frameLayout2.getLayoutParams();
                AbstractC0348nb.p(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
                float f = mainActivity.A;
                layoutParams2.weight = f;
                layoutParams4.weight = 1 - f;
                frameLayout.setLayoutParams(layoutParams2);
                frameLayout2.setLayoutParams(layoutParams4);
                mainActivity.O(a);
                Yc yc = new Yc(mainActivity, a, i3);
                FrameLayout frameLayout3 = a.a;
                frameLayout3.post(yc);
                C0491t2 c0491t2 = mainActivity.v;
                if (c0491t2 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                FrameLayout frameLayout4 = (FrameLayout) c0491t2.c;
                AbstractC0348nb.q(frameLayout4, "rootLayout");
                C6.a(frameLayout4);
                C0491t2 c0491t22 = mainActivity.v;
                if (c0491t22 == null) {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
                ((FrameLayout) c0491t22.a).removeAllViews();
                C0491t2 c0491t23 = mainActivity.v;
                if (c0491t23 != null) {
                    ((FrameLayout) c0491t23.a).addView(frameLayout3);
                    return;
                } else {
                    AbstractC0348nb.j0("binding");
                    throw null;
                }
            case 2:
                MainActivity mainActivity4 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.K();
                return;
            case 3:
                MainActivity mainActivity5 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                if (mainActivity.y == null || mainActivity.z == null) {
                    return;
                }
                mainActivity.G();
                return;
            case 4:
                MainActivity mainActivity6 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.M = -1;
                mainActivity.K();
                return;
            case 5:
                MainActivity mainActivity7 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                if (mainActivity.y == null || mainActivity.z == null) {
                    return;
                }
                mainActivity.G();
                return;
            default:
                MainActivity mainActivity8 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                Log.i("MainActivity", "User requested launcher unload (kill process)");
                Process.killProcess(Process.myPid());
                return;
        }
    }
}
