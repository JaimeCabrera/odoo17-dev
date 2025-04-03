# Usar la imagen base de Odoo 17
FROM odoo:17

# Copiar el archivo de configuración de Odoo
COPY ./odoo.conf /etc/odoo/odoo.conf

# Copiar el archivo de requisitos de desarrollo
COPY ./etc/requirements.txt /tmp/requirements.txt
COPY ./requirements-dev.txt /tmp/requirements-dev.txt
#COPY ./etc/requeriments.txt /tmp/requeriments.txt

# Instalar los requisitos de desarrollo
RUN pip install -r /tmp/requirements.txt
RUN pip install -r /tmp/requirements-dev.txt

#COPY ./etc/requeriments.txt /tmp/requeriments.txt
#pip install --no-cache-dir -r /tmp/requeriments.txt

# Exponer el puerto 8069 para acceder a Odoo
EXPOSE 8069

# Comando para iniciar Odoo en modo desarrollo para recargar automáticamente los cambios
CMD ["odoo", "--dev=all", "-c", "/etc/odoo/odoo.conf"]