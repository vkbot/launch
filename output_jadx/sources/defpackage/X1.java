package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class X1 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ X1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Object item;
        switch (this.a) {
            case 0:
                Z1 z1 = (Z1) this.b;
                z1.E.setSelection(i);
                C0055c2 c0055c2 = z1.E;
                if (c0055c2.getOnItemClickListener() != null) {
                    c0055c2.performItemClick(view, i, z1.B.getItemId(i));
                }
                z1.dismiss();
                return;
            case 1:
                C0298ld c0298ld = (C0298ld) this.b;
                if (i < 0) {
                    Ac ac = c0298ld.e;
                    item = !ac.z.isShowing() ? null : ac.c.getSelectedItem();
                } else {
                    item = c0298ld.getAdapter().getItem(i);
                }
                C0298ld.a(c0298ld, item);
                AdapterView.OnItemClickListener onItemClickListener = c0298ld.getOnItemClickListener();
                Ac ac2 = c0298ld.e;
                if (onItemClickListener != null) {
                    if (view == null || i < 0) {
                        view = ac2.z.isShowing() ? ac2.c.getSelectedView() : null;
                        i = !ac2.z.isShowing() ? -1 : ac2.c.getSelectedItemPosition();
                        j = !ac2.z.isShowing() ? Long.MIN_VALUE : ac2.c.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(ac2.c, view, i, j);
                }
                ac2.dismiss();
                return;
            default:
                ((SearchView) this.b).o(i);
                return;
        }
    }
}
