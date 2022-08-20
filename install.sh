# backup for bootstrap.min.css
cp /home/clp/htdocs/app/files/public/assets/css/bootstrap.min.css /home/clp/htdocs/app/files/public/assets/css/bootstrap.min.css.bak

# move fles
cp css/admin/style-dark.css /home/clp/htdocs/app/files/public/assets/css/admin/style-dark.css
cp css/frontend/dashboard-dark.css /home/clp/htdocs/app/files/public/assets/css/frontend/dashboard-dark.css
cp css/bootstrap.min.css /home/clp/htdocs/app/files/public/assets/css/bootstrap.min.css
cp css/style-dark.css /home/clp/htdocs/app/files/public/assets/css/style-dark.css
cp images/logo-dark.svg /home/clp/htdocs/app/files/public/assets/images/logo-dark.svg

find /home/clp/htdocs/app/files/templates/Admin/layout.html.twig -type f -exec sed -i 's/\/admin\/style\.css/\/admin\/style-dark\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Admin/layout.html.twig -type f -exec sed -i 's/\/css\/style\.css/\/css\/style-dark\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Admin/Partial/header.html.twig -type f -exec sed -i 's/logo\.svg/logo-dark\.svg/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Login/layout.html.twig -type f -exec sed -i 's/\/css\/style\.css/\/css\/style-dark\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/layout.html.twig -type f -exec sed -i 's/\/css\/style\.css/\/css\/style-dark\.css/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Partial/header.html.twig -type f -exec sed -i 's/logo\.svg/logo-dark\.svg/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Dashboard/index.html.twig -type f -exec sed -i 's/dashboard\.css/dashboard-dark\.css/g' {} \;

# avoid duplicate replacement
find /home/clp/htdocs/app/files/templates/Frontend/Dashboard/index.html.twig -type f -exec sed -i 's/chart\: { backgroundColor: \"#353535\",/chart\: {/g' {} \;
find /home/clp/htdocs/app/files/templates/Frontend/Dashboard/index.html.twig -type f -exec sed -i 's/chart\: {/chart\: { backgroundColor: \"#353535\",/g' {} \;

# removing cache
rm /home/clp/htdocs/app/files/var/cache/prod/twig/* -rf