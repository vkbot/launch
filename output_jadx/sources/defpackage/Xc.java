package defpackage;

import android.view.View;
import com.omoda.launcher.MainActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class Xc implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ MainActivity b;
    public final /* synthetic */ Q7 c;

    public /* synthetic */ Xc(MainActivity mainActivity, Q7 q7, int i) {
        this.a = i;
        this.b = mainActivity;
        this.c = q7;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Q7 q7 = this.c;
        MainActivity mainActivity = this.b;
        switch (this.a) {
            case 0:
                MainActivity mainActivity2 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(true, q7);
                return;
            case 1:
                MainActivity mainActivity3 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(false, q7);
                return;
            case 2:
                MainActivity mainActivity4 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(true, q7);
                return;
            case 3:
                MainActivity mainActivity5 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(false, q7);
                return;
            case 4:
                MainActivity mainActivity6 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(true, q7);
                return;
            case 5:
                MainActivity mainActivity7 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.J(false, q7);
                return;
            case 6:
                AbstractC0348nb.r(mainActivity, "this$0");
                AbstractC0348nb.r(q7, "$dualBinding");
                MainActivity mainActivity8 = MainActivity.O;
                mainActivity.J(true, q7);
                return;
            default:
                AbstractC0348nb.r(mainActivity, "this$0");
                AbstractC0348nb.r(q7, "$dualBinding");
                MainActivity mainActivity9 = MainActivity.O;
                mainActivity.J(false, q7);
                return;
        }
    }
}
