package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.omoda.launcher.R;
import java.util.ArrayList;

/* renamed from: sc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0476sc extends BaseAdapter {
    public int a = -1;
    public final /* synthetic */ C0501tc b;

    public C0476sc(C0501tc c0501tc) {
        this.b = c0501tc;
        a();
    }

    public final void a() {
        Ld ld = this.b.c;
        Pd pd = ld.v;
        if (pd != null) {
            ld.i();
            ArrayList arrayList = ld.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((Pd) arrayList.get(i)) == pd) {
                    this.a = i;
                    return;
                }
            }
        }
        this.a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Pd getItem(int i) {
        C0501tc c0501tc = this.b;
        Ld ld = c0501tc.c;
        ld.i();
        ArrayList arrayList = ld.j;
        c0501tc.getClass();
        int i2 = this.a;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (Pd) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        C0501tc c0501tc = this.b;
        Ld ld = c0501tc.c;
        ld.i();
        int size = ld.j.size();
        c0501tc.getClass();
        return this.a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((InterfaceC0144fe) view).d(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
