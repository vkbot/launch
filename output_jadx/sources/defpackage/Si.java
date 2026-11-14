package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class Si extends Qi {
    public static boolean H(String str, String str2) {
        AbstractC0348nb.r(str, "<this>");
        return J(str, str2, 0, false) >= 0;
    }

    public static final int I(CharSequence charSequence) {
        AbstractC0348nb.r(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int J(String str, String str2, int i, boolean z) {
        AbstractC0348nb.r(str, "<this>");
        AbstractC0348nb.r(str2, "string");
        if (!z) {
            return str.indexOf(str2, i);
        }
        int length = str.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = str.length();
        if (length > length2) {
            length = length2;
        }
        int i2 = new AbstractC0270kb(i, length, 1).b;
        if (i <= i2) {
            while (true) {
                int length3 = str2.length();
                if (!(!z ? str2.regionMatches(0, str, i, length3) : str2.regionMatches(z, 0, str, i, length3))) {
                    if (i == i2) {
                        break;
                    }
                    i++;
                } else {
                    return i;
                }
            }
        }
        return -1;
    }

    public static int K(String str, char c, boolean z, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        return !z ? str.indexOf(c, 0) : L(str, new char[]{c}, 0, z);
    }

    public static final int L(CharSequence charSequence, char[] cArr, int i, boolean z) {
        int i2;
        char upperCase;
        char upperCase2;
        AbstractC0348nb.r(charSequence, "<this>");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length == 1) {
                return ((String) charSequence).indexOf(cArr[0], i);
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        if (i < 0) {
            i = 0;
        }
        int i3 = new AbstractC0270kb(i, I(charSequence), 1).b;
        boolean z2 = i <= i3;
        if (!z2) {
            i = i3;
        }
        while (z2) {
            if (i != i3) {
                i2 = i + 1;
            } else {
                if (!z2) {
                    throw new NoSuchElementException();
                }
                i2 = i;
                z2 = false;
            }
            char charAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (c == charAt || (z && ((upperCase = Character.toUpperCase(c)) == (upperCase2 = Character.toUpperCase(charAt)) || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2)))) {
                    return i;
                }
            }
            i = i2;
        }
        return -1;
    }

    public static boolean M(CharSequence charSequence) {
        AbstractC0348nb.r(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return true;
        }
        Iterable abstractC0270kb = new AbstractC0270kb(0, charSequence.length() - 1, 1);
        if ((abstractC0270kb instanceof Collection) && ((Collection) abstractC0270kb).isEmpty()) {
            return true;
        }
        Iterator it = abstractC0270kb.iterator();
        while (((C0296lb) it).c) {
            char charAt = charSequence.charAt(((C0296lb) it).a());
            if (!Character.isWhitespace(charAt) && !Character.isSpaceChar(charAt)) {
                return false;
            }
        }
        return true;
    }

    public static String N(String str, String str2, String str3) {
        AbstractC0348nb.r(str, "<this>");
        int J = J(str, str2, 0, false);
        if (J < 0) {
            return str;
        }
        int length = str2.length();
        int i = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i2 = 0;
        do {
            sb.append((CharSequence) str, i2, J);
            sb.append(str3);
            i2 = J + length;
            if (J >= str.length()) {
                break;
            }
            J = J(str, str2, J + i, false);
        } while (J > 0);
        sb.append((CharSequence) str, i2, str.length());
        String sb2 = sb.toString();
        AbstractC0348nb.q(sb2, "toString(...)");
        return sb2;
    }

    public static List O(String str, char[] cArr) {
        if (cArr.length == 1) {
            String valueOf = String.valueOf(cArr[0]);
            int J = J(str, valueOf, 0, false);
            if (J == -1) {
                return AbstractC0348nb.N(str.toString());
            }
            ArrayList arrayList = new ArrayList(10);
            int i = 0;
            do {
                arrayList.add(str.subSequence(i, J).toString());
                i = valueOf.length() + J;
                J = J(str, valueOf, i, false);
            } while (J != -1);
            arrayList.add(str.subSequence(i, str.length()).toString());
            return arrayList;
        }
        Ta ta = new Ta(1, new C0086d7(str, 0, 0, new Ri(cArr, false)));
        ArrayList arrayList2 = new ArrayList(N4.r0(ta));
        Iterator it = ta.iterator();
        while (true) {
            C0060c7 c0060c7 = (C0060c7) it;
            if (!c0060c7.hasNext()) {
                return arrayList2;
            }
            C0322mb c0322mb = (C0322mb) c0060c7.next();
            AbstractC0348nb.r(c0322mb, "range");
            arrayList2.add(str.subSequence(c0322mb.a, c0322mb.b + 1).toString());
        }
    }

    public static boolean P(String str, String str2) {
        AbstractC0348nb.r(str, "<this>");
        AbstractC0348nb.r(str2, "prefix");
        return str.startsWith(str2);
    }

    public static String Q(String str) {
        AbstractC0348nb.r(str, "<this>");
        AbstractC0348nb.r(str, "missingDelimiterValue");
        int lastIndexOf = str.lastIndexOf(46, I(str));
        if (lastIndexOf == -1) {
            return str;
        }
        String substring = str.substring(lastIndexOf + 1, str.length());
        AbstractC0348nb.q(substring, "substring(...)");
        return substring;
    }

    public static CharSequence R(String str) {
        AbstractC0348nb.r(str, "<this>");
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            char charAt = str.charAt(!z ? i : length);
            boolean z2 = Character.isWhitespace(charAt) || Character.isSpaceChar(charAt);
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1);
    }
}
