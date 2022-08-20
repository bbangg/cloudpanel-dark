find /home/clp/htdocs/app/files/templates/Admin/layout.html.twig -type f -exec sed -i 's/\/admin\/style-dark\.css/\/admin\/style\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Admin/layout.html.twig -type f -exec sed -i 's/\/css\/style-dark\.css/\/css\/style\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Admin/Partial/header.html.twig -type f -exec sed -i 's/logo-dark\.svg/logo\.svg/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Login/layout.html.twig -type f -exec sed -i 's/\/frontend\/login-dark\.css/\/frontend\/login\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Login/layout.html.twig -type f -exec sed -i 's/\/css\/style-dark\.css/\/css\/style\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/layout.html.twig -type f -exec sed -i 's/\/css\/style-dark\.css/\/css\/style\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Partial/header.html.twig -type f -exec sed -i 's/logo-dark\.svg/logo\.svg/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Dashboard/index.html.twig -type f -exec sed -i 's/dashboard-dark\.css/dashboard\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Dashboard/index.html.twig -type f -exec sed -i 's/chart\: { backgroundColor: \"#353535\",/chart\: {/g' {} \;