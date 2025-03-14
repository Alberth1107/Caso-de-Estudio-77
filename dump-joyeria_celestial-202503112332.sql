PGDMP  2                     }            joyeria_celestial    17.2    17.2 o    O           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            R           1262    33216    joyeria_celestial    DATABASE     �   CREATE DATABASE joyeria_celestial WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
 !   DROP DATABASE joyeria_celestial;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            S           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    33521    clientes    TABLE     �   CREATE TABLE public.clientes (
    numero_cliente integer NOT NULL,
    nombre_razon_social character varying(100),
    informacion_contacto text,
    historial_compras text,
    preferencias_diseno text
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false    4            �            1259    33526    clientes_numero_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_numero_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.clientes_numero_cliente_seq;
       public               postgres    false    4    217            T           0    0    clientes_numero_cliente_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.clientes_numero_cliente_seq OWNED BY public.clientes.numero_cliente;
          public               postgres    false    218            �            1259    33527    comunicacion    TABLE     �   CREATE TABLE public.comunicacion (
    id integer NOT NULL,
    tipo_comunicacion character varying(50),
    mensaje text,
    destinatario text
);
     DROP TABLE public.comunicacion;
       public         heap r       postgres    false    4            �            1259    33532    comunicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comunicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comunicacion_id_seq;
       public               postgres    false    4    219            U           0    0    comunicacion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comunicacion_id_seq OWNED BY public.comunicacion.id;
          public               postgres    false    220            �            1259    33533    diseno_gema    TABLE     b   CREATE TABLE public.diseno_gema (
    diseno_id integer NOT NULL,
    gema_id integer NOT NULL
);
    DROP TABLE public.diseno_gema;
       public         heap r       postgres    false    4            �            1259    33536    diseno_metal    TABLE     d   CREATE TABLE public.diseno_metal (
    diseno_id integer NOT NULL,
    metal_id integer NOT NULL
);
     DROP TABLE public.diseno_metal;
       public         heap r       postgres    false    4            �            1259    33539    disenos    TABLE     �  CREATE TABLE public.disenos (
    codigo_diseno integer NOT NULL,
    descripcion text,
    tipo_joya character varying(50),
    metal_principal character varying(50),
    gemas_utilizadas text,
    dimensiones character varying(50),
    peso_estimado numeric,
    bocetos text,
    renders_3d text,
    planos_tecnicos text,
    estado_diseno character varying(50),
    fecha_creacion date DEFAULT CURRENT_DATE
);
    DROP TABLE public.disenos;
       public         heap r       postgres    false    4            �            1259    33545    disenos_codigo_diseno_seq    SEQUENCE     �   CREATE SEQUENCE public.disenos_codigo_diseno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.disenos_codigo_diseno_seq;
       public               postgres    false    4    223            V           0    0    disenos_codigo_diseno_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.disenos_codigo_diseno_seq OWNED BY public.disenos.codigo_diseno;
          public               postgres    false    224            �            1259    33546    facturacion    TABLE     �   CREATE TABLE public.facturacion (
    pedido_tasacion integer NOT NULL,
    fecha_factura date NOT NULL,
    importe numeric,
    estado_factura character varying(50)
);
    DROP TABLE public.facturacion;
       public         heap r       postgres    false    4            �            1259    33551    gemas    TABLE     >  CREATE TABLE public.gemas (
    codigo_gema integer NOT NULL,
    tipo character varying(50),
    talla character varying(50),
    color character varying(50),
    claridad character varying(50),
    quilates numeric,
    origen character varying(50),
    certificado_autenticidad text,
    precio_unitario numeric
);
    DROP TABLE public.gemas;
       public         heap r       postgres    false    4            �            1259    33556    gemas_codigo_gema_seq    SEQUENCE     �   CREATE SEQUENCE public.gemas_codigo_gema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.gemas_codigo_gema_seq;
       public               postgres    false    4    226            W           0    0    gemas_codigo_gema_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.gemas_codigo_gema_seq OWNED BY public.gemas.codigo_gema;
          public               postgres    false    227            �            1259    33557    informes    TABLE     n   CREATE TABLE public.informes (
    tipo_informe character varying(50) NOT NULL,
    contenido_informe text
);
    DROP TABLE public.informes;
       public         heap r       postgres    false    4            �            1259    33562 	   marketing    TABLE     d   CREATE TABLE public.marketing (
    campania integer NOT NULL,
    presencia_redes_sociales text
);
    DROP TABLE public.marketing;
       public         heap r       postgres    false    4            �            1259    33567    marketing_campania_seq    SEQUENCE     �   CREATE SEQUENCE public.marketing_campania_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.marketing_campania_seq;
       public               postgres    false    4    229            X           0    0    marketing_campania_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.marketing_campania_seq OWNED BY public.marketing.campania;
          public               postgres    false    230            �            1259    33568    metales    TABLE     �   CREATE TABLE public.metales (
    codigo_metal integer NOT NULL,
    tipo character varying(50),
    pureza numeric,
    peso_stock numeric,
    precio_gramo numeric
);
    DROP TABLE public.metales;
       public         heap r       postgres    false    4            �            1259    33573    metales_codigo_metal_seq    SEQUENCE     �   CREATE SEQUENCE public.metales_codigo_metal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.metales_codigo_metal_seq;
       public               postgres    false    4    231            Y           0    0    metales_codigo_metal_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.metales_codigo_metal_seq OWNED BY public.metales.codigo_metal;
          public               postgres    false    232            �            1259    33574    pedidos    TABLE       CREATE TABLE public.pedidos (
    numero_pedido integer NOT NULL,
    cliente integer,
    tipo_pedido character varying(50),
    diseno_solicitado integer,
    materiales_utilizados text,
    fecha_pedido date,
    fecha_entrega date,
    estado_pedido character varying(50)
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false    4            �            1259    33579    pedidos_numero_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_numero_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pedidos_numero_pedido_seq;
       public               postgres    false    4    233            Z           0    0    pedidos_numero_pedido_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pedidos_numero_pedido_seq OWNED BY public.pedidos.numero_pedido;
          public               postgres    false    234            �            1259    33580 
   produccion    TABLE     �   CREATE TABLE public.produccion (
    orden_produccion integer NOT NULL,
    pedido integer,
    diseno integer,
    materiales_utilizados text,
    fecha_inicio date,
    fecha_fin date,
    operarios_asignados text,
    etapas_produccion text
);
    DROP TABLE public.produccion;
       public         heap r       postgres    false    4            �            1259    33585    produccion_orden_produccion_seq    SEQUENCE     �   CREATE SEQUENCE public.produccion_orden_produccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.produccion_orden_produccion_seq;
       public               postgres    false    235    4            [           0    0    produccion_orden_produccion_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.produccion_orden_produccion_seq OWNED BY public.produccion.orden_produccion;
          public               postgres    false    236            �            1259    33586    proveedores    TABLE     �   CREATE TABLE public.proveedores (
    numero_proveedor integer NOT NULL,
    nombre_razon_social character varying(100),
    tipo_materiales character varying(50),
    informacion_contacto text,
    certificaciones text
);
    DROP TABLE public.proveedores;
       public         heap r       postgres    false    4            �            1259    33591     proveedores_numero_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_numero_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.proveedores_numero_proveedor_seq;
       public               postgres    false    237    4            \           0    0     proveedores_numero_proveedor_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.proveedores_numero_proveedor_seq OWNED BY public.proveedores.numero_proveedor;
          public               postgres    false    238            �            1259    33592 
   tasaciones    TABLE     �   CREATE TABLE public.tasaciones (
    joya integer NOT NULL,
    fecha_tasacion date NOT NULL,
    tasador character varying(50),
    valor_joya numeric,
    criterios_tasacion text
);
    DROP TABLE public.tasaciones;
       public         heap r       postgres    false    4            �            1259    33597    transacciones    TABLE     �   CREATE TABLE public.transacciones (
    id_transaccion integer NOT NULL,
    fecha date,
    tipo_transaccion character varying(50),
    importe numeric,
    estado_transaccion character varying(50),
    descripcion text
);
 !   DROP TABLE public.transacciones;
       public         heap r       postgres    false    4            �            1259    33602     transacciones_id_transaccion_seq    SEQUENCE     �   CREATE SEQUENCE public.transacciones_id_transaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.transacciones_id_transaccion_seq;
       public               postgres    false    240    4            ]           0    0     transacciones_id_transaccion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNED BY public.transacciones.id_transaccion;
          public               postgres    false    241            �            1259    33603    vista_pedidos_resumen    MATERIALIZED VIEW       CREATE MATERIALIZED VIEW public.vista_pedidos_resumen AS
 SELECT p.numero_pedido,
    c.nombre_razon_social AS cliente_nombre,
    p.fecha_pedido,
    p.estado_pedido
   FROM (public.pedidos p
     JOIN public.clientes c ON ((p.cliente = c.numero_cliente)))
  WITH NO DATA;
 5   DROP MATERIALIZED VIEW public.vista_pedidos_resumen;
       public         heap m       postgres    false    233    233    233    233    217    217    4            f           2604    33746    clientes numero_cliente    DEFAULT     �   ALTER TABLE ONLY public.clientes ALTER COLUMN numero_cliente SET DEFAULT nextval('public.clientes_numero_cliente_seq'::regclass);
 F   ALTER TABLE public.clientes ALTER COLUMN numero_cliente DROP DEFAULT;
       public               postgres    false    218    217            g           2604    33747    comunicacion id    DEFAULT     r   ALTER TABLE ONLY public.comunicacion ALTER COLUMN id SET DEFAULT nextval('public.comunicacion_id_seq'::regclass);
 >   ALTER TABLE public.comunicacion ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219            h           2604    33748    disenos codigo_diseno    DEFAULT     ~   ALTER TABLE ONLY public.disenos ALTER COLUMN codigo_diseno SET DEFAULT nextval('public.disenos_codigo_diseno_seq'::regclass);
 D   ALTER TABLE public.disenos ALTER COLUMN codigo_diseno DROP DEFAULT;
       public               postgres    false    224    223            j           2604    33749    gemas codigo_gema    DEFAULT     v   ALTER TABLE ONLY public.gemas ALTER COLUMN codigo_gema SET DEFAULT nextval('public.gemas_codigo_gema_seq'::regclass);
 @   ALTER TABLE public.gemas ALTER COLUMN codigo_gema DROP DEFAULT;
       public               postgres    false    227    226            k           2604    33750    marketing campania    DEFAULT     x   ALTER TABLE ONLY public.marketing ALTER COLUMN campania SET DEFAULT nextval('public.marketing_campania_seq'::regclass);
 A   ALTER TABLE public.marketing ALTER COLUMN campania DROP DEFAULT;
       public               postgres    false    230    229            l           2604    33751    metales codigo_metal    DEFAULT     |   ALTER TABLE ONLY public.metales ALTER COLUMN codigo_metal SET DEFAULT nextval('public.metales_codigo_metal_seq'::regclass);
 C   ALTER TABLE public.metales ALTER COLUMN codigo_metal DROP DEFAULT;
       public               postgres    false    232    231            m           2604    33752    pedidos numero_pedido    DEFAULT     ~   ALTER TABLE ONLY public.pedidos ALTER COLUMN numero_pedido SET DEFAULT nextval('public.pedidos_numero_pedido_seq'::regclass);
 D   ALTER TABLE public.pedidos ALTER COLUMN numero_pedido DROP DEFAULT;
       public               postgres    false    234    233            n           2604    33753    produccion orden_produccion    DEFAULT     �   ALTER TABLE ONLY public.produccion ALTER COLUMN orden_produccion SET DEFAULT nextval('public.produccion_orden_produccion_seq'::regclass);
 J   ALTER TABLE public.produccion ALTER COLUMN orden_produccion DROP DEFAULT;
       public               postgres    false    236    235            o           2604    33754    proveedores numero_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN numero_proveedor SET DEFAULT nextval('public.proveedores_numero_proveedor_seq'::regclass);
 K   ALTER TABLE public.proveedores ALTER COLUMN numero_proveedor DROP DEFAULT;
       public               postgres    false    238    237            p           2604    33755    transacciones id_transaccion    DEFAULT     �   ALTER TABLE ONLY public.transacciones ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transacciones_id_transaccion_seq'::regclass);
 K   ALTER TABLE public.transacciones ALTER COLUMN id_transaccion DROP DEFAULT;
       public               postgres    false    241    240            3          0    33521    clientes 
   TABLE DATA           �   COPY public.clientes (numero_cliente, nombre_razon_social, informacion_contacto, historial_compras, preferencias_diseno) FROM stdin;
    public               postgres    false    217   g�       5          0    33527    comunicacion 
   TABLE DATA           T   COPY public.comunicacion (id, tipo_comunicacion, mensaje, destinatario) FROM stdin;
    public               postgres    false    219   !�       7          0    33533    diseno_gema 
   TABLE DATA           9   COPY public.diseno_gema (diseno_id, gema_id) FROM stdin;
    public               postgres    false    221   ��       8          0    33536    diseno_metal 
   TABLE DATA           ;   COPY public.diseno_metal (diseno_id, metal_id) FROM stdin;
    public               postgres    false    222   ��       9          0    33539    disenos 
   TABLE DATA           �   COPY public.disenos (codigo_diseno, descripcion, tipo_joya, metal_principal, gemas_utilizadas, dimensiones, peso_estimado, bocetos, renders_3d, planos_tecnicos, estado_diseno, fecha_creacion) FROM stdin;
    public               postgres    false    223   ʌ       ;          0    33546    facturacion 
   TABLE DATA           ^   COPY public.facturacion (pedido_tasacion, fecha_factura, importe, estado_factura) FROM stdin;
    public               postgres    false    225   Ӎ       <          0    33551    gemas 
   TABLE DATA           �   COPY public.gemas (codigo_gema, tipo, talla, color, claridad, quilates, origen, certificado_autenticidad, precio_unitario) FROM stdin;
    public               postgres    false    226   ��       >          0    33557    informes 
   TABLE DATA           C   COPY public.informes (tipo_informe, contenido_informe) FROM stdin;
    public               postgres    false    228   Ǝ       ?          0    33562 	   marketing 
   TABLE DATA           G   COPY public.marketing (campania, presencia_redes_sociales) FROM stdin;
    public               postgres    false    229   �       A          0    33568    metales 
   TABLE DATA           W   COPY public.metales (codigo_metal, tipo, pureza, peso_stock, precio_gramo) FROM stdin;
    public               postgres    false    231   c�       C          0    33574    pedidos 
   TABLE DATA           �   COPY public.pedidos (numero_pedido, cliente, tipo_pedido, diseno_solicitado, materiales_utilizados, fecha_pedido, fecha_entrega, estado_pedido) FROM stdin;
    public               postgres    false    233   ��       E          0    33580 
   produccion 
   TABLE DATA           �   COPY public.produccion (orden_produccion, pedido, diseno, materiales_utilizados, fecha_inicio, fecha_fin, operarios_asignados, etapas_produccion) FROM stdin;
    public               postgres    false    235   H�       G          0    33586    proveedores 
   TABLE DATA           �   COPY public.proveedores (numero_proveedor, nombre_razon_social, tipo_materiales, informacion_contacto, certificaciones) FROM stdin;
    public               postgres    false    237   e�       I          0    33592 
   tasaciones 
   TABLE DATA           c   COPY public.tasaciones (joya, fecha_tasacion, tasador, valor_joya, criterios_tasacion) FROM stdin;
    public               postgres    false    239   ��       J          0    33597    transacciones 
   TABLE DATA           z   COPY public.transacciones (id_transaccion, fecha, tipo_transaccion, importe, estado_transaccion, descripcion) FROM stdin;
    public               postgres    false    240   b�       ^           0    0    clientes_numero_cliente_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.clientes_numero_cliente_seq', 19, true);
          public               postgres    false    218            _           0    0    comunicacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.comunicacion_id_seq', 8, true);
          public               postgres    false    220            `           0    0    disenos_codigo_diseno_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.disenos_codigo_diseno_seq', 19, true);
          public               postgres    false    224            a           0    0    gemas_codigo_gema_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.gemas_codigo_gema_seq', 19, true);
          public               postgres    false    227            b           0    0    marketing_campania_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.marketing_campania_seq', 4, true);
          public               postgres    false    230            c           0    0    metales_codigo_metal_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.metales_codigo_metal_seq', 19, true);
          public               postgres    false    232            d           0    0    pedidos_numero_pedido_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pedidos_numero_pedido_seq', 13, true);
          public               postgres    false    234            e           0    0    produccion_orden_produccion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.produccion_orden_produccion_seq', 13, true);
          public               postgres    false    236            f           0    0     proveedores_numero_proveedor_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.proveedores_numero_proveedor_seq', 13, true);
          public               postgres    false    238            g           0    0     transacciones_id_transaccion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.transacciones_id_transaccion_seq', 9, true);
          public               postgres    false    241            r           2606    33618    clientes clientes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (numero_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 postgres    false    217            u           2606    33757    comunicacion comunicacion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comunicacion
    ADD CONSTRAINT comunicacion_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.comunicacion DROP CONSTRAINT comunicacion_pkey;
       public                 postgres    false    219            w           2606    33622    diseno_gema diseno_gema_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_pkey PRIMARY KEY (diseno_id, gema_id);
 F   ALTER TABLE ONLY public.diseno_gema DROP CONSTRAINT diseno_gema_pkey;
       public                 postgres    false    221    221            y           2606    33624    diseno_metal diseno_metal_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_pkey PRIMARY KEY (diseno_id, metal_id);
 H   ALTER TABLE ONLY public.diseno_metal DROP CONSTRAINT diseno_metal_pkey;
       public                 postgres    false    222    222            {           2606    33626    disenos disenos_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.disenos
    ADD CONSTRAINT disenos_pkey PRIMARY KEY (codigo_diseno);
 >   ALTER TABLE ONLY public.disenos DROP CONSTRAINT disenos_pkey;
       public                 postgres    false    223            }           2606    33628    facturacion facturacion_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pkey PRIMARY KEY (pedido_tasacion, fecha_factura);
 F   ALTER TABLE ONLY public.facturacion DROP CONSTRAINT facturacion_pkey;
       public                 postgres    false    225    225                       2606    33630    gemas gemas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.gemas
    ADD CONSTRAINT gemas_pkey PRIMARY KEY (codigo_gema);
 :   ALTER TABLE ONLY public.gemas DROP CONSTRAINT gemas_pkey;
       public                 postgres    false    226            �           2606    33759    informes informes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.informes
    ADD CONSTRAINT informes_pkey PRIMARY KEY (tipo_informe);
 @   ALTER TABLE ONLY public.informes DROP CONSTRAINT informes_pkey;
       public                 postgres    false    228            �           2606    33761    marketing marketing_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (campania);
 B   ALTER TABLE ONLY public.marketing DROP CONSTRAINT marketing_pkey;
       public                 postgres    false    229            �           2606    33636    metales metales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.metales
    ADD CONSTRAINT metales_pkey PRIMARY KEY (codigo_metal);
 >   ALTER TABLE ONLY public.metales DROP CONSTRAINT metales_pkey;
       public                 postgres    false    231            �           2606    33638    pedidos pedidos_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (numero_pedido);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 postgres    false    233            �           2606    33640    produccion produccion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pkey PRIMARY KEY (orden_produccion);
 D   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_pkey;
       public                 postgres    false    235            �           2606    33763    proveedores proveedores_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (numero_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public                 postgres    false    237            �           2606    33765    tasaciones tasaciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tasaciones
    ADD CONSTRAINT tasaciones_pkey PRIMARY KEY (joya, fecha_tasacion);
 D   ALTER TABLE ONLY public.tasaciones DROP CONSTRAINT tasaciones_pkey;
       public                 postgres    false    239    239            �           2606    33767     transacciones transacciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (id_transaccion);
 J   ALTER TABLE ONLY public.transacciones DROP CONSTRAINT transacciones_pkey;
       public                 postgres    false    240            s           1259    33647    idx_cliente_nombre    INDEX     V   CREATE INDEX idx_cliente_nombre ON public.clientes USING btree (nombre_razon_social);
 &   DROP INDEX public.idx_cliente_nombre;
       public                 postgres    false    217            �           1259    33648    idx_pedido_fecha    INDEX     L   CREATE INDEX idx_pedido_fecha ON public.pedidos USING btree (fecha_pedido);
 $   DROP INDEX public.idx_pedido_fecha;
       public                 postgres    false    233            �           2606    33649 &   diseno_gema diseno_gema_diseno_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);
 P   ALTER TABLE ONLY public.diseno_gema DROP CONSTRAINT diseno_gema_diseno_id_fkey;
       public               postgres    false    221    223    4731            �           2606    33654 $   diseno_gema diseno_gema_gema_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_gema_id_fkey FOREIGN KEY (gema_id) REFERENCES public.gemas(codigo_gema);
 N   ALTER TABLE ONLY public.diseno_gema DROP CONSTRAINT diseno_gema_gema_id_fkey;
       public               postgres    false    4735    226    221            �           2606    33659 (   diseno_metal diseno_metal_diseno_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);
 R   ALTER TABLE ONLY public.diseno_metal DROP CONSTRAINT diseno_metal_diseno_id_fkey;
       public               postgres    false    4731    222    223            �           2606    33664 '   diseno_metal diseno_metal_metal_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_metal_id_fkey FOREIGN KEY (metal_id) REFERENCES public.metales(codigo_metal);
 Q   ALTER TABLE ONLY public.diseno_metal DROP CONSTRAINT diseno_metal_metal_id_fkey;
       public               postgres    false    222    4741    231            �           2606    33669 ,   facturacion facturacion_pedido_tasacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pedido_tasacion_fkey FOREIGN KEY (pedido_tasacion) REFERENCES public.pedidos(numero_pedido);
 V   ALTER TABLE ONLY public.facturacion DROP CONSTRAINT facturacion_pedido_tasacion_fkey;
       public               postgres    false    233    225    4744            �           2606    33674    pedidos fk_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente) REFERENCES public.clientes(numero_cliente);
 <   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_cliente;
       public               postgres    false    4722    217    233            �           2606    33679    produccion fk_diseno    FK CONSTRAINT        ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT fk_diseno FOREIGN KEY (diseno) REFERENCES public.disenos(codigo_diseno);
 >   ALTER TABLE ONLY public.produccion DROP CONSTRAINT fk_diseno;
       public               postgres    false    4731    235    223            �           2606    33684    diseno_metal fk_diseno_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT fk_diseno_id FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);
 C   ALTER TABLE ONLY public.diseno_metal DROP CONSTRAINT fk_diseno_id;
       public               postgres    false    222    223    4731            �           2606    33689    pedidos fk_diseno_solicitado    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_diseno_solicitado FOREIGN KEY (diseno_solicitado) REFERENCES public.disenos(codigo_diseno);
 F   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_diseno_solicitado;
       public               postgres    false    233    4731    223            �           2606    33694    diseno_metal fk_metal_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT fk_metal_id FOREIGN KEY (metal_id) REFERENCES public.metales(codigo_metal);
 B   ALTER TABLE ONLY public.diseno_metal DROP CONSTRAINT fk_metal_id;
       public               postgres    false    222    231    4741            �           2606    33699    produccion fk_pedido    FK CONSTRAINT        ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT fk_pedido FOREIGN KEY (pedido) REFERENCES public.pedidos(numero_pedido);
 >   ALTER TABLE ONLY public.produccion DROP CONSTRAINT fk_pedido;
       public               postgres    false    235    233    4744            �           2606    33704    pedidos pedidos_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(numero_cliente);
 F   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_cliente_fkey;
       public               postgres    false    217    233    4722            �           2606    33709 &   pedidos pedidos_diseno_solicitado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_diseno_solicitado_fkey FOREIGN KEY (diseno_solicitado) REFERENCES public.disenos(codigo_diseno);
 P   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_diseno_solicitado_fkey;
       public               postgres    false    223    4731    233            �           2606    33714 !   produccion produccion_diseno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_diseno_fkey FOREIGN KEY (diseno) REFERENCES public.disenos(codigo_diseno);
 K   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_diseno_fkey;
       public               postgres    false    235    223    4731            �           2606    33719 !   produccion produccion_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pedido_fkey FOREIGN KEY (pedido) REFERENCES public.pedidos(numero_pedido);
 K   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_pedido_fkey;
       public               postgres    false    235    233    4744            �           2606    33724    tasaciones tasaciones_joya_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasaciones
    ADD CONSTRAINT tasaciones_joya_fkey FOREIGN KEY (joya) REFERENCES public.disenos(codigo_diseno);
 I   ALTER TABLE ONLY public.tasaciones DROP CONSTRAINT tasaciones_joya_fkey;
       public               postgres    false    223    4731    239            L           0    33603    vista_pedidos_resumen    MATERIALIZED VIEW DATA     8   REFRESH MATERIALIZED VIEW public.vista_pedidos_resumen;
          public               postgres    false    242    4942            3   �   x���A
�0��u�9@�N�Qw-^��&�,�����Ӣ(���nx?|Ja�1{��Q��ez�}���,��d�!�C�w�B�U�^R"�gA�
�R�G��!���l�P�}��K�9"F||����"AS�1����{z>�@��"T,$�F��Iɰ��rR�B�H�
 ~g��      5   _   x�3�t�M����M�+N�JUHIU((*MMJ�L��L�+I5tH�H�-�I�K���2���T�`Sn��ܘ4�MH3ݔ4��H3ݜ4�-H3=F��� I�      7      x������ � �      8      x������ � �      9   �   x�Ő1n�0Eg��@юg�n�V��-dѠ ���#�b��閉�4_��)���-w�p���./�:J�4�|-ؕ����Wíy.�'�e.�H��5���Ԧ4�]�j�X�ʼ
9"�x��H�-�c���8e��U?���r�(��'�����D�ss���fXȟO���c{e�;�m���{�U�Q��Y+�ܩ�D�oQY%�:.�'�\k��:.7Op��vY����\E�g\�4      ;      x������ � �      <   �   x���K
�0@דÔ�m�YV]����J�ئ�����x W�3\u�d5�y3��H~�� `e�Rn���p�	�C=�ӫ3��f���Z}9�P�q�Q�Jl�No�?��o�u0��4�����CS8�80�����UU�~o�c��38v0b�-��}� ��r{�}�		�Ob���+ @=2��<L@�P��#��P�{c      >   H   x���K�/�MUHIU(K�+I,V0202�t��+I��L�J�(d�+��D�委&'gޜG@/�J�=... �,      ?   5   x�3�tKLNM����Q��+.IL/J��Q)�,)I-�2�/m�_��t� 8*�      A   m   x�m�1� D�z�0dv�S�l,M�&��G�e

&���|_�I�d��S��؞M������q?�-$�{�4����B�:֍�����9"2&T
4
�AU_cmR1      C   X   x�3�4�tN,9�0'?=��I,I�QH-�I�4202�5 "#8�Ј�5O��(?�499���<.S�M0��K�M04��c������� ��s�      E      x������ � �      G      x�3�(�/KMM�/R0��M-I�I-�L��+IL.�w(�I�%��r:��d�e&'&gޜ�`�eD�vc$�F���4a�l�eB�ݦ��mF����mA�ݖ��mh@�円�Nar3�(���qqq �$�      I   ^   x�3�4202�5 "3ΐ��Ĕ�"CNC=ΰ� 7%5G!7�$1GG&���X�����X�������O*J�2B�g7ψ�ЈL�b���� �*/h      J   c   x�3�4202�5 "s΀��|NC#=N��܂�Ԓ|��BJj�BAjJfJ��!�B��z�z,�zL��1�2!�S2�1#�s2� �K2����� �f~�     