FROM odoo:17.0
COPY ./addons /usr/lib/python3/dist-packages/odoo/addons/
# Instalar paquetes adicionales desde requirements.txt
COPY ./etc/requeriments.txt /tmp/requeriments.txt
RUN pip install --no-cache-dir -r /tmp/requeriments.txt
