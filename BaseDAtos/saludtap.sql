PGDMP     3    &    	            z           saludtap    12.9    12.9     #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16556    saludtap    DATABASE     ?   CREATE DATABASE saludtap WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE saludtap;
                postgres    false            ?            1259    16608    folio_int_serial    SEQUENCE     |   CREATE SEQUENCE public.folio_int_serial
    START WITH 100
    INCREMENT BY 1
    MINVALUE 100
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.folio_int_serial;
       public          postgres    false            ?            1259    16591    citas    TABLE     ?   CREATE TABLE public.citas (
    fecha date,
    hora text,
    descripcion text,
    id_cita_p integer,
    folio integer DEFAULT nextval('public.folio_int_serial'::regclass)
);
    DROP TABLE public.citas;
       public         heap    postgres    false    208            ?            1259    16599    company    TABLE     ?   CREATE TABLE public.company (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    address character(50),
    salary real
);
    DROP TABLE public.company;
       public         heap    postgres    false            ?            1259    16597    company_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.company_id_seq;
       public          postgres    false    207            '           0    0    company_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;
          public          postgres    false    206            ?            1259    16560 	   pacientes    TABLE       CREATE TABLE public.pacientes (
    nombre text,
    apellido_paterno text,
    apellido_materno text,
    edad integer,
    curp text,
    usuario text,
    password text,
    CONSTRAINT verificar_curp CHECK ((curp ~ '^[A-Z]{4}[\d]{6}[A-Z]{6}[0-9]{1,2}$'::text))
);
    DROP TABLE public.pacientes;
       public         heap    postgres    false            ?            1259    16581 
   pacientes2    TABLE     f  CREATE TABLE public.pacientes2 (
    nombre text NOT NULL,
    apellido_paterno text NOT NULL,
    apellido_materno text NOT NULL,
    edad integer NOT NULL,
    curp text NOT NULL,
    usuario text NOT NULL,
    password text NOT NULL,
    id integer NOT NULL,
    CONSTRAINT verificar_curp CHECK ((curp ~ '^[A-Z]{4}[\d]{6}[A-Z]{6,7}[0-9]{1,2}$'::text))
);
    DROP TABLE public.pacientes2;
       public         heap    postgres    false            ?            1259    16579    pacientes2_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pacientes2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pacientes2_id_seq;
       public          postgres    false    204            (           0    0    pacientes2_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pacientes2_id_seq OWNED BY public.pacientes2.id;
          public          postgres    false    203            ?
           2604    16602 
   company id    DEFAULT     h   ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);
 9   ALTER TABLE public.company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?
           2604    16584    pacientes2 id    DEFAULT     n   ALTER TABLE ONLY public.pacientes2 ALTER COLUMN id SET DEFAULT nextval('public.pacientes2_id_seq'::regclass);
 <   ALTER TABLE public.pacientes2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204                      0    16591    citas 
   TABLE DATA           K   COPY public.citas (fecha, hora, descripcion, id_cita_p, folio) FROM stdin;
    public          postgres    false    205   ?                 0    16599    company 
   TABLE DATA           A   COPY public.company (id, name, age, address, salary) FROM stdin;
    public          postgres    false    207   ?                 0    16560 	   pacientes 
   TABLE DATA           n   COPY public.pacientes (nombre, apellido_paterno, apellido_materno, edad, curp, usuario, password) FROM stdin;
    public          postgres    false    202   ?                 0    16581 
   pacientes2 
   TABLE DATA           s   COPY public.pacientes2 (nombre, apellido_paterno, apellido_materno, edad, curp, usuario, password, id) FROM stdin;
    public          postgres    false    204   ?       )           0    0    company_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.company_id_seq', 2, true);
          public          postgres    false    206            *           0    0    folio_int_serial    SEQUENCE SET     @   SELECT pg_catalog.setval('public.folio_int_serial', 149, true);
          public          postgres    false    208            +           0    0    pacientes2_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pacientes2_id_seq', 8, true);
          public          postgres    false    203            ?
           2606    16607    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    207            ?
           2606    16589    pacientes2 pacientes2_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pacientes2
    ADD CONSTRAINT pacientes2_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pacientes2 DROP CONSTRAINT pacientes2_pkey;
       public            postgres    false    204               ?   x?E?A? ?5??_????"n~?7%? ??})???Mf?Pjz??~?Ex?O??L
??E?h?]	R?h???M??T?D66d\??]?N?'?c?L1???TLv??!?????T0q+????=???9???2e         -   x?3?H,??46?tN??L?/??LT p ??F??qqq ?L*         ?   x?-??
?0????ad?ڪ???z)?D?7???D[/??ۈ?9??g??g
?&?"?e??
%?D?C???l?? J?\dL??G?tuI?????_5????\??Q??`??MՒ?qfֻ??A??'*Y.??R?k???S9o?d=?xl??ٽ?????8?u=??Ҩ?1???8?????c_B?         ?   x?U??
?0ϛ????V=??"V!Ƣ(^??C4&R??^[A??x?͍?`??Z??\?.L?fRR??h??1???JJ?Dŝm]??zwr"???$?*Ղ??aқf?3?r?1??a???Zi??H?]a???~???p8?4*??[	?<??Re??~Eq	!??<<?     