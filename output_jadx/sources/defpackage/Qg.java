package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import androidx.lifecycle.a;
import defpackage.Sg;

/* loaded from: classes.dex */
public abstract class Qg {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, Vb vb) {
        a d;
        AbstractC0348nb.r(activity, "activity");
        AbstractC0348nb.r(vb, "event");
        if (!(activity instanceof InterfaceC0039bc) || (d = ((InterfaceC0039bc) activity).d()) == null) {
            return;
        }
        d.d(vb);
    }

    public static void b(Activity activity) {
        AbstractC0348nb.r(activity, "activity");
        Sg.a.Companion.getClass();
        activity.registerActivityLifecycleCallbacks(new Sg.a());
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new Fragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
