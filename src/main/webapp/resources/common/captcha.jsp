<%@ page contentType="image/jpeg" pageEncoding="UTF-8"
         import="javax.imageio.ImageIO"
         import="java.awt.*"
         import="java.awt.image.BufferedImage"
         import="java.io.OutputStream"
         import="java.util.Random"
        %>
<%@ page import="java.util.Date" %>
<%!
    Random random = new Random(new Date().getTime());

    Color getRandColor(int min, int max) {
        //给定范围获得随机颜色
        min = min < 0 ? 0 : min ;
        max = max > 255 ? 255 : max ;
        int r = min + random.nextInt(max - min);
        int g = min + random.nextInt(max - min);
        int b = min + random.nextInt(max - min);
        return new Color(r, g, b);
    }
%>
<%
    try {
        response.setHeader("Cache-Control", "no-cache");

        // 在内存中创建图象
        int width = 80, height = 30;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        // 获取图形上下文
        Graphics g = image.getGraphics();

    //    Random random = new Random(new Date().getTime());

        // 设定背景色
        g.setColor(getRandColor(200, 250));
        g.fillRect(0, 0, width, height);

        //设定字体
        g.setFont(new Font("Times New Roman", Font.BOLD, 25));

        //画边框
        //g.setColor(new Color());
        //g.drawRect(0,0,width-1,height-1);

        // 随机产生干扰线，使图象中的认证码不易被其它程序探测到。
        g.setColor(getRandColor(100, 150));
        for (int i = 0; i < 30; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(20);
            int yl = random.nextInt(20);
            g.drawLine(x, y, x + xl, y + yl);
        }

        String str = "23456789abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ";
        String captcha = "";
        for (int i = 0; i < 4; i++) {
            //	纯数字验证码
            //	String s=String.valueOf(random.nextInt(10)) ;

            String s = String.valueOf(str.charAt(random.nextInt(str.length() - 1)));
            captcha += s;

            // 将认证码显示到图象中,调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成.
            g.setColor(getRandColor(0,150));
            g.drawString(s, 15 * i + 10, 25);
        }
        // 将认证码存入session
        request.getSession().setAttribute("captcha", captcha);

        // 图象生效
        g.dispose();

        // 输出图象到页面
        OutputStream os = response.getOutputStream();
        ImageIO.write(image, "JPEG", os);
        os.close();
        out.clear();
        out = pageContext.pushBody();
    } catch (Exception e) {
    }
%>

