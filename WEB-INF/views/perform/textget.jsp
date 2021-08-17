<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="com.google.cloud.vision.v1.ImageAnnotatorClient" %>
<%@ page import="com.google.cloud.vision.v1.AnnotateImageRequest" %>
<%@ page import="com.google.cloud.vision.v1.AnnotateImageResponse" %>
<%@ page import="com.google.cloud.vision.v1.BatchAnnotateImagesResponse" %>
<%@ page import="com.google.cloud.vision.v1.Feature" %>
<%@ page import="com.google.cloud.vision.v1.Feature.Type" %>
<%@ page import="com.google.cloud.vision.v1.EntityAnnotation" %>
<%@ page import="com.google.cloud.vision.v1.Image" %>
<%@ page import="com.google.protobuf.ByteString" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
 
<%
// 이미지 파일을 읽는 부분이다. FileInputStream은 자바 자체의 기능이지만 ByteString이라는 타입은 구글 API에서 제공하는 것 같고 이 형식으로 이미지를 읽는다.
String imageFilePath = "http://www.kopis.or.kr/upload/pfmPoster/PF_PF132236_160704_142630.gif";
ByteString imgBytes = ByteString.readFrom(new FileInputStream(imageFilePath));

// 서버로 분석 요청을 보내기 위해 AnnotateImageRequest라는 객체를 생성하는 부분이다. ArrayList로 만든건 여러개의 이미지를 한번의 요청으로 처리할 수도 있어서 그런 것 같지만 예제에서는 1개의 이미지 파일이니 큰 의미 없다.
// TEXT_DETECTION은 일반적인 사진에서 이미지를 추출하기 위한 타입이고 다른 타입도 있다. 예를 들어 DOCUMENT_TEXT_DETECTION으로 바꿔주면 책처럼 밀집된 문서에 더 알맞도록 최적화된다.
List<AnnotateImageRequest> requests = new ArrayList<>();
Image img = Image.newBuilder().setContent(imgBytes).build();
Feature feat = Feature.newBuilder().setType(Type.TEXT_DETECTION).build();
AnnotateImageRequest req = AnnotateImageRequest.newBuilder().addFeatures(feat).setImage(img).build();
requests.add(req);

// 만들어진 AnnotateImageRequest를 클라이언트 요청에 담아 보내서 Response 객체를 받아오는 부분이다. 
try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
BatchAnnotateImagesResponse resp = client.batchAnnotateImages(requests);
List<AnnotateImageResponse> responses = resp.getResponsesList();

// 1개의 이미지만 넣었기 때문에 response도 하나이고, 따라서 for문은 별 의미는 없다.
for (AnnotateImageResponse res : responses) {
if (res.hasError()) {
out.println(res.getError().getMessage());
return;
}
// Response 객체에 담겨져 온 분석 결과 (이미지 내의 텍스트) 가 여기서 출력된다.
out.println("Text : ");
out.println(res.getTextAnnotationsList().get(0).getDescription());
}
} catch(Exception e) {
e.printStackTrace();
}
%>


</body>
</html>