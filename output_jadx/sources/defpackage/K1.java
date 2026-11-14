package defpackage;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class K1 implements InterfaceC0261k2, Ie {
    public static final int[] d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public /* synthetic */ K1(int i, boolean z) {
        this.a = i;
    }

    public static boolean e(Editable editable, KeyEvent keyEvent, boolean z) {
        C0229im[] c0229imArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (c0229imArr = (C0229im[]) editable.getSpans(selectionStart, selectionEnd, C0229im.class)) != null && c0229imArr.length > 0) {
            for (C0229im c0229im : c0229imArr) {
                int spanStart = editable.getSpanStart(c0229im);
                int spanEnd = editable.getSpanEnd(c0229im);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static int y(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        return i3 + 1 > i2 ? i4 + 1 : i4;
    }

    public void A() {
        ((SparseIntArray) this.b).clear();
    }

    public boolean B(View view) {
        C0301lg c0301lg = (C0301lg) this.b;
        int d2 = c0301lg.d();
        int c = c0301lg.c();
        int b = c0301lg.b(view);
        int a = c0301lg.a(view);
        Mm mm = (Mm) this.c;
        mm.b = d2;
        mm.c = c;
        mm.d = b;
        mm.e = a;
        mm.a = 24579;
        return mm.a();
    }

    public void C(AttributeSet attributeSet, int i) {
        switch (this.a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                C0491t2 q = C0491t2.q(absSeekBar.getContext(), attributeSet, d, i);
                Drawable i2 = q.i(0);
                if (i2 != null) {
                    if (i2 instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) i2;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i3 = 0; i3 < numberOfFrames; i3++) {
                            Drawable O = O(animationDrawable.getFrame(i3), true);
                            O.setLevel(10000);
                            animationDrawable2.addFrame(O, animationDrawable.getDuration(i3));
                        }
                        animationDrawable2.setLevel(10000);
                        i2 = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(i2);
                }
                Drawable i4 = q.i(1);
                if (i4 != null) {
                    absSeekBar.setProgressDrawable(O(i4, false));
                }
                q.r();
                return;
            default:
                TypedArray obtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, Zf.i, i, 0);
                try {
                    boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
                    obtainStyledAttributes.recycle();
                    N(z);
                    return;
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public void D(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        v(i3);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.b, i, i3, -1);
        ArrayList arrayList = (ArrayList) this.c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0632yi c0632yi = (C0632yi) ((ArrayList) this.c).get(size);
            int i4 = c0632yi.a;
            if (i4 >= i) {
                c0632yi.a = i4 + i2;
            }
        }
    }

    public void E(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        v(i3);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.b;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0632yi c0632yi = (C0632yi) ((ArrayList) this.c).get(size);
            int i4 = c0632yi.a;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((ArrayList) this.c).remove(size);
                } else {
                    c0632yi.a = i4 - i2;
                }
            }
        }
    }

    public C0164g8 F(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        L l = (L) this.c;
        if (inputConnection == null) {
            l.getClass();
            inputConnection2 = null;
        } else {
            K1 k1 = (K1) l.b;
            k1.getClass();
            if (!(inputConnection instanceof C0164g8)) {
                inputConnection = new C0164g8((EditText) k1.b, inputConnection, editorInfo);
            }
            inputConnection2 = inputConnection;
        }
        return (C0164g8) inputConnection2;
    }

    public void G(AbstractC0389p0 abstractC0389p0) {
        C0446r7 c0446r7 = (C0446r7) this.b;
        ((ActionMode.Callback) c0446r7.a).onDestroyActionMode(c0446r7.b(abstractC0389p0));
        LayoutInflaterFactory2C0615y1 layoutInflaterFactory2C0615y1 = (LayoutInflaterFactory2C0615y1) this.c;
        if (layoutInflaterFactory2C0615y1.w != null) {
            layoutInflaterFactory2C0615y1.l.getDecorView().removeCallbacks(layoutInflaterFactory2C0615y1.x);
        }
        if (layoutInflaterFactory2C0615y1.v != null) {
            C0587wn c0587wn = layoutInflaterFactory2C0615y1.y;
            if (c0587wn != null) {
                c0587wn.b();
            }
            C0587wn a = AbstractC0205hn.a(layoutInflaterFactory2C0615y1.v);
            a.a(0.0f);
            layoutInflaterFactory2C0615y1.y = a;
            a.d(new C0364o1(2, this));
        }
        layoutInflaterFactory2C0615y1.u = null;
        ViewGroup viewGroup = layoutInflaterFactory2C0615y1.A;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Vm.c(viewGroup);
        layoutInflaterFactory2C0615y1.I();
    }

    public boolean H(AbstractC0389p0 abstractC0389p0, Ld ld) {
        ViewGroup viewGroup = ((LayoutInflaterFactory2C0615y1) this.c).A;
        WeakHashMap weakHashMap = AbstractC0205hn.a;
        Vm.c(viewGroup);
        C0446r7 c0446r7 = (C0446r7) this.b;
        Yi b = c0446r7.b(abstractC0389p0);
        C0277ki c0277ki = (C0277ki) c0446r7.b;
        Menu menu = (Menu) c0277ki.getOrDefault(ld, null);
        if (menu == null) {
            menu = new MenuC0196he((Context) c0446r7.d, ld);
            c0277ki.put(ld, menu);
        }
        return ((ActionMode.Callback) c0446r7.a).onPrepareActionMode(b, menu);
    }

    public void I(C0268k9 c0268k9) {
        int i = c0268k9.b;
        Handler handler = (Handler) this.c;
        L l = (L) this.b;
        if (i == 0) {
            handler.post(new RunnableC0233j0(l, c0268k9.a, 1, false));
        } else {
            handler.post(new J3(i, 0, l));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x022b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void J(android.content.Context r12, android.content.res.XmlResourceParser r13) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.K1.J(android.content.Context, android.content.res.XmlResourceParser):void");
    }

    public Be K(Eg eg, int i) {
        C0360nn c0360nn;
        Be be;
        C0277ki c0277ki = (C0277ki) this.b;
        int e = c0277ki.e(eg);
        if (e >= 0 && (c0360nn = (C0360nn) c0277ki.j(e)) != null) {
            int i2 = c0360nn.a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                c0360nn.a = i3;
                if (i == 4) {
                    be = c0360nn.b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    be = c0360nn.c;
                }
                if ((i3 & 12) == 0) {
                    c0277ki.i(e);
                    c0360nn.a = 0;
                    c0360nn.b = null;
                    c0360nn.c = null;
                    C0360nn.d.c(c0360nn);
                }
                return be;
            }
        }
        return null;
    }

    public void L(Eg eg) {
        C0360nn c0360nn = (C0360nn) ((C0277ki) this.b).getOrDefault(eg, null);
        if (c0360nn == null) {
            return;
        }
        c0360nn.a &= -2;
    }

    public void M(Eg eg) {
        Qc qc = (Qc) this.c;
        int e = qc.e() - 1;
        while (true) {
            if (e < 0) {
                break;
            }
            if (eg == qc.f(e)) {
                Object[] objArr = qc.c;
                Object obj = objArr[e];
                Object obj2 = Qc.e;
                if (obj != obj2) {
                    objArr[e] = obj2;
                    qc.a = true;
                }
            } else {
                e--;
            }
        }
        C0360nn c0360nn = (C0360nn) ((C0277ki) this.b).remove(eg);
        if (c0360nn != null) {
            c0360nn.a = 0;
            c0360nn.b = null;
            c0360nn.c = null;
            C0360nn.d.c(c0360nn);
        }
    }

    public void N(boolean z) {
        C0397p8 c0397p8 = (C0397p8) ((K1) ((L) this.c).b).c;
        if (c0397p8.c != z) {
            if (c0397p8.b != null) {
                C0035b8 a = C0035b8.a();
                C0371o8 c0371o8 = c0397p8.b;
                a.getClass();
                AbstractC0145ff.f(c0371o8, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = a.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    a.b.remove(c0371o8);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            c0397p8.c = z;
            if (z) {
                C0397p8.a(c0397p8.a, C0035b8.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable O(Drawable drawable, boolean z) {
        if (drawable instanceof Lo) {
            ((Mo) ((Lo) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = O(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                    layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
                    layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
                    layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
                    layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
                    layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
                    layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
                    layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
                    layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
                    layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.c) == null) {
                    this.c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    @Override // defpackage.InterfaceC0261k2
    public void a(int i) {
        C0287l2.c((C0287l2) this.c, i);
    }

    @Override // defpackage.InterfaceC0261k2
    public void b(int i) {
        C0287l2.e((C0287l2) this.c, i);
    }

    public void c(Eg eg, Be be) {
        C0277ki c0277ki = (C0277ki) this.b;
        C0360nn c0360nn = (C0360nn) c0277ki.getOrDefault(eg, null);
        if (c0360nn == null) {
            c0360nn = C0360nn.a();
            c0277ki.put(eg, c0360nn);
        }
        c0360nn.c = be;
        c0360nn.a |= 8;
    }

    public void d() {
        int[] iArr = (int[]) this.b;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.c = null;
    }

    public void f(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void g(boolean z) {
        J9 j9 = (J9) this.c;
        AbstractActivityC0028b1 abstractActivityC0028b1 = j9.n.s;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = j9.p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void h(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void i(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void j(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    @Override // defpackage.Ie
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.yo k(android.view.View r14, defpackage.yo r15) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.c
            Bn r0 = (defpackage.Bn) r0
            int r1 = r0.a
            java.lang.Object r13 = r13.b
            z3 r13 = (defpackage.C0642z3) r13
            wo r2 = r15.a
            r3 = 7
            db r3 = r2.f(r3)
            r4 = 32
            db r2 = r2.f(r4)
            int r4 = r3.b
            java.lang.Object r5 = r13.b
            com.google.android.material.bottomsheet.BottomSheetBehavior r5 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r5
            r5.w = r4
            boolean r4 = defpackage.AbstractC0145ff.v(r14)
            int r6 = r14.getPaddingBottom()
            int r7 = r14.getPaddingLeft()
            int r8 = r14.getPaddingRight()
            boolean r9 = r5.o
            if (r9 == 0) goto L3c
            int r6 = r15.a()
            r5.v = r6
            int r10 = r0.c
            int r6 = r6 + r10
        L3c:
            int r0 = r0.b
            boolean r10 = r5.p
            int r11 = r3.a
            if (r10 == 0) goto L4a
            if (r4 == 0) goto L48
            r7 = r0
            goto L49
        L48:
            r7 = r1
        L49:
            int r7 = r7 + r11
        L4a:
            boolean r10 = r5.q
            int r12 = r3.c
            if (r10 == 0) goto L56
            if (r4 == 0) goto L53
            goto L54
        L53:
            r1 = r0
        L54:
            int r8 = r1 + r12
        L56:
            android.view.ViewGroup$LayoutParams r0 = r14.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r0 = (android.view.ViewGroup.MarginLayoutParams) r0
            boolean r1 = r5.s
            r4 = 1
            if (r1 == 0) goto L69
            int r1 = r0.leftMargin
            if (r1 == r11) goto L69
            r0.leftMargin = r11
            r1 = r4
            goto L6a
        L69:
            r1 = 0
        L6a:
            boolean r10 = r5.t
            if (r10 == 0) goto L75
            int r10 = r0.rightMargin
            if (r10 == r12) goto L75
            r0.rightMargin = r12
            r1 = r4
        L75:
            boolean r10 = r5.u
            if (r10 == 0) goto L82
            int r10 = r0.topMargin
            int r3 = r3.b
            if (r10 == r3) goto L82
            r0.topMargin = r3
            goto L83
        L82:
            r4 = r1
        L83:
            if (r4 == 0) goto L88
            r14.setLayoutParams(r0)
        L88:
            int r0 = r14.getPaddingTop()
            r14.setPadding(r7, r0, r8, r6)
            boolean r13 = r13.a
            if (r13 == 0) goto L97
            int r14 = r2.d
            r5.m = r14
        L97:
            if (r9 != 0) goto L9b
            if (r13 == 0) goto L9e
        L9b:
            r5.I()
        L9e:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.K1.k(android.view.View, yo):yo");
    }

    public void l(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void m(boolean z) {
        J9 j9 = (J9) this.c;
        AbstractActivityC0028b1 abstractActivityC0028b1 = j9.n.s;
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = j9.p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void n(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void o(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void p(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void q(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.q(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void r(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.r(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void s(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.s(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void t(boolean z) {
        AbstractComponentCallbacksC0598x9 abstractComponentCallbacksC0598x9 = ((J9) this.c).p;
        if (abstractComponentCallbacksC0598x9 != null) {
            abstractComponentCallbacksC0598x9.j().k.t(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public String toString() {
        int lastIndexOf;
        switch (this.a) {
            case 14:
                StringBuilder sb = new StringBuilder(128);
                sb.append("LoaderManager{");
                sb.append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" in ");
                Object obj = this.b;
                if (obj == null) {
                    sb.append("null");
                } else {
                    String simpleName = obj.getClass().getSimpleName();
                    if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                        simpleName = simpleName.substring(lastIndexOf + 1);
                    }
                    sb.append(simpleName);
                    sb.append('{');
                    sb.append(Integer.toHexString(System.identityHashCode(obj)));
                }
                sb.append("}}");
                return sb.toString();
            case 16:
                String str = "[ ";
                if (((C0433qi) this.b) != null) {
                    for (int i = 0; i < 9; i++) {
                        str = str + ((C0433qi) this.b).h[i] + " ";
                    }
                }
                return str + "] " + ((C0433qi) this.b);
            case 21:
                return "Bounds{lower=" + ((C0090db) this.b) + " upper=" + ((C0090db) this.c) + "}";
            default:
                return super.toString();
        }
    }

    public void u(String str, PrintWriter printWriter) {
        C0507ti c0507ti = ((Fc) this.c).c;
        if (c0507ti.c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (c0507ti.c <= 0) {
                return;
            }
            if (c0507ti.b[0] != null) {
                throw new ClassCastException();
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(c0507ti.a[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public void v(int i) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.b = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.b = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.b;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View w(int i, int i2, int i3, int i4) {
        View u;
        C0301lg c0301lg = (C0301lg) this.b;
        int d2 = c0301lg.d();
        int c = c0301lg.c();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            switch (c0301lg.a) {
                case 0:
                    u = c0301lg.b.u(i);
                    break;
                default:
                    u = c0301lg.b.u(i);
                    break;
            }
            int b = c0301lg.b(u);
            int a = c0301lg.a(u);
            Mm mm = (Mm) this.c;
            mm.b = d2;
            mm.c = c;
            mm.d = b;
            mm.e = a;
            if (i3 != 0) {
                mm.a = i3;
                if (mm.a()) {
                    return u;
                }
            }
            if (i4 != 0) {
                mm.a = i4;
                if (mm.a()) {
                    view = u;
                }
            }
            i += i5;
        }
        return view;
    }

    public KeyListener x(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((K1) ((L) this.c).b).getClass();
        if (keyListener instanceof C0241j8) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new C0241j8(keyListener);
    }

    public boolean z(CharSequence charSequence, int i, int i2, C0267k8 c0267k8) {
        if (c0267k8.c == 0) {
            I6 i6 = (I6) this.c;
            C0222ie c = c0267k8.c();
            int a = c.a(8);
            if (a != 0) {
                ((ByteBuffer) c.d).getShort(a + c.a);
            }
            i6.getClass();
            ThreadLocal threadLocal = I6.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            TextPaint textPaint = i6.a;
            String sb2 = sb.toString();
            int i3 = Ze.a;
            c0267k8.c = Ye.a(textPaint, sb2) ? 2 : 1;
        }
        return c0267k8.c == 2;
    }

    public /* synthetic */ K1(Object obj, int i, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public /* synthetic */ K1(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public K1(Ff ff) {
        this.a = 16;
        this.c = ff;
    }

    public K1(InterfaceC0039bc interfaceC0039bc, C0462rn c0462rn) {
        Fc fc;
        this.a = 14;
        this.b = interfaceC0039bc;
        AbstractC0348nb.r(c0462rn, "store");
        C0395p6 c0395p6 = C0395p6.b;
        AbstractC0348nb.r(c0395p6, "defaultCreationExtras");
        String canonicalName = Fc.class.getCanonicalName();
        if (canonicalName != null) {
            String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            AbstractC0348nb.r(concat, "key");
            LinkedHashMap linkedHashMap = c0462rn.a;
            AbstractC0412pn abstractC0412pn = (AbstractC0412pn) linkedHashMap.get(concat);
            if (Fc.class.isInstance(abstractC0412pn)) {
                AbstractC0348nb.p(abstractC0412pn, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.putAll(c0395p6.a);
                linkedHashMap2.put(T7.B, concat);
                try {
                    fc = new Fc();
                } catch (AbstractMethodError unused) {
                    fc = new Fc();
                }
                abstractC0412pn = fc;
                AbstractC0412pn abstractC0412pn2 = (AbstractC0412pn) linkedHashMap.put(concat, abstractC0412pn);
                if (abstractC0412pn2 != null) {
                    abstractC0412pn2.a();
                }
            }
            this.c = (Fc) abstractC0412pn;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public K1(AbsSeekBar absSeekBar) {
        this.a = 0;
        this.b = absSeekBar;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [android.text.Editable$Factory, f8] */
    public K1(EditText editText, int i) {
        this.a = i;
        switch (i) {
            case 8:
                this.b = editText;
                C0397p8 c0397p8 = new C0397p8(editText);
                this.c = c0397p8;
                editText.addTextChangedListener(c0397p8);
                if (C0138f8.b == null) {
                    synchronized (C0138f8.a) {
                        try {
                            if (C0138f8.b == null) {
                                ?? factory = new Editable.Factory();
                                try {
                                    C0138f8.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, C0138f8.class.getClassLoader());
                                } catch (Throwable unused) {
                                }
                                C0138f8.b = factory;
                            }
                        } finally {
                        }
                    }
                }
                editText.setEditableFactory(C0138f8.b);
                return;
            default:
                this.b = editText;
                this.c = new L(editText);
                return;
        }
    }

    public K1(J9 j9) {
        this.a = 11;
        this.b = new CopyOnWriteArrayList();
        this.c = j9;
    }

    public K1(Runnable runnable) {
        this.a = 15;
        this.c = new CopyOnWriteArrayList();
        new HashMap();
        this.b = runnable;
    }

    public K1(Context context) {
        this.a = 5;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(AbstractC0152fm.J(context, com.omoda.launcher.R.attr.materialCalendarStyle, C0552vd.class.getCanonicalName()).data, Yf.l);
        T7.c(context, obtainStyledAttributes.getResourceId(4, 0));
        T7.c(context, obtainStyledAttributes.getResourceId(2, 0));
        T7.c(context, obtainStyledAttributes.getResourceId(3, 0));
        T7.c(context, obtainStyledAttributes.getResourceId(5, 0));
        ColorStateList B = AbstractC0348nb.B(context, obtainStyledAttributes, 7);
        this.b = T7.c(context, obtainStyledAttributes.getResourceId(9, 0));
        T7.c(context, obtainStyledAttributes.getResourceId(8, 0));
        this.c = T7.c(context, obtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(B.getDefaultColor());
        obtainStyledAttributes.recycle();
    }

    public K1(C0446r7 c0446r7, T7 t7, I6 i6) {
        this.a = 9;
        this.b = c0446r7;
        this.c = i6;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [Mm, java.lang.Object] */
    public K1(C0301lg c0301lg) {
        this.a = 18;
        this.b = c0301lg;
        ?? obj = new Object();
        obj.a = 0;
        this.c = obj;
    }

    public K1(ArrayList arrayList, ArrayList arrayList2) {
        this.a = 12;
        int size = arrayList.size();
        this.b = new int[size];
        this.c = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.b)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.c)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public K1(int i, int i2) {
        this.a = 12;
        this.b = new int[]{i, i2};
        this.c = new float[]{0.0f, 1.0f};
    }

    public K1(int i, int i2, int i3) {
        this.a = 12;
        this.b = new int[]{i, i2, i3};
        this.c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public K1(Animation animation) {
        this.a = 10;
        this.b = animation;
        this.c = null;
    }

    public K1(Animator animator) {
        this.a = 10;
        this.b = null;
        this.c = animator;
    }

    public K1(int i) {
        this.a = i;
        switch (i) {
            case 19:
                this.b = new C0277ki();
                this.c = new Qc();
                return;
            default:
                this.b = new SparseIntArray();
                this.c = new SparseIntArray();
                return;
        }
    }

    public K1(C0287l2 c0287l2) {
        this.a = 4;
        this.c = c0287l2;
        this.a = 4;
        this.b = c0287l2;
    }
}
