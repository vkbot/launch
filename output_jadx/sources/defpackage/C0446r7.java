package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;

/* renamed from: r7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0446r7 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;

    public C0446r7(int i) {
        switch (i) {
            case 3:
                this.a = new C0277ki();
                this.b = new SparseArray();
                this.c = new Qc();
                this.d = new C0277ki();
                return;
            default:
                this.a = new C0604xf(10);
                this.b = new C0277ki();
                this.c = new ArrayList();
                this.d = new HashSet();
                return;
        }
    }

    public void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((C0277ki) this.b).getOrDefault(obj, null);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public Yi b(AbstractC0389p0 abstractC0389p0) {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Yi yi = (Yi) arrayList.get(i);
            if (yi != null && yi.b == abstractC0389p0) {
                return yi;
            }
        }
        Yi yi2 = new Yi((Context) this.d, abstractC0389p0);
        arrayList.add(yi2);
        return yi2;
    }

    public boolean c(AbstractC0389p0 abstractC0389p0, MenuItem menuItem) {
        return ((ActionMode.Callback) this.a).onActionItemClicked(b(abstractC0389p0), new Td((Context) this.d, (InterfaceMenuItemC0072cj) menuItem));
    }

    public boolean d(AbstractC0389p0 abstractC0389p0, Ld ld) {
        Yi b = b(abstractC0389p0);
        C0277ki c0277ki = (C0277ki) this.b;
        Menu menu = (Menu) c0277ki.getOrDefault(ld, null);
        if (menu == null) {
            menu = new MenuC0196he((Context) this.d, ld);
            c0277ki.put(ld, menu);
        }
        return ((ActionMode.Callback) this.a).onCreateActionMode(b, menu);
    }

    public C0446r7(Typeface typeface, C0247je c0247je) {
        int i;
        int i2;
        this.d = typeface;
        this.a = c0247je;
        this.c = new C0273ke(1024);
        int a = c0247je.a(6);
        if (a != 0) {
            int i3 = a + c0247je.a;
            i = ((ByteBuffer) c0247je.d).getInt(((ByteBuffer) c0247je.d).getInt(i3) + i3);
        } else {
            i = 0;
        }
        this.b = new char[i * 2];
        int a2 = c0247je.a(6);
        if (a2 != 0) {
            int i4 = a2 + c0247je.a;
            i2 = ((ByteBuffer) c0247je.d).getInt(((ByteBuffer) c0247je.d).getInt(i4) + i4);
        } else {
            i2 = 0;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            C0267k8 c0267k8 = new C0267k8(this, i5);
            C0222ie c = c0267k8.c();
            int a3 = c.a(4);
            Character.toChars(a3 != 0 ? ((ByteBuffer) c.d).getInt(a3 + c.a) : 0, (char[]) this.b, i5 * 2);
            AbstractC0145ff.d("invalid metadata codepoint length", c0267k8.b() > 0);
            ((C0273ke) this.c).a(c0267k8, 0, c0267k8.b() - 1);
        }
    }

    public C0446r7(Context context, ActionMode.Callback callback) {
        this.d = context;
        this.a = callback;
        this.c = new ArrayList();
        this.b = new C0277ki();
    }
}
