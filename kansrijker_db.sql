PGDMP  7                	    {        
   kansrijker    16.0    16.0 2               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49164 
   kansrijker    DATABASE     �   CREATE DATABASE kansrijker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Dutch_Netherlands.1252';
    DROP DATABASE kansrijker;
                postgres    false            �            1259    49208    activiteiten    TABLE     �   CREATE TABLE public.activiteiten (
    activiteiten_id integer NOT NULL,
    activiteiten_name character varying(255) NOT NULL,
    activiteiten_location character varying(255) NOT NULL,
    activiteiten_date date NOT NULL
);
     DROP TABLE public.activiteiten;
       public         heap    postgres    false            �            1259    49217    activiteiten2jongeren    TABLE     �   CREATE TABLE public.activiteiten2jongeren (
    activiteiten2jongeren_id integer NOT NULL,
    activiteiten2jongeren_jongeren_id integer,
    activiteiten2jongeren_activiteiten_id integer
);
 )   DROP TABLE public.activiteiten2jongeren;
       public         heap    postgres    false            �            1259    49216 2   activiteiten2jongeren_activiteiten2jongeren_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activiteiten2jongeren_activiteiten2jongeren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.activiteiten2jongeren_activiteiten2jongeren_id_seq;
       public          postgres    false    226                        0    0 2   activiteiten2jongeren_activiteiten2jongeren_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.activiteiten2jongeren_activiteiten2jongeren_id_seq OWNED BY public.activiteiten2jongeren.activiteiten2jongeren_id;
          public          postgres    false    225            �            1259    49207     activiteiten_activiteiten_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activiteiten_activiteiten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.activiteiten_activiteiten_id_seq;
       public          postgres    false    224            !           0    0     activiteiten_activiteiten_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.activiteiten_activiteiten_id_seq OWNED BY public.activiteiten.activiteiten_id;
          public          postgres    false    223            �            1259    49182 
   instituten    TABLE     �   CREATE TABLE public.instituten (
    instituten_id integer NOT NULL,
    instituten_name character varying(255) NOT NULL,
    instituten_location character varying(255) NOT NULL
);
    DROP TABLE public.instituten;
       public         heap    postgres    false            �            1259    49191    instituten2jongeren    TABLE     �   CREATE TABLE public.instituten2jongeren (
    instituten2jongeren_id integer NOT NULL,
    instituten2jongeren_instituten_id integer,
    instituten2jongeren_jongeren_id integer
);
 '   DROP TABLE public.instituten2jongeren;
       public         heap    postgres    false            �            1259    49190 .   instituten2jongeren_instituten2jongeren_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instituten2jongeren_instituten2jongeren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.instituten2jongeren_instituten2jongeren_id_seq;
       public          postgres    false    222            "           0    0 .   instituten2jongeren_instituten2jongeren_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.instituten2jongeren_instituten2jongeren_id_seq OWNED BY public.instituten2jongeren.instituten2jongeren_id;
          public          postgres    false    221            �            1259    49181    instituten_instituten_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instituten_instituten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.instituten_instituten_id_seq;
       public          postgres    false    220            #           0    0    instituten_instituten_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.instituten_instituten_id_seq OWNED BY public.instituten.instituten_id;
          public          postgres    false    219            �            1259    49175    jongeren    TABLE     �   CREATE TABLE public.jongeren (
    jongeren_id integer NOT NULL,
    jongeren_name character varying(255) NOT NULL,
    jongeren_age integer NOT NULL
);
    DROP TABLE public.jongeren;
       public         heap    postgres    false            �            1259    49174    jongeren_jongeren_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jongeren_jongeren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.jongeren_jongeren_id_seq;
       public          postgres    false    218            $           0    0    jongeren_jongeren_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.jongeren_jongeren_id_seq OWNED BY public.jongeren.jongeren_id;
          public          postgres    false    217            �            1259    49166 
   medewerker    TABLE     �   CREATE TABLE public.medewerker (
    medewerker_id integer NOT NULL,
    medewerker_user character varying(255) NOT NULL,
    medewerker_pass character varying(255) NOT NULL
);
    DROP TABLE public.medewerker;
       public         heap    postgres    false            �            1259    49165    medewerker_medewerker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medewerker_medewerker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.medewerker_medewerker_id_seq;
       public          postgres    false    216            %           0    0    medewerker_medewerker_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.medewerker_medewerker_id_seq OWNED BY public.medewerker.medewerker_id;
          public          postgres    false    215            m           2604    49211    activiteiten activiteiten_id    DEFAULT     �   ALTER TABLE ONLY public.activiteiten ALTER COLUMN activiteiten_id SET DEFAULT nextval('public.activiteiten_activiteiten_id_seq'::regclass);
 K   ALTER TABLE public.activiteiten ALTER COLUMN activiteiten_id DROP DEFAULT;
       public          postgres    false    223    224    224            n           2604    49220 .   activiteiten2jongeren activiteiten2jongeren_id    DEFAULT     �   ALTER TABLE ONLY public.activiteiten2jongeren ALTER COLUMN activiteiten2jongeren_id SET DEFAULT nextval('public.activiteiten2jongeren_activiteiten2jongeren_id_seq'::regclass);
 ]   ALTER TABLE public.activiteiten2jongeren ALTER COLUMN activiteiten2jongeren_id DROP DEFAULT;
       public          postgres    false    225    226    226            k           2604    49185    instituten instituten_id    DEFAULT     �   ALTER TABLE ONLY public.instituten ALTER COLUMN instituten_id SET DEFAULT nextval('public.instituten_instituten_id_seq'::regclass);
 G   ALTER TABLE public.instituten ALTER COLUMN instituten_id DROP DEFAULT;
       public          postgres    false    219    220    220            l           2604    49194 *   instituten2jongeren instituten2jongeren_id    DEFAULT     �   ALTER TABLE ONLY public.instituten2jongeren ALTER COLUMN instituten2jongeren_id SET DEFAULT nextval('public.instituten2jongeren_instituten2jongeren_id_seq'::regclass);
 Y   ALTER TABLE public.instituten2jongeren ALTER COLUMN instituten2jongeren_id DROP DEFAULT;
       public          postgres    false    221    222    222            j           2604    49178    jongeren jongeren_id    DEFAULT     |   ALTER TABLE ONLY public.jongeren ALTER COLUMN jongeren_id SET DEFAULT nextval('public.jongeren_jongeren_id_seq'::regclass);
 C   ALTER TABLE public.jongeren ALTER COLUMN jongeren_id DROP DEFAULT;
       public          postgres    false    218    217    218            i           2604    49169    medewerker medewerker_id    DEFAULT     �   ALTER TABLE ONLY public.medewerker ALTER COLUMN medewerker_id SET DEFAULT nextval('public.medewerker_medewerker_id_seq'::regclass);
 G   ALTER TABLE public.medewerker ALTER COLUMN medewerker_id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    49208    activiteiten 
   TABLE DATA           t   COPY public.activiteiten (activiteiten_id, activiteiten_name, activiteiten_location, activiteiten_date) FROM stdin;
    public          postgres    false    224   ^A                 0    49217    activiteiten2jongeren 
   TABLE DATA           �   COPY public.activiteiten2jongeren (activiteiten2jongeren_id, activiteiten2jongeren_jongeren_id, activiteiten2jongeren_activiteiten_id) FROM stdin;
    public          postgres    false    226   {A                 0    49182 
   instituten 
   TABLE DATA           Y   COPY public.instituten (instituten_id, instituten_name, instituten_location) FROM stdin;
    public          postgres    false    220   �A                 0    49191    instituten2jongeren 
   TABLE DATA           �   COPY public.instituten2jongeren (instituten2jongeren_id, instituten2jongeren_instituten_id, instituten2jongeren_jongeren_id) FROM stdin;
    public          postgres    false    222   �A                 0    49175    jongeren 
   TABLE DATA           L   COPY public.jongeren (jongeren_id, jongeren_name, jongeren_age) FROM stdin;
    public          postgres    false    218   �A                 0    49166 
   medewerker 
   TABLE DATA           U   COPY public.medewerker (medewerker_id, medewerker_user, medewerker_pass) FROM stdin;
    public          postgres    false    216   �A       &           0    0 2   activiteiten2jongeren_activiteiten2jongeren_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.activiteiten2jongeren_activiteiten2jongeren_id_seq', 1, false);
          public          postgres    false    225            '           0    0     activiteiten_activiteiten_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.activiteiten_activiteiten_id_seq', 1, false);
          public          postgres    false    223            (           0    0 .   instituten2jongeren_instituten2jongeren_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.instituten2jongeren_instituten2jongeren_id_seq', 1, false);
          public          postgres    false    221            )           0    0    instituten_instituten_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.instituten_instituten_id_seq', 1, false);
          public          postgres    false    219            *           0    0    jongeren_jongeren_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.jongeren_jongeren_id_seq', 1, false);
          public          postgres    false    217            +           0    0    medewerker_medewerker_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.medewerker_medewerker_id_seq', 2, true);
          public          postgres    false    215            z           2606    49222 0   activiteiten2jongeren activiteiten2jongeren_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activiteiten2jongeren
    ADD CONSTRAINT activiteiten2jongeren_pkey PRIMARY KEY (activiteiten2jongeren_id);
 Z   ALTER TABLE ONLY public.activiteiten2jongeren DROP CONSTRAINT activiteiten2jongeren_pkey;
       public            postgres    false    226            x           2606    49215    activiteiten activiteiten_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.activiteiten
    ADD CONSTRAINT activiteiten_pkey PRIMARY KEY (activiteiten_id);
 H   ALTER TABLE ONLY public.activiteiten DROP CONSTRAINT activiteiten_pkey;
       public            postgres    false    224            v           2606    49196 ,   instituten2jongeren instituten2jongeren_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.instituten2jongeren
    ADD CONSTRAINT instituten2jongeren_pkey PRIMARY KEY (instituten2jongeren_id);
 V   ALTER TABLE ONLY public.instituten2jongeren DROP CONSTRAINT instituten2jongeren_pkey;
       public            postgres    false    222            t           2606    49189    instituten instituten_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.instituten
    ADD CONSTRAINT instituten_pkey PRIMARY KEY (instituten_id);
 D   ALTER TABLE ONLY public.instituten DROP CONSTRAINT instituten_pkey;
       public            postgres    false    220            r           2606    49180    jongeren jongeren_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.jongeren
    ADD CONSTRAINT jongeren_pkey PRIMARY KEY (jongeren_id);
 @   ALTER TABLE ONLY public.jongeren DROP CONSTRAINT jongeren_pkey;
       public            postgres    false    218            p           2606    49173    medewerker medewerker_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.medewerker
    ADD CONSTRAINT medewerker_pkey PRIMARY KEY (medewerker_id);
 D   ALTER TABLE ONLY public.medewerker DROP CONSTRAINT medewerker_pkey;
       public            postgres    false    216            }           2606    49228 U   activiteiten2jongeren activiteiten2jongeren_activiteiten2jongeren_activiteiten_i_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activiteiten2jongeren
    ADD CONSTRAINT activiteiten2jongeren_activiteiten2jongeren_activiteiten_i_fkey FOREIGN KEY (activiteiten2jongeren_activiteiten_id) REFERENCES public.activiteiten(activiteiten_id);
    ALTER TABLE ONLY public.activiteiten2jongeren DROP CONSTRAINT activiteiten2jongeren_activiteiten2jongeren_activiteiten_i_fkey;
       public          postgres    false    4728    224    226            ~           2606    49223 R   activiteiten2jongeren activiteiten2jongeren_activiteiten2jongeren_jongeren_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activiteiten2jongeren
    ADD CONSTRAINT activiteiten2jongeren_activiteiten2jongeren_jongeren_id_fkey FOREIGN KEY (activiteiten2jongeren_jongeren_id) REFERENCES public.jongeren(jongeren_id);
 |   ALTER TABLE ONLY public.activiteiten2jongeren DROP CONSTRAINT activiteiten2jongeren_activiteiten2jongeren_jongeren_id_fkey;
       public          postgres    false    218    226    4722            {           2606    49197 N   instituten2jongeren instituten2jongeren_instituten2jongeren_instituten_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.instituten2jongeren
    ADD CONSTRAINT instituten2jongeren_instituten2jongeren_instituten_id_fkey FOREIGN KEY (instituten2jongeren_instituten_id) REFERENCES public.instituten(instituten_id);
 x   ALTER TABLE ONLY public.instituten2jongeren DROP CONSTRAINT instituten2jongeren_instituten2jongeren_instituten_id_fkey;
       public          postgres    false    220    222    4724            |           2606    49202 L   instituten2jongeren instituten2jongeren_instituten2jongeren_jongeren_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.instituten2jongeren
    ADD CONSTRAINT instituten2jongeren_instituten2jongeren_jongeren_id_fkey FOREIGN KEY (instituten2jongeren_jongeren_id) REFERENCES public.jongeren(jongeren_id);
 v   ALTER TABLE ONLY public.instituten2jongeren DROP CONSTRAINT instituten2jongeren_instituten2jongeren_jongeren_id_fkey;
       public          postgres    false    4722    222    218                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �         S   x�3��H���O�T1�T14P1
J�L���1�p	��MO1�K׷��ɯ4��(q��4�u�)w-(��-(M������� jH�     