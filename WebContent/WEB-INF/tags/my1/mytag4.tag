<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="num1"  required="true"%> <!-- required="true"면 속성 num1이 꼭 포함되어야한다 -->
<%@ attribute name="num2" required="true"%>
<div>
${num1+num2}
</div>