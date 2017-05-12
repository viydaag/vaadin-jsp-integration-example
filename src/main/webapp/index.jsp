<html>
    <head>
        <meta>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
            integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        </meta>
    </head>
    <body>
        <div class="container">
            <h2>Vaadin-JSP integration example</h2>
            <p>
                This is a standard JSP web page. The following text is generated directly from the JSP file:
            </p>
            <div class="alert alert-success">
                <%
                    String htmlResponse = "Local time from server: " + java.time.LocalDateTime.now();
                    out.println(htmlResponse);
                %>
            </div>
            <p>
                And this is the embedded Vaadin UI:
            </p>
            <div id="example-vaadin-ui" class="v-app" style="height: 320px">
                <div class="v-app-loading"></div>
                <noscript>
                    You have to enable javascript in your browser to use an application built with Vaadin.
                </noscript>
            </div>
        </div>

        <script type="text/javascript" src="VAADIN/vaadinBootstrap.js"></script>

        <script type="text/javascript">//<![CDATA[
        
            if (!window.vaadin)
                alert("Failed to load the bootstrap JavaScript: "+ "VAADIN/vaadinBootstrap.js");
              
            vaadin.initApplication("example-vaadin-ui", {
			    "theme": "mytheme",
			    "versionInfo": {
			        "vaadinVersion": "8.0.5",
			        "atmosphereVersion": "2.4.5.vaadin2"
			    },
			    "widgetset": "com.vaadin.DefaultWidgetSet",
			    "widgetsetReady": true,
			    "comErrMsg": {
			        "caption": "Communication problem",
			        "message": "Take note of any unsaved data, and <u>click here</u> or press ESC to continue.",
			        "url": null
			    },
			    "authErrMsg": {
			        "caption": "Authentication problem",
			        "message": "Take note of any unsaved data, and <u>click here</u> or press ESC to continue.",
			        "url": null
			    },
			    "sessExpMsg": {
			        "caption": "Session Expired",
			        "message": "Take note of any unsaved data, and <u>click here</u> or press ESC key to continue.",
			        "url": null
			    },
			    "vaadinDir": "VAADIN/",
			    "debug": true,
			    "standalone": false,
			    "heartbeatInterval": 300,
			    "serviceUrl": "example-ui/",
			    "browserDetailsUrl": "example-ui/",
			    "contextRootUrl": "example-ui/",
			});
        //]]></script>

    </body>
</html>
