package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Id extends BaseAdapter {
    public final Ld a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public Id(Ld ld, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = ld;
        this.f = i;
        a();
    }

    public final void a() {
        Ld ld = this.a;
        Pd pd = ld.v;
        if (pd != null) {
            ld.i();
            ArrayList arrayList = ld.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((Pd) arrayList.get(i)) == pd) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Pd getItem(int i) {
        ArrayList l;
        Ld ld = this.a;
        if (this.d) {
            ld.i();
            l = ld.j;
        } else {
            l = ld.l();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (Pd) l.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList l;
        Ld ld = this.a;
        if (this.d) {
            ld.i();
            l = ld.j;
        } else {
            l = ld.l();
        }
        return this.b < 0 ? l.size() : l.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i2 = getItem(i).b;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).b : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.m() && i2 != i4) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        InterfaceC0144fe interfaceC0144fe = (InterfaceC0144fe) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC0144fe.d(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
