package defpackage;

import com.omoda.launcher.MainActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class Yc implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ MainActivity b;
    public final /* synthetic */ Q7 c;

    public /* synthetic */ Yc(MainActivity mainActivity, Q7 q7, int i) {
        this.a = i;
        this.b = mainActivity;
        this.c = q7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Q7 q7 = this.c;
        MainActivity mainActivity = this.b;
        switch (this.a) {
            case 0:
                MainActivity mainActivity2 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.N(q7);
                return;
            default:
                MainActivity mainActivity3 = MainActivity.O;
                AbstractC0348nb.r(mainActivity, "this$0");
                mainActivity.N(q7);
                return;
        }
    }
}
