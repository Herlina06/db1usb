PGDMP                     
    z            siakad    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    siakad    DATABASE     f   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16412    dosen    TABLE     ?   CREATE TABLE public.dosen (
    kodemk integer NOT NULL,
    namadosen character varying(30),
    namamk character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16411    dosen_kodemk_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_kodemk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dosen_kodemk_seq;
       public          postgres    false    214                       0    0    dosen_kodemk_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dosen_kodemk_seq OWNED BY public.dosen.kodemk;
          public          postgres    false    213            ?            1259    16396 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16395    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            ?            1259    16404    matkul    TABLE     m   CREATE TABLE public.matkul (
    idmk integer NOT NULL,
    namamk character varying(30),
    sks integer
);
    DROP TABLE public.matkul;
       public         heap    postgres    false            ?            1259    16403    matkul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.matkul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.matkul_idmk_seq;
       public          postgres    false    212                       0    0    matkul_idmk_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.matkul_idmk_seq OWNED BY public.matkul.idmk;
          public          postgres    false    211            h           2604    16415    dosen kodemk    DEFAULT     l   ALTER TABLE ONLY public.dosen ALTER COLUMN kodemk SET DEFAULT nextval('public.dosen_kodemk_seq'::regclass);
 ;   ALTER TABLE public.dosen ALTER COLUMN kodemk DROP DEFAULT;
       public          postgres    false    213    214    214            f           2604    16399    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    210    209    210            g           2604    16407    matkul idmk    DEFAULT     j   ALTER TABLE ONLY public.matkul ALTER COLUMN idmk SET DEFAULT nextval('public.matkul_idmk_seq'::regclass);
 :   ALTER TABLE public.matkul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16412    dosen 
   TABLE DATA           :   COPY public.dosen (kodemk, namadosen, namamk) FROM stdin;
    public          postgres    false    214   ?       ?          0    16396 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   1       ?          0    16404    matkul 
   TABLE DATA           3   COPY public.matkul (idmk, namamk, sks) FROM stdin;
    public          postgres    false    212   ?       	           0    0    dosen_kodemk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dosen_kodemk_seq', 1, false);
          public          postgres    false    213            
           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209                       0    0    matkul_idmk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.matkul_idmk_seq', 1, false);
          public          postgres    false    211            n           2606    16417    dosen dosen_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kodemk);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    214            j           2606    16401    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            l           2606    16409    matkul matkul_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matkul
    ADD CONSTRAINT matkul_pkey PRIMARY KEY (idmk);
 <   ALTER TABLE ONLY public.matkul DROP CONSTRAINT matkul_pkey;
       public            postgres    false    212            ?   E   x?34242??-?J???tJ,?,VpI,I?24422?.?IK?L?+??t??JLJ,R???KM,?????? 0?      ?   o   x?32246???-?PHK?(J??T?H-J??M?
&%*$%?$fsX?rz??d?%r???W??E?-9??\<}?8sKR??!?M8?2K?2??29}!21z\\\ &?"o      ?   %   x?34242?t??4?24422?p??4?????? OI?     