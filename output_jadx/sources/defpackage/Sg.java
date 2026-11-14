package defpackage;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Bundle;

/* loaded from: classes.dex */
public class Sg extends Fragment {
    public static final /* synthetic */ int a = 0;

    /* loaded from: classes.dex */
    public static final class a implements Application.ActivityLifecycleCallbacks {
        public static final Rg Companion = new Object();

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            AbstractC0348nb.r(activity, "activity");
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            AbstractC0348nb.r(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
            int i = Sg.a;
            Qg.a(activity, Vb.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            AbstractC0348nb.r(activity, "activity");
            AbstractC0348nb.r(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            AbstractC0348nb.r(activity, "activity");
        }
    }
}
