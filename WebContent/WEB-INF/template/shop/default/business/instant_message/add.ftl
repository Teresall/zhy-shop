[#escape x as x?html]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>${message("shop.business.instantMessage.add")}[#if showPowered][/#if]</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="${base}/resources/shop/${theme}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/shop/${theme}/css/business.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/shop/${theme}/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/shop/${theme}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/resources/shop/${theme}/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/resources/shop/${theme}/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/shop/${theme}/js/input.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $inputForm = $("#inputForm");
	
	[@flash_message /]
	
	// 表单验证
	$inputForm.validate({
		rules: {
			name: "required",
			type: "required",
			account: "required",
			workingHours: "required",
			order: "digits"
		}
	});

});
</script>
</head>
<body>
	[#assign current = "instantMessageList" /]
	[#include "/shop/${theme}/include/header.ftl" /]
	<div class="container business">
		<div class="row">
		[#include "/shop/${theme}/business/include/menu.ftl" /]
			<div class="span10">
				<div class="list clearfix">
					<div class="breadcrumb">
						${message("shop.business.instantMessage.add")}
					</div>
					<form id="inputForm" action="save.jhtml" method="post">
						<table class="input">
							<tr>
								<th>
									<span class="requiredField">*</span>${message("InstantMessage.name")}:
								</th>
								<td>
									<input type="text" name="name" class="text" maxlength="200" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("InstantMessage.type")}:
								</th>
								<td>
									<select name="type">
										[#list types as type]
											<option value="${type}">${message("InstantMessage.Type." + type)}</option>
										[/#list]
									</select>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("InstantMessage.account")}:
								</th>
								<td>
									<input type="text"  name="account" class="text" maxlength="10" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("InstantMessage.workingHours")}:
								</th>
								<td>
									<textarea name="workingHours" class="text"></textarea>
								</td>
							</tr>
							<tr>
								<th>
									${message("InstantMessage.order")}:
								</th>
								<td>
									<input type="text" name="order" class="text" maxlength="200" />
								</td>
							</tr>
							<tr>
								<th>
									&nbsp;
								</th>
								<td>
									<input type="submit" class="button" value="${message("shop.common.submit")}" />
									<input type="button" class="button" value="${message("shop.common.back")}" onclick="history.back(); return false;" />
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	[#include "/shop/${theme}/include/footer.ftl" /]		
</body>
</html>
[/#escape]