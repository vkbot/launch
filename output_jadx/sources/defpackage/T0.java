package defpackage;

import android.util.Log;
import com.omoda.launcher.data.RemoteApp;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class T0 {
    public static C0451rc a(String str) {
        String str2;
        C0451rc c0451rc = new C0451rc(10);
        Sb.a.getClass();
        String str3 = Sb.d;
        if (!Si.M(str3)) {
            c0451rc.add("device_id=".concat(str3));
        }
        if (str != null && !Si.M(str)) {
            c0451rc.add("hu_id=".concat(str));
        }
        try {
            str2 = "lang=".concat(C0255jm.a());
        } catch (Exception unused) {
            str2 = null;
        }
        c0451rc.addAll(Z2.W(new String[]{"version=2.5.2", str2}));
        if (c0451rc.e != null) {
            throw new IllegalStateException();
        }
        c0451rc.g();
        c0451rc.d = true;
        return c0451rc.c > 0 ? c0451rc : C0451rc.g;
    }

    public static boolean b(int i, String str, File file, InterfaceC0089da interfaceC0089da) {
        StringBuilder sb;
        try {
            C0451rc a = a(str);
            if (a.isEmpty()) {
                sb = new StringBuilder("https://omoda-c5-launcher.ru/api/download/");
                sb.append(i);
            } else {
                sb = new StringBuilder("https://omoda-c5-launcher.ru/api/download/");
                sb.append(i);
                sb.append('?');
                sb.append(L4.y0(a, "&", null, null, null, 62));
            }
            URLConnection openConnection = new URL(sb.toString()).openConnection();
            AbstractC0348nb.p(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(300000);
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    Log.w("ApiClient", "downloadApk: HTTP " + responseCode);
                    return false;
                }
                long contentLength = httpURLConnection.getContentLength();
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        long j = 0;
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                C6.c(fileOutputStream, null);
                                C6.c(inputStream, null);
                                Log.d("ApiClient", "downloadApk: saved " + file.length() + " bytes to " + file.getPath());
                                return true;
                            }
                            fileOutputStream.write(bArr, 0, read);
                            j += read;
                            if (contentLength > 0) {
                                interfaceC0089da.h(Integer.valueOf((int) ((100 * j) / contentLength)));
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            C6.c(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        C6.c(inputStream, th3);
                        throw th4;
                    }
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            Log.e("ApiClient", "downloadApk failed", e);
            file.delete();
            return false;
        }
    }

    public static C0016af c(String str) {
        C0547v8 c0547v8 = C0547v8.a;
        try {
            URLConnection openConnection = new URL("https://omoda-c5-launcher.ru/api/apps?".concat(L4.y0(L4.z0(AbstractC0348nb.N("access=1"), a(str)), "&", null, null, null, 62))).openConnection();
            AbstractC0348nb.p(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setRequestProperty("Accept", "application/json");
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    Log.w("ApiClient", "fetchApps: HTTP " + responseCode);
                    return new C0016af(Boolean.FALSE, c0547v8);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                AbstractC0348nb.q(inputStream, "getInputStream(...)");
                JSONObject jSONObject = new JSONObject(AbstractC0554vf.m(new BufferedReader(new InputStreamReader(inputStream, AbstractC0186h4.a), 8192)));
                boolean optBoolean = jSONObject.optBoolean("licensed", false);
                JSONArray optJSONArray = jSONObject.optJSONArray("apps");
                if (optJSONArray == null) {
                    return new C0016af(Boolean.valueOf(optBoolean), c0547v8);
                }
                ArrayList arrayList = new ArrayList();
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    RemoteApp.Companion companion = RemoteApp.Companion;
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    AbstractC0348nb.q(jSONObject2, "getJSONObject(...)");
                    arrayList.add(companion.fromJson(jSONObject2));
                }
                Log.d("ApiClient", "fetchApps: licensed=" + optBoolean + ", " + arrayList.size() + " apps");
                return new C0016af(Boolean.valueOf(optBoolean), arrayList);
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            Log.e("ApiClient", "fetchApps failed", e);
            return new C0016af(Boolean.FALSE, c0547v8);
        }
    }

    public static String d(String str, AbstractList abstractList) {
        try {
            String y0 = L4.y0(abstractList, "&", null, null, null, 62);
            Charset charset = AbstractC0186h4.a;
            byte[] bytes = y0.getBytes(charset);
            AbstractC0348nb.q(bytes, "getBytes(...)");
            URLConnection openConnection = new URL(str).openConnection();
            AbstractC0348nb.p(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            try {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    outputStream.write(bytes);
                    C6.c(outputStream, null);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (200 <= responseCode && responseCode < 300) {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        AbstractC0348nb.q(inputStream, "getInputStream(...)");
                        return AbstractC0554vf.m(new BufferedReader(new InputStreamReader(inputStream, charset), 8192));
                    }
                    Log.w("ApiClient", "postForm " + str + ": HTTP " + responseCode);
                    return null;
                } finally {
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            AbstractC0407pi.m(e, AbstractC0407pi.l("postForm ", str, " failed: "), "ApiClient");
            return null;
        }
    }

    public static String e(String str) {
        String str2;
        if (!Si.P(str, "https://omoda-c5-launcher.ru/api")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(Si.K(str, '?', false, 2) >= 0 ? "&" : "?");
        try {
            str2 = "lang=".concat(C0255jm.a());
        } catch (Exception unused) {
            str2 = null;
        }
        sb.append(L4.y0(Z2.W(new String[]{"version=2.5.2", str2}), "&", null, null, null, 62));
        return sb.toString();
    }
}
