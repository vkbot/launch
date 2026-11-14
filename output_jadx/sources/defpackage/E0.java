package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.omoda.launcher.R;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class E0 {
    public final Context a;
    public final F0 b;
    public final Window c;
    public CharSequence d;
    public AlertController$RecycleListView e;
    public Button f;
    public Button g;
    public Button h;
    public NestedScrollView i;
    public Drawable j;
    public ImageView k;
    public TextView l;
    public TextView m;
    public View n;
    public ListAdapter o;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final boolean u;
    public final C0 v;
    public int p = -1;
    public final Z w = new Z(1, this);

    /* JADX WARN: Type inference failed for: r6v1, types: [android.os.Handler, C0] */
    public E0(Context context, F0 f0, Window window) {
        this.a = context;
        this.b = f0;
        this.c = window;
        ?? handler = new Handler();
        handler.a = new WeakReference(f0);
        this.v = handler;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, Zf.e, R.attr.alertDialogStyle, 0);
        this.q = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.r = obtainStyledAttributes.getResourceId(4, 0);
        obtainStyledAttributes.getResourceId(5, 0);
        this.s = obtainStyledAttributes.getResourceId(7, 0);
        this.t = obtainStyledAttributes.getResourceId(3, 0);
        this.u = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        f0.c().h(1);
    }

    public static ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
