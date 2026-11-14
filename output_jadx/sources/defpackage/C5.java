package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class C5 {
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;
    public static final SparseIntArray f;
    public final HashMap a = new HashMap();
    public final boolean b = true;
    public final HashMap c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] c(C0185h3 c0185h3, String str) {
        int i;
        String[] split = str.split(",");
        Context context = c0185h3.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = Sf.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && c0185h3.isInEditMode() && (c0185h3.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) c0185h3.getParent();
                if (trim != null) {
                    HashMap hashMap = constraintLayout.m;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.m.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0088. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:128:0x0600. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r3v120, types: [java.lang.Object, w5] */
    public static C0594x5 d(Context context, AttributeSet attributeSet, boolean z) {
        int i;
        String str;
        String str2;
        String str3;
        int i2;
        String str4;
        int i3;
        C0594x5 c0594x5 = new C0594x5();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? Tf.c : Tf.a);
        int[] iArr = d;
        SparseIntArray sparseIntArray = e;
        A5 a5 = c0594x5.b;
        String[] strArr = C6.i;
        B5 b5 = c0594x5.e;
        C0644z5 c0644z5 = c0594x5.c;
        C0619y5 c0619y5 = c0594x5.d;
        String str5 = "Unknown attribute 0x";
        String str6 = "ConstraintSet";
        if (z) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            ?? obj = new Object();
            obj.a = new int[10];
            obj.b = new int[10];
            obj.c = 0;
            obj.d = new int[10];
            obj.e = new float[10];
            obj.f = 0;
            obj.g = new int[5];
            obj.h = new String[5];
            obj.i = 0;
            obj.j = new int[4];
            obj.k = new boolean[4];
            obj.l = 0;
            c0644z5.getClass();
            c0619y5.getClass();
            b5.getClass();
            int i4 = 0;
            while (i4 < indexCount) {
                int index = obtainStyledAttributes.getIndex(i4);
                int i5 = indexCount;
                switch (f.get(index)) {
                    case 2:
                        str4 = str5;
                        obj.b(2, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.I));
                        i3 = 1;
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder(str5);
                        str4 = str5;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        i3 = 1;
                        break;
                    case 5:
                        str4 = str5;
                        obj.d(obtainStyledAttributes.getString(index), 5);
                        i3 = 1;
                        break;
                    case 6:
                        str4 = str5;
                        obj.b(6, obtainStyledAttributes.getDimensionPixelOffset(index, c0619y5.C));
                        i3 = 1;
                        break;
                    case 7:
                        str4 = str5;
                        obj.b(7, obtainStyledAttributes.getDimensionPixelOffset(index, c0619y5.D));
                        i3 = 1;
                        break;
                    case 8:
                        str4 = str5;
                        obj.b(8, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.J));
                        i3 = 1;
                        break;
                    case 11:
                        str4 = str5;
                        obj.b(11, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.P));
                        i3 = 1;
                        break;
                    case 12:
                        str4 = str5;
                        obj.b(12, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.Q));
                        i3 = 1;
                        break;
                    case 13:
                        str4 = str5;
                        obj.b(13, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.M));
                        i3 = 1;
                        break;
                    case 14:
                        str4 = str5;
                        obj.b(14, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.O));
                        i3 = 1;
                        break;
                    case 15:
                        str4 = str5;
                        obj.b(15, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.R));
                        i3 = 1;
                        break;
                    case 16:
                        str4 = str5;
                        obj.b(16, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.N));
                        i3 = 1;
                        break;
                    case 17:
                        str4 = str5;
                        obj.b(17, obtainStyledAttributes.getDimensionPixelOffset(index, c0619y5.d));
                        i3 = 1;
                        break;
                    case 18:
                        str4 = str5;
                        obj.b(18, obtainStyledAttributes.getDimensionPixelOffset(index, c0619y5.e));
                        i3 = 1;
                        break;
                    case 19:
                        str4 = str5;
                        obj.a(19, obtainStyledAttributes.getFloat(index, c0619y5.f));
                        i3 = 1;
                        break;
                    case 20:
                        str4 = str5;
                        obj.a(20, obtainStyledAttributes.getFloat(index, c0619y5.w));
                        i3 = 1;
                        break;
                    case 21:
                        str4 = str5;
                        obj.b(21, obtainStyledAttributes.getLayoutDimension(index, c0619y5.c));
                        i3 = 1;
                        break;
                    case 22:
                        str4 = str5;
                        obj.b(22, iArr[obtainStyledAttributes.getInt(index, a5.a)]);
                        i3 = 1;
                        break;
                    case 23:
                        str4 = str5;
                        obj.b(23, obtainStyledAttributes.getLayoutDimension(index, c0619y5.b));
                        i3 = 1;
                        break;
                    case 24:
                        str4 = str5;
                        obj.b(24, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.F));
                        i3 = 1;
                        break;
                    case 27:
                        str4 = str5;
                        obj.b(27, obtainStyledAttributes.getInt(index, c0619y5.E));
                        i3 = 1;
                        break;
                    case 28:
                        str4 = str5;
                        obj.b(28, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.G));
                        i3 = 1;
                        break;
                    case 31:
                        str4 = str5;
                        obj.b(31, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.K));
                        i3 = 1;
                        break;
                    case 34:
                        str4 = str5;
                        obj.b(34, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.H));
                        i3 = 1;
                        break;
                    case 37:
                        str4 = str5;
                        obj.a(37, obtainStyledAttributes.getFloat(index, c0619y5.x));
                        i3 = 1;
                        break;
                    case 38:
                        str4 = str5;
                        int resourceId = obtainStyledAttributes.getResourceId(index, c0594x5.a);
                        c0594x5.a = resourceId;
                        obj.b(38, resourceId);
                        i3 = 1;
                        break;
                    case 39:
                        str4 = str5;
                        obj.a(39, obtainStyledAttributes.getFloat(index, c0619y5.U));
                        i3 = 1;
                        break;
                    case 40:
                        str4 = str5;
                        obj.a(40, obtainStyledAttributes.getFloat(index, c0619y5.T));
                        i3 = 1;
                        break;
                    case 41:
                        str4 = str5;
                        obj.b(41, obtainStyledAttributes.getInt(index, c0619y5.V));
                        i3 = 1;
                        break;
                    case 42:
                        str4 = str5;
                        obj.b(42, obtainStyledAttributes.getInt(index, c0619y5.W));
                        i3 = 1;
                        break;
                    case 43:
                        str4 = str5;
                        obj.a(43, obtainStyledAttributes.getFloat(index, a5.c));
                        i3 = 1;
                        break;
                    case 44:
                        str4 = str5;
                        obj.c(44, true);
                        obj.a(44, obtainStyledAttributes.getDimension(index, b5.m));
                        i3 = 1;
                        break;
                    case 45:
                        str4 = str5;
                        obj.a(45, obtainStyledAttributes.getFloat(index, b5.b));
                        i3 = 1;
                        break;
                    case 46:
                        str4 = str5;
                        obj.a(46, obtainStyledAttributes.getFloat(index, b5.c));
                        i3 = 1;
                        break;
                    case 47:
                        str4 = str5;
                        obj.a(47, obtainStyledAttributes.getFloat(index, b5.d));
                        i3 = 1;
                        break;
                    case 48:
                        str4 = str5;
                        obj.a(48, obtainStyledAttributes.getFloat(index, b5.e));
                        i3 = 1;
                        break;
                    case 49:
                        str4 = str5;
                        obj.a(49, obtainStyledAttributes.getDimension(index, b5.f));
                        i3 = 1;
                        break;
                    case 50:
                        str4 = str5;
                        obj.a(50, obtainStyledAttributes.getDimension(index, b5.g));
                        i3 = 1;
                        break;
                    case 51:
                        str4 = str5;
                        obj.a(51, obtainStyledAttributes.getDimension(index, b5.i));
                        i3 = 1;
                        break;
                    case 52:
                        str4 = str5;
                        obj.a(52, obtainStyledAttributes.getDimension(index, b5.j));
                        i3 = 1;
                        break;
                    case 53:
                        str4 = str5;
                        obj.a(53, obtainStyledAttributes.getDimension(index, b5.k));
                        i3 = 1;
                        break;
                    case 54:
                        str4 = str5;
                        obj.b(54, obtainStyledAttributes.getInt(index, c0619y5.X));
                        i3 = 1;
                        break;
                    case 55:
                        str4 = str5;
                        obj.b(55, obtainStyledAttributes.getInt(index, c0619y5.Y));
                        i3 = 1;
                        break;
                    case 56:
                        str4 = str5;
                        obj.b(56, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.Z));
                        i3 = 1;
                        break;
                    case 57:
                        str4 = str5;
                        obj.b(57, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.a0));
                        i3 = 1;
                        break;
                    case 58:
                        str4 = str5;
                        obj.b(58, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.b0));
                        i3 = 1;
                        break;
                    case 59:
                        str4 = str5;
                        obj.b(59, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.c0));
                        i3 = 1;
                        break;
                    case 60:
                        str4 = str5;
                        obj.a(60, obtainStyledAttributes.getFloat(index, b5.a));
                        i3 = 1;
                        break;
                    case 62:
                        str4 = str5;
                        obj.b(62, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.A));
                        i3 = 1;
                        break;
                    case 63:
                        str4 = str5;
                        obj.a(63, obtainStyledAttributes.getFloat(index, c0619y5.B));
                        i3 = 1;
                        break;
                    case 64:
                        str4 = str5;
                        obj.b(64, f(obtainStyledAttributes, index, c0644z5.a));
                        i3 = 1;
                        break;
                    case 65:
                        str4 = str5;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obj.d(obtainStyledAttributes.getString(index), 65);
                        } else {
                            obj.d(strArr[obtainStyledAttributes.getInteger(index, 0)], 65);
                        }
                        i3 = 1;
                        break;
                    case 66:
                        str4 = str5;
                        obj.b(66, obtainStyledAttributes.getInt(index, 0));
                        i3 = 1;
                        break;
                    case 67:
                        str4 = str5;
                        obj.a(67, obtainStyledAttributes.getFloat(index, c0644z5.e));
                        i3 = 1;
                        break;
                    case 68:
                        str4 = str5;
                        obj.a(68, obtainStyledAttributes.getFloat(index, a5.d));
                        i3 = 1;
                        break;
                    case 69:
                        str4 = str5;
                        obj.a(69, obtainStyledAttributes.getFloat(index, 1.0f));
                        i3 = 1;
                        break;
                    case 70:
                        str4 = str5;
                        obj.a(70, obtainStyledAttributes.getFloat(index, 1.0f));
                        i3 = 1;
                        break;
                    case 71:
                        str4 = str5;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        i3 = 1;
                        break;
                    case 72:
                        str4 = str5;
                        obj.b(72, obtainStyledAttributes.getInt(index, c0619y5.f0));
                        i3 = 1;
                        break;
                    case 73:
                        str4 = str5;
                        obj.b(73, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.g0));
                        i3 = 1;
                        break;
                    case 74:
                        str4 = str5;
                        obj.d(obtainStyledAttributes.getString(index), 74);
                        i3 = 1;
                        break;
                    case 75:
                        str4 = str5;
                        obj.c(75, obtainStyledAttributes.getBoolean(index, c0619y5.n0));
                        i3 = 1;
                        break;
                    case 76:
                        str4 = str5;
                        obj.b(76, obtainStyledAttributes.getInt(index, c0644z5.c));
                        i3 = 1;
                        break;
                    case 77:
                        str4 = str5;
                        obj.d(obtainStyledAttributes.getString(index), 77);
                        i3 = 1;
                        break;
                    case 78:
                        str4 = str5;
                        obj.b(78, obtainStyledAttributes.getInt(index, a5.b));
                        i3 = 1;
                        break;
                    case 79:
                        str4 = str5;
                        obj.a(79, obtainStyledAttributes.getFloat(index, c0644z5.d));
                        i3 = 1;
                        break;
                    case 80:
                        str4 = str5;
                        obj.c(80, obtainStyledAttributes.getBoolean(index, c0619y5.l0));
                        i3 = 1;
                        break;
                    case 81:
                        str4 = str5;
                        obj.c(81, obtainStyledAttributes.getBoolean(index, c0619y5.m0));
                        i3 = 1;
                        break;
                    case 82:
                        str4 = str5;
                        obj.b(82, obtainStyledAttributes.getInteger(index, c0644z5.b));
                        i3 = 1;
                        break;
                    case 83:
                        str4 = str5;
                        obj.b(83, f(obtainStyledAttributes, index, b5.h));
                        i3 = 1;
                        break;
                    case 84:
                        str4 = str5;
                        obj.b(84, obtainStyledAttributes.getInteger(index, c0644z5.g));
                        i3 = 1;
                        break;
                    case 85:
                        str4 = str5;
                        obj.a(85, obtainStyledAttributes.getFloat(index, c0644z5.f));
                        i3 = 1;
                        break;
                    case 86:
                        str4 = str5;
                        int i6 = obtainStyledAttributes.peekValue(index).type;
                        if (i6 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            c0644z5.i = resourceId2;
                            obj.b(89, resourceId2);
                            if (c0644z5.i != -1) {
                                obj.b(88, -2);
                            }
                        } else if (i6 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            c0644z5.h = string;
                            obj.d(string, 90);
                            if (c0644z5.h.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                c0644z5.i = resourceId3;
                                obj.b(89, resourceId3);
                                obj.b(88, -2);
                            } else {
                                obj.b(88, -1);
                            }
                        } else {
                            obj.b(88, obtainStyledAttributes.getInteger(index, c0644z5.i));
                        }
                        i3 = 1;
                        break;
                    case 87:
                        str4 = str5;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        i3 = 1;
                        break;
                    case 93:
                        str4 = str5;
                        obj.b(93, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.L));
                        i3 = 1;
                        break;
                    case 94:
                        str4 = str5;
                        obj.b(94, obtainStyledAttributes.getDimensionPixelSize(index, c0619y5.S));
                        i3 = 1;
                        break;
                    case 95:
                        str4 = str5;
                        g(obj, obtainStyledAttributes, index, 0);
                        i3 = 1;
                        break;
                    case 96:
                        str4 = str5;
                        i3 = 1;
                        g(obj, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        str4 = str5;
                        obj.b(97, obtainStyledAttributes.getInt(index, c0619y5.o0));
                        i3 = 1;
                        break;
                    case 98:
                        str4 = str5;
                        int i7 = AbstractC0377oe.s;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                        } else {
                            c0594x5.a = obtainStyledAttributes.getResourceId(index, c0594x5.a);
                        }
                        i3 = 1;
                        break;
                    case 99:
                        str4 = str5;
                        obj.c(99, obtainStyledAttributes.getBoolean(index, c0619y5.g));
                        i3 = 1;
                        break;
                }
                i4 += i3;
                indexCount = i5;
                str5 = str4;
            }
        } else {
            String str7 = "CURRENTLY UNSUPPORTED";
            String str8 = "Unknown attribute 0x";
            int i8 = 1;
            int indexCount2 = obtainStyledAttributes.getIndexCount();
            int i9 = 0;
            while (i9 < indexCount2) {
                int index2 = obtainStyledAttributes.getIndex(i9);
                if (index2 != i8 && 23 != index2 && 24 != index2) {
                    c0644z5.getClass();
                    c0619y5.getClass();
                    b5.getClass();
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.p = f(obtainStyledAttributes, index2, c0619y5.p);
                        i2 = 1;
                        break;
                    case 2:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.I = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.I);
                        i2 = 1;
                        break;
                    case 3:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.o = f(obtainStyledAttributes, index2, c0619y5.o);
                        i2 = 1;
                        break;
                    case 4:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.n = f(obtainStyledAttributes, index2, c0619y5.n);
                        i2 = 1;
                        break;
                    case 5:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.y = obtainStyledAttributes.getString(index2);
                        i2 = 1;
                        break;
                    case 6:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.C = obtainStyledAttributes.getDimensionPixelOffset(index2, c0619y5.C);
                        i2 = 1;
                        break;
                    case 7:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.D = obtainStyledAttributes.getDimensionPixelOffset(index2, c0619y5.D);
                        i2 = 1;
                        break;
                    case 8:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.J = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.J);
                        i2 = 1;
                        break;
                    case 9:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.v = f(obtainStyledAttributes, index2, c0619y5.v);
                        i2 = 1;
                        break;
                    case 10:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.u = f(obtainStyledAttributes, index2, c0619y5.u);
                        i2 = 1;
                        break;
                    case 11:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.P = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.P);
                        i2 = 1;
                        break;
                    case 12:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.Q = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.Q);
                        i2 = 1;
                        break;
                    case 13:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.M = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.M);
                        i2 = 1;
                        break;
                    case 14:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.O = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.O);
                        i2 = 1;
                        break;
                    case 15:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.R = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.R);
                        i2 = 1;
                        break;
                    case 16:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.N = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.N);
                        i2 = 1;
                        break;
                    case 17:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.d = obtainStyledAttributes.getDimensionPixelOffset(index2, c0619y5.d);
                        i2 = 1;
                        break;
                    case 18:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.e = obtainStyledAttributes.getDimensionPixelOffset(index2, c0619y5.e);
                        i2 = 1;
                        break;
                    case 19:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.f = obtainStyledAttributes.getFloat(index2, c0619y5.f);
                        i2 = 1;
                        break;
                    case 20:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.w = obtainStyledAttributes.getFloat(index2, c0619y5.w);
                        i2 = 1;
                        break;
                    case 21:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.c = obtainStyledAttributes.getLayoutDimension(index2, c0619y5.c);
                        i2 = 1;
                        break;
                    case 22:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        int i10 = obtainStyledAttributes.getInt(index2, a5.a);
                        a5.a = i10;
                        a5.a = iArr[i10];
                        i2 = 1;
                        break;
                    case 23:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.b = obtainStyledAttributes.getLayoutDimension(index2, c0619y5.b);
                        i2 = 1;
                        break;
                    case 24:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.F = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.F);
                        i2 = 1;
                        break;
                    case 25:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.h = f(obtainStyledAttributes, index2, c0619y5.h);
                        i2 = 1;
                        break;
                    case 26:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.i = f(obtainStyledAttributes, index2, c0619y5.i);
                        i2 = 1;
                        break;
                    case 27:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.E = obtainStyledAttributes.getInt(index2, c0619y5.E);
                        i2 = 1;
                        break;
                    case 28:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.G = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.G);
                        i2 = 1;
                        break;
                    case 29:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.j = f(obtainStyledAttributes, index2, c0619y5.j);
                        i2 = 1;
                        break;
                    case 30:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.k = f(obtainStyledAttributes, index2, c0619y5.k);
                        i2 = 1;
                        break;
                    case 31:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.K = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.K);
                        i2 = 1;
                        break;
                    case 32:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.s = f(obtainStyledAttributes, index2, c0619y5.s);
                        i2 = 1;
                        break;
                    case 33:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.t = f(obtainStyledAttributes, index2, c0619y5.t);
                        i2 = 1;
                        break;
                    case 34:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.H = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.H);
                        i2 = 1;
                        break;
                    case 35:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.m = f(obtainStyledAttributes, index2, c0619y5.m);
                        i2 = 1;
                        break;
                    case 36:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.l = f(obtainStyledAttributes, index2, c0619y5.l);
                        i2 = 1;
                        break;
                    case 37:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.x = obtainStyledAttributes.getFloat(index2, c0619y5.x);
                        i2 = 1;
                        break;
                    case 38:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0594x5.a = obtainStyledAttributes.getResourceId(index2, c0594x5.a);
                        i2 = 1;
                        break;
                    case 39:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.U = obtainStyledAttributes.getFloat(index2, c0619y5.U);
                        i2 = 1;
                        break;
                    case 40:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.T = obtainStyledAttributes.getFloat(index2, c0619y5.T);
                        i2 = 1;
                        break;
                    case 41:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.V = obtainStyledAttributes.getInt(index2, c0619y5.V);
                        i2 = 1;
                        break;
                    case 42:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.W = obtainStyledAttributes.getInt(index2, c0619y5.W);
                        i2 = 1;
                        break;
                    case 43:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        a5.c = obtainStyledAttributes.getFloat(index2, a5.c);
                        i2 = 1;
                        break;
                    case 44:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.l = true;
                        b5.m = obtainStyledAttributes.getDimension(index2, b5.m);
                        i2 = 1;
                        break;
                    case 45:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.b = obtainStyledAttributes.getFloat(index2, b5.b);
                        i2 = 1;
                        break;
                    case 46:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.c = obtainStyledAttributes.getFloat(index2, b5.c);
                        i2 = 1;
                        break;
                    case 47:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.d = obtainStyledAttributes.getFloat(index2, b5.d);
                        i2 = 1;
                        break;
                    case 48:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.e = obtainStyledAttributes.getFloat(index2, b5.e);
                        i2 = 1;
                        break;
                    case 49:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.f = obtainStyledAttributes.getDimension(index2, b5.f);
                        i2 = 1;
                        break;
                    case 50:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.g = obtainStyledAttributes.getDimension(index2, b5.g);
                        i2 = 1;
                        break;
                    case 51:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.i = obtainStyledAttributes.getDimension(index2, b5.i);
                        i2 = 1;
                        break;
                    case 52:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.j = obtainStyledAttributes.getDimension(index2, b5.j);
                        i2 = 1;
                        break;
                    case 53:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.k = obtainStyledAttributes.getDimension(index2, b5.k);
                        i2 = 1;
                        break;
                    case 54:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.X = obtainStyledAttributes.getInt(index2, c0619y5.X);
                        i2 = 1;
                        break;
                    case 55:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.Y = obtainStyledAttributes.getInt(index2, c0619y5.Y);
                        i2 = 1;
                        break;
                    case 56:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.Z = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.Z);
                        i2 = 1;
                        break;
                    case 57:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.a0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.a0);
                        i2 = 1;
                        break;
                    case 58:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.b0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.b0);
                        i2 = 1;
                        break;
                    case 59:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.c0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.c0);
                        i2 = 1;
                        break;
                    case 60:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        b5.a = obtainStyledAttributes.getFloat(index2, b5.a);
                        i2 = 1;
                        break;
                    case 61:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.z = f(obtainStyledAttributes, index2, c0619y5.z);
                        i2 = 1;
                        break;
                    case 62:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.A = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.A);
                        i2 = 1;
                        break;
                    case 63:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0619y5.B = obtainStyledAttributes.getFloat(index2, c0619y5.B);
                        i2 = 1;
                        break;
                    case 64:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        c0644z5.a = f(obtainStyledAttributes, index2, c0644z5.a);
                        i2 = 1;
                        break;
                    case 65:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        if (obtainStyledAttributes.peekValue(index2).type != 3) {
                            String str9 = strArr[obtainStyledAttributes.getInteger(index2, 0)];
                            c0644z5.getClass();
                            i2 = 1;
                            break;
                        } else {
                            obtainStyledAttributes.getString(index2);
                            c0644z5.getClass();
                            i2 = 1;
                            break;
                        }
                    case 66:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        obtainStyledAttributes.getInt(index2, 0);
                        c0644z5.getClass();
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 67:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        c0644z5.e = obtainStyledAttributes.getFloat(index2, c0644z5.e);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 68:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        a5.d = obtainStyledAttributes.getFloat(index2, a5.d);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 69:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        c0619y5.d0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 70:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        c0619y5.e0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 71:
                        i = indexCount2;
                        str = str7;
                        str2 = str8;
                        Log.e(str6, str);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 72:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.f0 = obtainStyledAttributes.getInt(index2, c0619y5.f0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 73:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.g0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.g0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 74:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.j0 = obtainStyledAttributes.getString(index2);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 75:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.n0 = obtainStyledAttributes.getBoolean(index2, c0619y5.n0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 76:
                        i = indexCount2;
                        str2 = str8;
                        c0644z5.c = obtainStyledAttributes.getInt(index2, c0644z5.c);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 77:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.k0 = obtainStyledAttributes.getString(index2);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 78:
                        i = indexCount2;
                        str2 = str8;
                        a5.b = obtainStyledAttributes.getInt(index2, a5.b);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 79:
                        i = indexCount2;
                        str2 = str8;
                        c0644z5.d = obtainStyledAttributes.getFloat(index2, c0644z5.d);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 80:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.l0 = obtainStyledAttributes.getBoolean(index2, c0619y5.l0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 81:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.m0 = obtainStyledAttributes.getBoolean(index2, c0619y5.m0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 82:
                        i = indexCount2;
                        str2 = str8;
                        c0644z5.b = obtainStyledAttributes.getInteger(index2, c0644z5.b);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 83:
                        i = indexCount2;
                        str2 = str8;
                        b5.h = f(obtainStyledAttributes, index2, b5.h);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 84:
                        i = indexCount2;
                        str2 = str8;
                        c0644z5.g = obtainStyledAttributes.getInteger(index2, c0644z5.g);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 85:
                        i = indexCount2;
                        str2 = str8;
                        c0644z5.f = obtainStyledAttributes.getFloat(index2, c0644z5.f);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 86:
                        i = indexCount2;
                        str2 = str8;
                        int i11 = obtainStyledAttributes.peekValue(index2).type;
                        if (i11 == 1) {
                            c0644z5.i = obtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i11 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            c0644z5.h = string2;
                            if (string2.indexOf("/") > 0) {
                                c0644z5.i = obtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, c0644z5.i);
                        }
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 87:
                        i = indexCount2;
                        str2 = str8;
                        Log.w(str6, "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        str2 = str8;
                        StringBuilder sb2 = new StringBuilder(str2);
                        i = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w(str6, sb2.toString());
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 91:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.q = f(obtainStyledAttributes, index2, c0619y5.q);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 92:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.r = f(obtainStyledAttributes, index2, c0619y5.r);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 93:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.L = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.L);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 94:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.S = obtainStyledAttributes.getDimensionPixelSize(index2, c0619y5.S);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 95:
                        i = indexCount2;
                        str2 = str8;
                        g(c0619y5, obtainStyledAttributes, index2, 0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 96:
                        i = indexCount2;
                        str2 = str8;
                        g(c0619y5, obtainStyledAttributes, index2, 1);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 97:
                        i = indexCount2;
                        str2 = str8;
                        c0619y5.o0 = obtainStyledAttributes.getInt(index2, c0619y5.o0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                }
                i9 += i2;
                indexCount2 = i;
                str8 = str2;
                String str10 = str;
                i8 = i2;
                str6 = str3;
                str7 = str10;
            }
            if (c0619y5.j0 != null) {
                c0619y5.i0 = null;
            }
        }
        obtainStyledAttributes.recycle();
        return c0594x5;
    }

    public static int f(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C5.g(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void h(C0494t5 c0494t5, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                i = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                r2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r2);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r2, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        c0494t5.G = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0108. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [r5, android.view.View, h3] */
    /* JADX WARN: Type inference failed for: r8v1, types: [Ga, i3] */
    public final void a(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        String str;
        int i2;
        String str2;
        C5 c5 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = c5.c;
        HashSet hashSet = new HashSet(hashMap2.keySet());
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str2 = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str2 = "UNKNOWN";
                }
                sb.append(str2);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (c5.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (hashMap2.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        C0594x5 c0594x5 = (C0594x5) hashMap2.get(Integer.valueOf(id));
                        if (c0594x5 != null) {
                            if (childAt instanceof C0185h3) {
                                C0619y5 c0619y5 = c0594x5.d;
                                c0619y5.h0 = 1;
                                C0185h3 c0185h3 = (C0185h3) childAt;
                                c0185h3.setId(id);
                                c0185h3.setType(c0619y5.f0);
                                c0185h3.setMargin(c0619y5.g0);
                                c0185h3.setAllowsGoneWidget(c0619y5.n0);
                                int[] iArr = c0619y5.i0;
                                if (iArr != null) {
                                    c0185h3.setReferencedIds(iArr);
                                } else {
                                    String str3 = c0619y5.j0;
                                    if (str3 != null) {
                                        int[] c = c(c0185h3, str3);
                                        c0619y5.i0 = c;
                                        c0185h3.setReferencedIds(c);
                                    }
                                }
                            }
                            C0494t5 c0494t5 = (C0494t5) childAt.getLayoutParams();
                            c0494t5.a();
                            c0594x5.a(c0494t5);
                            HashMap hashMap3 = c0594x5.f;
                            Class<?> cls = childAt.getClass();
                            for (String str4 : hashMap3.keySet()) {
                                C0420q5 c0420q5 = (C0420q5) hashMap3.get(str4);
                                if (c0420q5.a) {
                                    hashMap = hashMap3;
                                    str = str4;
                                } else {
                                    hashMap = hashMap3;
                                    str = "set" + str4;
                                }
                                try {
                                    switch (AbstractC0407pi.p(c0420q5.b)) {
                                        case 0:
                                            i2 = childCount;
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0420q5.c));
                                            break;
                                        case 1:
                                            i2 = childCount;
                                            cls.getMethod(str, Float.TYPE).invoke(childAt, Float.valueOf(c0420q5.d));
                                            break;
                                        case 2:
                                            i2 = childCount;
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0420q5.g));
                                            break;
                                        case 3:
                                            Method method = cls.getMethod(str, Drawable.class);
                                            i2 = childCount;
                                            try {
                                                ColorDrawable colorDrawable = new ColorDrawable();
                                                colorDrawable.setColor(c0420q5.g);
                                                method.invoke(childAt, colorDrawable);
                                            } catch (IllegalAccessException e2) {
                                                e = e2;
                                                StringBuilder l = AbstractC0407pi.l(" Custom Attribute \"", str4, "\" not found on ");
                                                l.append(cls.getName());
                                                Log.e("TransitionLayout", l.toString());
                                                e.printStackTrace();
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            } catch (NoSuchMethodException e3) {
                                                e = e3;
                                                Log.e("TransitionLayout", e.getMessage());
                                                Log.e("TransitionLayout", " Custom Attribute \"" + str4 + "\" not found on " + cls.getName());
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str);
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            } catch (InvocationTargetException e4) {
                                                e = e4;
                                                StringBuilder l2 = AbstractC0407pi.l(" Custom Attribute \"", str4, "\" not found on ");
                                                l2.append(cls.getName());
                                                Log.e("TransitionLayout", l2.toString());
                                                e.printStackTrace();
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            }
                                        case 4:
                                            cls.getMethod(str, CharSequence.class).invoke(childAt, c0420q5.e);
                                            i2 = childCount;
                                            break;
                                        case 5:
                                            cls.getMethod(str, Boolean.TYPE).invoke(childAt, Boolean.valueOf(c0420q5.f));
                                            i2 = childCount;
                                            break;
                                        case 6:
                                            cls.getMethod(str, Float.TYPE).invoke(childAt, Float.valueOf(c0420q5.d));
                                            i2 = childCount;
                                            break;
                                        case 7:
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0420q5.c));
                                            i2 = childCount;
                                            break;
                                        default:
                                            i2 = childCount;
                                            break;
                                    }
                                } catch (IllegalAccessException e5) {
                                    e = e5;
                                    i2 = childCount;
                                } catch (NoSuchMethodException e6) {
                                    e = e6;
                                    i2 = childCount;
                                } catch (InvocationTargetException e7) {
                                    e = e7;
                                    i2 = childCount;
                                }
                                hashMap3 = hashMap;
                                childCount = i2;
                            }
                            i = childCount;
                            childAt.setLayoutParams(c0494t5);
                            A5 a5 = c0594x5.b;
                            if (a5.b == 0) {
                                childAt.setVisibility(a5.a);
                            }
                            childAt.setAlpha(a5.c);
                            B5 b5 = c0594x5.e;
                            childAt.setRotation(b5.a);
                            childAt.setRotationX(b5.b);
                            childAt.setRotationY(b5.c);
                            childAt.setScaleX(b5.d);
                            childAt.setScaleY(b5.e);
                            if (b5.h != -1) {
                                if (((View) childAt.getParent()).findViewById(b5.h) != null) {
                                    float bottom = (r1.getBottom() + r1.getTop()) / 2.0f;
                                    float right = (r1.getRight() + r1.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(b5.f)) {
                                    childAt.setPivotX(b5.f);
                                }
                                if (!Float.isNaN(b5.g)) {
                                    childAt.setPivotY(b5.g);
                                }
                            }
                            childAt.setTranslationX(b5.i);
                            childAt.setTranslationY(b5.j);
                            childAt.setTranslationZ(b5.k);
                            if (b5.l) {
                                childAt.setElevation(b5.m);
                            }
                        }
                    } else {
                        i = childCount;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i3++;
                    c5 = this;
                    childCount = i;
                }
            }
            i = childCount;
            i3++;
            c5 = this;
            childCount = i;
        }
        int i4 = childCount;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0594x5 c0594x52 = (C0594x5) hashMap2.get(num);
            if (c0594x52 != null) {
                C0619y5 c0619y52 = c0594x52.d;
                if (c0619y52.h0 == 1) {
                    Context context = constraintLayout.getContext();
                    ?? view = new View(context);
                    view.a = new int[32];
                    view.g = new HashMap();
                    view.c = context;
                    ?? ga = new Ga();
                    ga.s0 = 0;
                    ga.t0 = true;
                    ga.u0 = 0;
                    ga.v0 = false;
                    view.j = ga;
                    view.d = ga;
                    view.i();
                    view.setVisibility(8);
                    view.setId(num.intValue());
                    int[] iArr2 = c0619y52.i0;
                    if (iArr2 != null) {
                        view.setReferencedIds(iArr2);
                    } else {
                        String str5 = c0619y52.j0;
                        if (str5 != null) {
                            int[] c2 = c(view, str5);
                            c0619y52.i0 = c2;
                            view.setReferencedIds(c2);
                        }
                    }
                    view.setType(c0619y52.f0);
                    view.setMargin(c0619y52.g0);
                    C0494t5 g = ConstraintLayout.g();
                    view.i();
                    c0594x52.a(g);
                    constraintLayout.addView((View) view, g);
                }
                if (c0619y52.a) {
                    C0649za c0649za = new C0649za(constraintLayout.getContext());
                    c0649za.setId(num.intValue());
                    C0494t5 g2 = ConstraintLayout.g();
                    c0594x52.a(g2);
                    constraintLayout.addView(c0649za, g2);
                }
            }
        }
        for (int i5 = 0; i5 < i4; i5++) {
            View childAt2 = constraintLayout.getChildAt(i5);
            if (childAt2 instanceof AbstractC0444r5) {
                ((AbstractC0444r5) childAt2).e(constraintLayout);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        C5 c5 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = c5.c;
        hashMap.clear();
        int i = 0;
        while (i < childCount) {
            View childAt = constraintLayout.getChildAt(i);
            C0494t5 c0494t5 = (C0494t5) childAt.getLayoutParams();
            int id = childAt.getId();
            if (c5.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                hashMap.put(Integer.valueOf(id), new C0594x5());
            }
            C0594x5 c0594x5 = (C0594x5) hashMap.get(Integer.valueOf(id));
            if (c0594x5 != null) {
                HashMap hashMap2 = c5.a;
                HashMap hashMap3 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : hashMap2.keySet()) {
                    C0420q5 c0420q5 = (C0420q5) hashMap2.get(str);
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap3.put(str, new C0420q5(c0420q5, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            hashMap3.put(str, new C0420q5(c0420q5, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    } catch (NoSuchMethodException e3) {
                        e3.printStackTrace();
                    } catch (InvocationTargetException e4) {
                        e4.printStackTrace();
                    }
                }
                c0594x5.f = hashMap3;
                c0594x5.a = id;
                int i2 = c0494t5.e;
                C0619y5 c0619y5 = c0594x5.d;
                c0619y5.h = i2;
                c0619y5.i = c0494t5.f;
                c0619y5.j = c0494t5.g;
                c0619y5.k = c0494t5.h;
                c0619y5.l = c0494t5.i;
                c0619y5.m = c0494t5.j;
                c0619y5.n = c0494t5.k;
                c0619y5.o = c0494t5.l;
                c0619y5.p = c0494t5.m;
                c0619y5.q = c0494t5.n;
                c0619y5.r = c0494t5.o;
                c0619y5.s = c0494t5.s;
                c0619y5.t = c0494t5.t;
                c0619y5.u = c0494t5.u;
                c0619y5.v = c0494t5.v;
                c0619y5.w = c0494t5.E;
                c0619y5.x = c0494t5.F;
                c0619y5.y = c0494t5.G;
                c0619y5.z = c0494t5.p;
                c0619y5.A = c0494t5.q;
                c0619y5.B = c0494t5.r;
                c0619y5.C = c0494t5.T;
                c0619y5.D = c0494t5.U;
                c0619y5.E = c0494t5.V;
                c0619y5.f = c0494t5.c;
                c0619y5.d = c0494t5.a;
                c0619y5.e = c0494t5.b;
                c0619y5.b = ((ViewGroup.MarginLayoutParams) c0494t5).width;
                c0619y5.c = ((ViewGroup.MarginLayoutParams) c0494t5).height;
                c0619y5.F = ((ViewGroup.MarginLayoutParams) c0494t5).leftMargin;
                c0619y5.G = ((ViewGroup.MarginLayoutParams) c0494t5).rightMargin;
                c0619y5.H = ((ViewGroup.MarginLayoutParams) c0494t5).topMargin;
                c0619y5.I = ((ViewGroup.MarginLayoutParams) c0494t5).bottomMargin;
                c0619y5.L = c0494t5.D;
                c0619y5.T = c0494t5.I;
                c0619y5.U = c0494t5.H;
                c0619y5.W = c0494t5.K;
                c0619y5.V = c0494t5.J;
                c0619y5.l0 = c0494t5.W;
                c0619y5.m0 = c0494t5.X;
                c0619y5.X = c0494t5.L;
                c0619y5.Y = c0494t5.M;
                c0619y5.Z = c0494t5.P;
                c0619y5.a0 = c0494t5.Q;
                c0619y5.b0 = c0494t5.N;
                c0619y5.c0 = c0494t5.O;
                c0619y5.d0 = c0494t5.R;
                c0619y5.e0 = c0494t5.S;
                c0619y5.k0 = c0494t5.Y;
                c0619y5.N = c0494t5.x;
                c0619y5.P = c0494t5.z;
                c0619y5.M = c0494t5.w;
                c0619y5.O = c0494t5.y;
                c0619y5.R = c0494t5.A;
                c0619y5.Q = c0494t5.B;
                c0619y5.S = c0494t5.C;
                c0619y5.o0 = c0494t5.Z;
                c0619y5.J = c0494t5.getMarginEnd();
                c0619y5.K = c0494t5.getMarginStart();
                int visibility = childAt.getVisibility();
                A5 a5 = c0594x5.b;
                a5.a = visibility;
                a5.c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                B5 b5 = c0594x5.e;
                b5.a = rotation;
                b5.b = childAt.getRotationX();
                b5.c = childAt.getRotationY();
                b5.d = childAt.getScaleX();
                b5.e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    b5.f = pivotX;
                    b5.g = pivotY;
                }
                b5.i = childAt.getTranslationX();
                b5.j = childAt.getTranslationY();
                b5.k = childAt.getTranslationZ();
                if (b5.l) {
                    b5.m = childAt.getElevation();
                }
                if (childAt instanceof C0185h3) {
                    C0185h3 c0185h3 = (C0185h3) childAt;
                    c0619y5.n0 = c0185h3.getAllowsGoneWidget();
                    c0619y5.i0 = c0185h3.getReferencedIds();
                    c0619y5.f0 = c0185h3.getType();
                    c0619y5.g0 = c0185h3.getMargin();
                }
            }
            i++;
            c5 = this;
        }
    }

    public final void e(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0594x5 d2 = d(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        d2.d.a = true;
                    }
                    this.c.put(Integer.valueOf(d2.a), d2);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
