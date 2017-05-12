package com.example.ui;

import javax.servlet.annotation.WebServlet;

import com.vaadin.annotations.Theme;
import com.vaadin.annotations.VaadinServletConfiguration;
import com.vaadin.server.VaadinRequest;
import com.vaadin.server.VaadinServlet;
import com.vaadin.server.VaadinSession;
import com.vaadin.ui.Button;
import com.vaadin.ui.Label;
import com.vaadin.ui.UI;
import com.vaadin.ui.VerticalLayout;

/**
 * @author alejandro@vaadin.com
 **/
@Theme("mytheme")
public class ExampleVaadinUI extends UI {

    private static final long serialVersionUID = -1792496408357996035L;

    @Override
    protected void init(VaadinRequest request) {
        VaadinSession.getCurrent().getSession().setMaxInactiveInterval(-1);
        VerticalLayout layout = new VerticalLayout();
        setContent(layout);

        Button button = new Button("Click me");
        layout.addComponent(button);

        button.addClickListener(e -> layout.addComponent(new Label("Thanks for clicking!")));

    }

    @WebServlet(urlPatterns = { "/example-ui/*", "/VAADIN/*" }, name = "ExampleVaadinUIServlet", asyncSupported = true)
    @VaadinServletConfiguration(ui = ExampleVaadinUI.class, productionMode = false)
    public static class MyUIServlet extends VaadinServlet {

        private static final long serialVersionUID = -4995369031697246604L;
    }

}
