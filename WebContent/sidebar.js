document.writeln("<!DOCTYPE html>");
document.writeln("<html>");
document.writeln("<head>");
document.writeln("  <meta charset=\'UTF-8\'>");
document.writeln("    <link rel=\'stylesheet\' href=\'css/sidebar.css\' media=\'screen\' type=\'text/css\' />");
document.writeln("		<script type=\'text/javascript\'>");
document.writeln("window.onload=function(){");
document.writeln("var oDiv=document.getElementById(\'sidebar\');");
document.writeln("");
document.writeln("var timer;");
document.writeln("");
document.writeln("oDiv.onmouseover=function(){");
document.writeln("//startMove(10,0);speed,end");
document.writeln("startMove(0);");
document.writeln("");
document.writeln("//这里稍作优化，原来传入两个参数改为一个参数");
document.writeln("};");
document.writeln("oDiv.onmouseout=function(){");
document.writeln("//startMove(-10,-250);");
document.writeln("startMove(-250);");
document.writeln("}");
document.writeln("");
document.writeln("function startMove(end){");
document.writeln("");
document.writeln("/*var oDiv=document.getElementById(\'sidebar\');*/");
document.writeln("clearInterval(timer);");
document.writeln("timer=setInterval(function(){");
document.writeln("var speed=0;");
document.writeln("//从-140到0,速度为正，从0到-140，速度为负");
document.writeln("");
document.writeln("if(oDiv.offsetLeft>end){");
document.writeln("speed=-10;");
document.writeln("}else{");
document.writeln("speed=10;");
document.writeln("}");
document.writeln("if(oDiv.offsetLeft==end){");
document.writeln("clearInterval(timer);");
document.writeln("}else{");
document.writeln("oDiv.style.left=oDiv.offsetLeft+speed+\'px\';");
document.writeln("}");
document.writeln("");
document.writeln("");
document.writeln("},30);");
document.writeln("}");
document.writeln("}");
document.writeln("</script>");
document.writeln("</head>");
document.writeln("");
document.writeln("");
document.writeln("<body>");
document.writeln("");
document.writeln("  <link href=\'http://fonts.googleapis.com/css?family=Open+Sans\' rel=\'stylesheet\' type=\'text/css\'>");
document.writeln("<link href=\'http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\' rel=\'stylesheet\'>");
document.writeln("");
document.writeln("<div id=\'sidebar\'>");
document.writeln("  <h1 class=\'h1sb\'><i class=\'fa fa-bars push\'></i>小酒窩 <span class=\'color\'>Menu</span></h1>");
document.writeln("    <ul>");
document.writeln("	<li><a href=\'/final/goods?search=百富\'><i class=\'fa fa-glass push\'></i>百富<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("     <ul class=\'sub-menu\'>");
document.writeln("        <li><a href=\'/final/goods?search=百富12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("        <li><a href=\'/final/goods?search=百富14年\'>14年</a><span class=\'hover\'></span></li>");
document.writeln("       <li><a href=\'/final/goods?search=百富17年\'>17年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("	</li>");
document.writeln("    <li><a href=\'/final/goods?search=麥卡倫\'><i class=\'fa fa-glass push\'></i>麥卡倫<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("      <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=麥卡倫12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=麥卡倫15年\'>15年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=麥卡倫18年\'>18年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("    </li>");
document.writeln("    <li><a href=\'/final/goods?search=蘇格登\'><i class=\'fa fa-glass push\'></i>蘇格登<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("     <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=蘇格登12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=蘇格登15年\'>15年</a><span class=\'hover\'></span></li>");
document.writeln("        <li><a href=\'/final/goods?search=蘇格登18年\'>18年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("	</li>");
document.writeln("    <li><a href=\'/final/goods?search=格蘭傑\'><i class=\'fa fa-glass push\'></i>格蘭傑<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("        <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭傑經典\'>經典</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭傑12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("		   <li><a href=\'/final/goods?search=格蘭傑18年\'>18年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("    </li>");
document.writeln("    <li><a href=\'/final/goods?search=格蘭利威\'><i class=\'fa fa-glass push\'></i>格蘭利威<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("        <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭利威12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭利威15年\'>15年</a><span class=\'hover\'></span></li>");
document.writeln("		   <li><a href=\'/final/goods?search=格蘭利威18年\'>18年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("    </li>");
document.writeln("	<li><a href=\'/final/goods?search=格蘭菲迪\'><i class=\'fa fa-glass push\'></i>格蘭菲迪<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("     <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭菲迪12年\'>12年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭菲迪15年\'>15年</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=格蘭菲迪18年\'>18年</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("	</li>");
document.writeln("	<li><a href=\'/final/goods?search=約翰走路\'><i class=\'fa fa-glass push\'></i>約翰走路<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("     <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=約翰走路藍牌\'>藍牌</a><span class=\'hover\'></span></li>");
document.writeln("        <li><a href=\'/final/goods?search=約翰走路綠牌\'>綠牌</a><span class=\'hover\'></span></li>");
document.writeln("       <li><a href=\'/final/goods?search=約翰走路黑牌\'>黑牌</a><span class=\'hover\'></span></li>");
document.writeln("	   <li><a href=\'/final/goods?search=約翰走路金牌\'>金牌</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("	<li><a href=\'/final/goods?search=軒尼詩\'><i class=\'fa fa-glass push\'></i>Hennessy<i class=\'fa fa-angle-right\'></i></a><span class=\'hover\'></span>");
document.writeln("     <ul class=\'sub-menu\'>");
document.writeln("         <li><a href=\'/final/goods?search=XO\'>XO</a><span class=\'hover\'></span></li>");
document.writeln("         <li><a href=\'/final/goods?search=VSOP\'>VSOP</a><span class=\'hover\'></span></li>");
document.writeln("      </ul>");
document.writeln("	</li>");
document.writeln("	</li>");
document.writeln("  </ul>");
document.writeln(" <form class=\"searchform\" method=\"get\" action=\"goods\">");
document.writeln("	<input class=\"searchfield\" type=\"text\" value=\"\" name=\"search\" onfocus=\"if (this.value == \'Search...\') {this.value = \'\';}\" onblur=\"if (this.value == \'\') {this.value = \'Search...\';}\">");
document.writeln("	<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><input class=\"searchbutton\" type=\"submit\" value=\"Go\"></font></font>");
document.writeln("	</form>");
document.writeln("  <img src=\'css/image/menuwine.png\' class=\'sbimg\'>");
document.writeln("  ");
document.writeln("</div>");
document.writeln("");
document.writeln("		");
document.writeln("");
document.writeln("  <script src=\'js/jquery.js\'></script>");
document.writeln("");
document.writeln("  <script src=\'js/index.js\'></script>");
document.writeln("");
document.writeln("</body>");
document.writeln("");
document.writeln("</html>");