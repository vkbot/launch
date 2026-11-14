package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.provider.Settings;
import android.util.Log;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.omoda.launcher.MainActivity;
import java.nio.MappedByteBuffer;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class O implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ O(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                try {
                    Settings.Secure.putInt((ContentResolver) this.b, "accessibility_enabled", 1);
                } catch (Exception unused) {
                }
                Log.d("AccessibilityRecovery", "AccessibilityService enabled, waiting for connection");
                return;
            case 1:
                K2 k2 = (K2) this.b;
                AbstractC0348nb.r(k2, "this$0");
                String str = k2.g;
                if (str != null) {
                    k2.g = null;
                    Y0 y0 = k2.b;
                    int h = y0.h(str);
                    RecyclerView recyclerView = k2.a;
                    AbstractC0348nb.r(recyclerView, "pager");
                    Eg J = recyclerView.J(h / 10);
                    if (J != null) {
                        int i = h % 10;
                        View view = J.a;
                        AbstractC0348nb.p(view, "null cannot be cast to non-null type android.view.ViewGroup");
                        View childAt = ((ViewGroup) view).getChildAt(i / 5);
                        ViewGroup viewGroup = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
                        if (viewGroup != null) {
                            r1 = viewGroup.getChildAt(i % 5);
                        }
                    }
                    if (r1 == null || r1.getWidth() == 0 || r1.getHeight() == 0) {
                        return;
                    }
                    recyclerView.offsetDescendantRectToMyCoords(r1, new Rect(0, 0, r1.getWidth(), r1.getHeight()));
                    k2.n = k2.j - r5.left;
                    k2.o = k2.k - r5.top;
                    Resources resources = recyclerView.getResources();
                    Bitmap createBitmap = Bitmap.createBitmap(r1.getWidth(), r1.getHeight(), Bitmap.Config.ARGB_8888);
                    AbstractC0348nb.q(createBitmap, "createBitmap(...)");
                    r1.draw(new Canvas(createBitmap));
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, createBitmap);
                    bitmapDrawable.setAlpha(230);
                    recyclerView.getOverlay().add(bitmapDrawable);
                    k2.m = bitmapDrawable;
                    k2.l = str;
                    y0.j(str);
                    k2.e();
                    ViewParent parent = recyclerView.getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                ((Fl) this.b).h(Boolean.FALSE);
                return;
            case 3:
                ((CarouselLayoutManager) this.b).l0();
                return;
            case 4:
                ((G4) this.b).t(true);
                return;
            case 5:
                ((AbstractActivityC0028b1) this.b).invalidateOptionsMenu();
                return;
            case 6:
                ExecutorC0238j5 executorC0238j5 = (ExecutorC0238j5) this.b;
                Runnable runnable = executorC0238j5.b;
                if (runnable != null) {
                    runnable.run();
                    executorC0238j5.b = null;
                    return;
                }
                return;
            case 7:
                F0.a((F0) this.b);
                return;
            case 8:
                P7 p7 = (P7) this.b;
                boolean isPopupShowing = p7.h.isPopupShowing();
                p7.t(isPopupShowing);
                p7.m = isPopupShowing;
                return;
            case 9:
                C0165g9 c0165g9 = (C0165g9) this.b;
                synchronized (c0165g9.d) {
                    try {
                        if (c0165g9.h == null) {
                            return;
                        }
                        try {
                            C0448r9 b = c0165g9.b();
                            int i2 = b.e;
                            if (i2 == 2) {
                                synchronized (c0165g9.d) {
                                }
                            }
                            if (i2 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i2 + ")");
                            }
                            try {
                                Tl.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                T7 t7 = c0165g9.c;
                                Context context = c0165g9.a;
                                t7.getClass();
                                Typeface a = AbstractC0178gm.a(context, new C0448r9[]{b}, 0);
                                MappedByteBuffer l = AbstractC0554vf.l(c0165g9.a, b.a);
                                if (l == null || a == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    Tl.a("EmojiCompat.MetadataRepo.create");
                                    C0446r7 c0446r7 = new C0446r7(a, AbstractC0152fm.E(l));
                                    Tl.b();
                                    synchronized (c0165g9.d) {
                                        try {
                                            AbstractC0152fm abstractC0152fm = c0165g9.h;
                                            if (abstractC0152fm != null) {
                                                abstractC0152fm.z(c0446r7);
                                            }
                                        } finally {
                                        }
                                    }
                                    c0165g9.a();
                                    return;
                                } finally {
                                    Tl.b();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (Throwable th2) {
                            synchronized (c0165g9.d) {
                                try {
                                    AbstractC0152fm abstractC0152fm2 = c0165g9.h;
                                    if (abstractC0152fm2 != null) {
                                        abstractC0152fm2.y(th2);
                                    }
                                    c0165g9.a();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            case 10:
                Ja ja = (Ja) this.b;
                AbstractC0348nb.r(ja, "this$0");
                if (ja.a() && ja.g < 6 && ja.b.j()) {
                    ja.g++;
                    ja.b(true);
                    return;
                }
                return;
            case 11:
                S9 s9 = (S9) this.b;
                AbstractC0348nb.r(s9, "$tmp0");
                s9.d();
                return;
            case 12:
                MainActivity mainActivity = MainActivity.O;
                Q7 q7 = (Q7) this.b;
                Rect rect = new Rect();
                View view2 = q7.e;
                view2.getHitRect(rect);
                rect.left -= 36;
                rect.right += 36;
                Object parent2 = view2.getParent();
                r1 = parent2 instanceof View ? (View) parent2 : null;
                if (r1 == null) {
                    return;
                }
                r1.setTouchDelegate(new TouchDelegate(rect, view2));
                return;
            case 13:
                If r10 = (If) this.b;
                AbstractC0348nb.r(r10, "this$0");
                int i3 = r10.b;
                a aVar = r10.f;
                if (i3 == 0) {
                    r10.c = true;
                    aVar.d(Vb.ON_PAUSE);
                }
                if (r10.a == 0 && r10.c) {
                    aVar.d(Vb.ON_STOP);
                    r10.d = true;
                    return;
                }
                return;
            case 14:
                ((AbstractC0017ag) this.b).m();
                return;
            case 15:
                C3 c3 = (C3) this.b;
                c3.c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) c3.e;
                C0282kn c0282kn = sideSheetBehavior.i;
                if (c0282kn != null && c0282kn.f()) {
                    c3.a(c3.b);
                    return;
                } else {
                    if (sideSheetBehavior.h == 2) {
                        sideSheetBehavior.r(c3.b);
                        return;
                    }
                    return;
                }
            case 16:
                List list = (List) this.b;
                AbstractC0348nb.r(list, "$gone");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Bitmap) it.next()).recycle();
                }
                return;
            case 17:
                ((TextInputLayout) this.b).d.requestLayout();
                return;
            default:
                View view3 = (View) this.b;
                ((InputMethodManager) O5.b(view3.getContext(), InputMethodManager.class)).showSoftInput(view3, 1);
                return;
        }
    }
}
