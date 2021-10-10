package java0.nio01.netty;

import okhttp3.*;

import java.util.Map;
import java.util.concurrent.TimeUnit;

public class HttpUtil {
    private static final OkHttpClient client = new OkHttpClient.Builder()
            .connectTimeout(5, TimeUnit.SECONDS)
            .writeTimeout(5, TimeUnit.SECONDS)
            .readTimeout(5, TimeUnit.SECONDS)
            .build();

    public static String get(String url, Map<String, String> header) {
        Request.Builder request = new Request.Builder().url(url).get();
        if (header != null && !header.isEmpty()) {
            for (Map.Entry<String, String> entry : header.entrySet()) {
                request.addHeader(entry.getKey(),entry.getValue());
            }
        }
        try (Response response = client.newCall(request.build()).execute()) {
            ResponseBody res = response.body();
            return res.string();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
