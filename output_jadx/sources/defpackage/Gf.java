package defpackage;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
public abstract class Gf {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        AbstractC0348nb.r(activity, "activity");
        AbstractC0348nb.r(activityLifecycleCallbacks, "callback");
        activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }
}
