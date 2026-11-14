package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.omoda.launcher.MainActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class Wc implements View.OnTouchListener {
    public final /* synthetic */ Q7 a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ Wc(Q7 q7, MainActivity mainActivity) {
        this.a = q7;
        this.b = mainActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        MainActivity mainActivity = MainActivity.O;
        Q7 q7 = this.a;
        MainActivity mainActivity2 = this.b;
        AbstractC0348nb.r(mainActivity2, "this$0");
        if (motionEvent.getAction() == 2) {
            FrameLayout frameLayout = q7.a;
            frameLayout.getLocationOnScreen(new int[2]);
            int i = 0;
            float e = AbstractC0554vf.e((motionEvent.getRawX() - r1[0]) / frameLayout.getWidth(), 0.15f, 0.85f);
            float[] fArr = C6.u;
            while (true) {
                if (i >= 3) {
                    break;
                }
                float f = fArr[i];
                if (Math.abs(e - f) < 0.03f) {
                    e = f;
                    break;
                }
                i++;
            }
            mainActivity2.A = e;
            FrameLayout frameLayout2 = q7.i;
            ViewGroup.LayoutParams layoutParams = frameLayout2.getLayoutParams();
            AbstractC0348nb.p(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            FrameLayout frameLayout3 = q7.r;
            ViewGroup.LayoutParams layoutParams3 = frameLayout3.getLayoutParams();
            AbstractC0348nb.p(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
            layoutParams2.weight = e;
            layoutParams4.weight = 1 - e;
            frameLayout2.setLayoutParams(layoutParams2);
            frameLayout3.setLayoutParams(layoutParams4);
            mainActivity2.O(q7);
            mainActivity2.N(q7);
        }
        return true;
    }
}
