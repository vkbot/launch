package defpackage;

import android.animation.Animator;
import android.content.ClipData;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.ContentInfo;
import android.view.GestureDetector;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class L implements InterfaceC0093de, Jd, Od, H5, J5, Ie, O3, InterfaceC0009a8, InterfaceC0324md, Kf, X {
    public static L c;
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ L(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.H5
    public void a(Bundle bundle) {
        ((ContentInfo.Builder) this.b).setExtras(bundle);
    }

    @Override // defpackage.InterfaceC0093de
    public void b(Ld ld, boolean z) {
        if (ld instanceof Ti) {
            ((Ti) ld).z.k().c(false);
        }
        InterfaceC0093de interfaceC0093de = ((C0285l0) this.b).e;
        if (interfaceC0093de != null) {
            interfaceC0093de.b(ld, z);
        }
    }

    @Override // defpackage.H5
    public void c(Uri uri) {
        ((ContentInfo.Builder) this.b).setLinkUri(uri);
    }

    @Override // defpackage.Jd
    public boolean d(Ld ld, MenuItem menuItem) {
        InterfaceC0363o0 interfaceC0363o0 = ((ActionMenuView) this.b).z;
        if (interfaceC0363o0 == null) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) ((C0584wk) interfaceC0363o0).a.G.c).iterator();
        if (it.hasNext()) {
            throw AbstractC0407pi.f(it);
        }
        return false;
    }

    @Override // defpackage.J5
    public int e() {
        int source;
        source = ((ContentInfo) this.b).getSource();
        return source;
    }

    @Override // defpackage.InterfaceC0009a8
    public void f(AbstractC0152fm abstractC0152fm) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0316m5("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new RunnableC0061c8(this, abstractC0152fm, threadPoolExecutor, 0));
    }

    @Override // defpackage.J5
    public ClipData g() {
        ClipData clip;
        clip = ((ContentInfo) this.b).getClip();
        return clip;
    }

    @Override // defpackage.X
    public boolean h(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.b;
        if (!swipeDismissBehavior.r(view)) {
            return false;
        }
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        boolean z = Sm.d(view) == 1;
        int i = swipeDismissBehavior.d;
        view.offsetLeftAndRight((!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        return true;
    }

    @Override // defpackage.H5
    public K5 i() {
        ContentInfo build;
        build = ((ContentInfo.Builder) this.b).build();
        return new K5(new L(build));
    }

    @Override // defpackage.Kf
    public void j(int i, Serializable serializable) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) serializable);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.b).setResultCode(i);
    }

    @Override // defpackage.Ie
    public yo k(View view, yo yoVar) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b;
        if (!He.a(coordinatorLayout.n, yoVar)) {
            coordinatorLayout.n = yoVar;
            boolean z = yoVar.d() > 0;
            coordinatorLayout.o = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            wo woVar = yoVar.a;
            if (!woVar.m()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = AbstractC0205hn.a;
                    if (Rm.b(childAt) && ((Y5) childAt.getLayoutParams()).a != null && woVar.m()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return yoVar;
    }

    @Override // defpackage.O3
    public void l() {
        switch (this.a) {
            case 8:
                ((Animator) this.b).end();
                return;
            default:
                ((C0557vi) this.b).a();
                return;
        }
    }

    @Override // defpackage.J5
    public int m() {
        int flags;
        flags = ((ContentInfo) this.b).getFlags();
        return flags;
    }

    @Override // defpackage.Kf
    public void n() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // defpackage.Od
    public void o(Ld ld, Pd pd) {
        ((Y3) this.b).f.removeCallbacksAndMessages(ld);
    }

    @Override // defpackage.InterfaceC0093de
    public boolean p(Ld ld) {
        C0285l0 c0285l0 = (C0285l0) this.b;
        if (ld == c0285l0.c) {
            return false;
        }
        ((Ti) ld).A.getClass();
        c0285l0.getClass();
        InterfaceC0093de interfaceC0093de = c0285l0.e;
        if (interfaceC0093de != null) {
            return interfaceC0093de.p(ld);
        }
        return false;
    }

    @Override // defpackage.Od
    public void q(Ld ld, Pd pd) {
        Y3 y3 = (Y3) this.b;
        y3.f.removeCallbacksAndMessages(null);
        ArrayList arrayList = y3.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ld == ((X3) arrayList.get(i)).b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        y3.f.postAtTime(new W3(this, i2 < arrayList.size() ? (X3) arrayList.get(i2) : null, pd, ld), ld, SystemClock.uptimeMillis() + 200);
    }

    @Override // defpackage.J5
    public ContentInfo r() {
        return (ContentInfo) this.b;
    }

    @Override // defpackage.H5
    public void s(int i) {
        ((ContentInfo.Builder) this.b).setFlags(i);
    }

    @Override // defpackage.Jd
    public void t(Ld ld) {
        C0584wk c0584wk = ((ActionMenuView) this.b).u;
        if (c0584wk != null) {
            c0584wk.t(ld);
        }
    }

    public String toString() {
        switch (this.a) {
            case 6:
                return "ContentInfoCompat{" + ((ContentInfo) this.b) + "}";
            case 27:
                return AbstractC0407pi.k(new StringBuilder("<"), (String) this.b, '>');
            default:
                return super.toString();
        }
    }

    public J u(int i) {
        return null;
    }

    public J v(int i) {
        return null;
    }

    public void w() {
        ((C0623y9) this.b).u.I();
    }

    public boolean x(int i, int i2, Bundle bundle) {
        return false;
    }

    public L(TextView textView) {
        this.a = 12;
        this.b = new C0345n8(textView);
    }

    public L(EditText editText) {
        this.a = 11;
        this.b = new K1(editText, 8);
    }

    public L(int i) {
        this.a = i;
        switch (i) {
            case 24:
                this.b = new Object();
                new Handler(Looper.getMainLooper(), new C0329mi(this));
                return;
            case 29:
                return;
            default:
                this.b = new K(this);
                return;
        }
    }

    public L(Context context) {
        this.a = 10;
        this.b = context.getApplicationContext();
    }

    public L(ContentInfo contentInfo) {
        this.a = 6;
        contentInfo.getClass();
        this.b = AbstractC0592x3.g(contentInfo);
    }

    public L(Context context, GestureDetector.OnGestureListener onGestureListener, int i) {
        this.a = i;
        switch (i) {
            case 15:
                this.b = new L(context, onGestureListener, 14);
                return;
            default:
                this.b = new GestureDetector(context, onGestureListener, null);
                return;
        }
    }

    public L(ClipData clipData, int i) {
        this.a = 5;
        this.b = AbstractC0592x3.e(clipData, i);
    }
}
