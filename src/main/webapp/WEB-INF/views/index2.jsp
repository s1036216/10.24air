<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>AirBnb</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://rawgithub.com/WickyNilliams/headroom.js/gh-pages/assets/styles/main.css" />
<link rel="stylesheet" href="${path.css}/main.css" />
<link rel="shortcut icon" href="${path.img}/air-fabicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${path.js}/app.js"></script>
<script src="${path.js}/template.js"></script>
<script src="${path.js}/bongki.js"></script>
<script src="${path.js}/heekyung.js"></script>
<script src="${path.js}/jiwon.js"></script>
<script src="${path.js}/yongju.js"></script>
<script src="${path.js}/Headroom.js"></script>
<script src="${path.js}/jQuery.headroom.js"></script>



<body>
<p><!-- 페이징 그리기 -->
    <tr>
        <td height="30" align="center" valign="center" colspan="50" style="border:1px #CCCCCC solid;">
<script>
    $pageNum = ($_GET['page']) ? $_GET['page'] : 1;     //page : default - 1
    $list = ($_GET['list']) ? $_GET['list'] : 50; //page : default - 50
 
 
    $b_pageNum_list = 10; //블럭에 나타낼 페이지 번호 갯수
    $block = ceil($pageNum/$b_pageNum_list); //현재 리스트의 블럭 구하기
     
 
    $b_start_page = ( ($block - 1) * $b_pageNum_list ) + 1; //현재 블럭에서 시작페이지 번호
    $b_end_page = $b_start_page + $b_pageNum_list - 1; //현재 블럭에서 마지막 페이지 번호
 
    $total_page =  ceil($buyTotalCount/$list); //총 페이지 수
 
    if ($b_end_page > $total_page) 
        $b_end_page = $total_page;
     
 
    if($pageNum <= 1){</script>>
        <font size=2  color=red>처음</font>
        <script>}else{</script>
            <font size=2><a href="/yw/buypaging.php?year=<?=$year?>&month=<?=$month?>&day=<?=$day?>&page=&list=<?=$list?>">처음</a></font>
        <script>}
 
 
 
    if($block <=1){</script>
        <font> </font>
    <script>}else{</script>
        <font size=2><a href="/yw/buypaging.php?year=<?=$year?>&month=<?=$month?>&day=<?=$day?>&page=<?=$b_start_page-1?>&list=<?=$list?>">이전</a></font>
    <script>
 
         
 
 
 
    for($j = $b_start_page; $j <=$b_end_page; $j++)
    {
 
        if($pageNum == $j)
        {</script>
            <font size=2 color=red><script>=$j</script></font>
        <script>}
        else{</script>
            <font size=2><a href="/yw/buypaging.php?year=<?=$year?>&month=<?=$month?>&day=<?=$day?>&page=<?=$j?>&list=<?=$list?>"><?=$j?></a></font>
          <script>
          }             
 
    }
 
 
 
    $total_block = ceil($total_page/$b_pageNum_list);
 
    if($block >= $total_block){</script>
    <font> </font>
    <script>else{</script>    
        <font size=2><a href="/yw/buypaging.php?year=<?=$year?>&month=<?=$month?>&day=<?=$day?>&page=<?=$b_end_page+1?>&list=<?=$list?>">다음</a></font>
    <script>}
 
 
 
    if($pageNum >= $total_page){</script>
 
            <font size=2 color=red>마지막</font>
         
        <script>}else{</script>
            <font size=2><a href="/yw/buypaging.php?year=<?=$year?>&month=<?=$month?>&day=<?=$day?>&page=<?=$total_page?>&list=<?=$list?>">마지막</a></font>
 
       <script>}
    </script>
    </td>
 
    </tr>
</p>

</body>
        
    
</html>