package defpackage;

import android.util.Log;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: ab, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0012ab implements X509TrustManager {
    public final /* synthetic */ X509TrustManager a;

    public C0012ab(X509TrustManager x509TrustManager) {
        this.a = x509TrustManager;
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        AbstractC0348nb.r(x509CertificateArr, "chain");
        AbstractC0348nb.r(str, "authType");
        this.a.checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        AbstractC0348nb.r(x509CertificateArr, "chain");
        AbstractC0348nb.r(str, "authType");
        try {
            this.a.checkServerTrusted(x509CertificateArr, str);
        } catch (CertificateException e) {
            for (Throwable th = e; th != null; th = th.getCause()) {
                if ((th instanceof CertificateNotYetValidException) || (th instanceof CertificateExpiredException)) {
                    Log.w("InsecureSslContext", "Cert date invalid (system clock likely wrong) — ignoring: " + e.getMessage());
                    return;
                }
            }
            throw e;
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        X509Certificate[] acceptedIssuers = this.a.getAcceptedIssuers();
        AbstractC0348nb.q(acceptedIssuers, "getAcceptedIssuers(...)");
        return acceptedIssuers;
    }
}
