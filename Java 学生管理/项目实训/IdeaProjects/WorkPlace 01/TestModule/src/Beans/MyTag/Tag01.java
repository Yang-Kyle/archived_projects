package Beans.MyTag;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class Tag01 extends SimpleTagSupport {
    private String format;

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) throws IOException {
        this.format = format;
    }

    @Override
    public void doTag() throws JspException, IOException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm: ss");
        //获取输出流
        JspContext pcdx = getJspContext();
        JspWriter out = pcdx.getOut();
        out.println(sdf.format(date));
    }
}