package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.omoda.launcher.R;

/* loaded from: classes.dex */
public final class Q7 {
    public final FrameLayout a;
    public final LinearLayout b;
    public final ImageView c;
    public final ImageView d;
    public final View e;
    public final ImageView f;
    public final TextView g;
    public final LinearLayout h;
    public final FrameLayout i;
    public final ImageView j;
    public final ImageView k;
    public final ImageView l;
    public final LinearLayout m;
    public final TextView n;
    public final ImageView o;
    public final TextView p;
    public final LinearLayout q;
    public final FrameLayout r;
    public final ImageView s;

    public Q7(FrameLayout frameLayout, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, View view, ImageView imageView3, TextView textView, LinearLayout linearLayout2, FrameLayout frameLayout2, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout3, TextView textView2, ImageView imageView7, TextView textView3, LinearLayout linearLayout4, FrameLayout frameLayout3, ImageView imageView8) {
        this.a = frameLayout;
        this.b = linearLayout;
        this.c = imageView;
        this.d = imageView2;
        this.e = view;
        this.f = imageView3;
        this.g = textView;
        this.h = linearLayout2;
        this.i = frameLayout2;
        this.j = imageView4;
        this.k = imageView5;
        this.l = imageView6;
        this.m = linearLayout3;
        this.n = textView2;
        this.o = imageView7;
        this.p = textView3;
        this.q = linearLayout4;
        this.r = frameLayout3;
        this.s = imageView8;
    }

    public static Q7 a(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.dual_app_setup, (ViewGroup) null, false);
        int i = R.id.actionButtons;
        LinearLayout linearLayout = (LinearLayout) AbstractC0145ff.m(inflate, R.id.actionButtons);
        if (linearLayout != null) {
            i = R.id.confirmButton;
            ImageView imageView = (ImageView) AbstractC0145ff.m(inflate, R.id.confirmButton);
            if (imageView != null) {
                i = R.id.deleteButton;
                ImageView imageView2 = (ImageView) AbstractC0145ff.m(inflate, R.id.deleteButton);
                if (imageView2 != null) {
                    i = R.id.divider;
                    View m = AbstractC0145ff.m(inflate, R.id.divider);
                    if (m != null) {
                        i = R.id.leftAppIcon;
                        ImageView imageView3 = (ImageView) AbstractC0145ff.m(inflate, R.id.leftAppIcon);
                        if (imageView3 != null) {
                            i = R.id.leftAppName;
                            TextView textView = (TextView) AbstractC0145ff.m(inflate, R.id.leftAppName);
                            if (textView != null) {
                                i = R.id.leftAppSelected;
                                LinearLayout linearLayout2 = (LinearLayout) AbstractC0145ff.m(inflate, R.id.leftAppSelected);
                                if (linearLayout2 != null) {
                                    i = R.id.leftPanel;
                                    FrameLayout frameLayout = (FrameLayout) AbstractC0145ff.m(inflate, R.id.leftPanel);
                                    if (frameLayout != null) {
                                        i = R.id.leftPlusIcon;
                                        ImageView imageView4 = (ImageView) AbstractC0145ff.m(inflate, R.id.leftPlusIcon);
                                        if (imageView4 != null) {
                                            i = R.id.ratioArrowLeft;
                                            ImageView imageView5 = (ImageView) AbstractC0145ff.m(inflate, R.id.ratioArrowLeft);
                                            if (imageView5 != null) {
                                                i = R.id.ratioArrowRight;
                                                ImageView imageView6 = (ImageView) AbstractC0145ff.m(inflate, R.id.ratioArrowRight);
                                                if (imageView6 != null) {
                                                    i = R.id.ratioIndicator;
                                                    LinearLayout linearLayout3 = (LinearLayout) AbstractC0145ff.m(inflate, R.id.ratioIndicator);
                                                    if (linearLayout3 != null) {
                                                        i = R.id.ratioText;
                                                        TextView textView2 = (TextView) AbstractC0145ff.m(inflate, R.id.ratioText);
                                                        if (textView2 != null) {
                                                            i = R.id.rightAppIcon;
                                                            ImageView imageView7 = (ImageView) AbstractC0145ff.m(inflate, R.id.rightAppIcon);
                                                            if (imageView7 != null) {
                                                                i = R.id.rightAppName;
                                                                TextView textView3 = (TextView) AbstractC0145ff.m(inflate, R.id.rightAppName);
                                                                if (textView3 != null) {
                                                                    i = R.id.rightAppSelected;
                                                                    LinearLayout linearLayout4 = (LinearLayout) AbstractC0145ff.m(inflate, R.id.rightAppSelected);
                                                                    if (linearLayout4 != null) {
                                                                        i = R.id.rightPanel;
                                                                        FrameLayout frameLayout2 = (FrameLayout) AbstractC0145ff.m(inflate, R.id.rightPanel);
                                                                        if (frameLayout2 != null) {
                                                                            i = R.id.rightPlusIcon;
                                                                            ImageView imageView8 = (ImageView) AbstractC0145ff.m(inflate, R.id.rightPlusIcon);
                                                                            if (imageView8 != null) {
                                                                                return new Q7((FrameLayout) inflate, linearLayout, imageView, imageView2, m, imageView3, textView, linearLayout2, frameLayout, imageView4, imageView5, imageView6, linearLayout3, textView2, imageView7, textView3, linearLayout4, frameLayout2, imageView8);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
