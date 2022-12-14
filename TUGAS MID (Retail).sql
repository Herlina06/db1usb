PGDMP     ;    9            
    z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16403    retail    DATABASE     f   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16412    baju    TABLE     ?   CREATE TABLE public.baju (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(30),
    harga_baju character varying(30)
);
    DROP TABLE public.baju;
       public         heap    postgres    false            ?            1259    16411    baju_id_pelanggan_seq    SEQUENCE     ?   CREATE SEQUENCE public.baju_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.baju_id_pelanggan_seq;
       public          postgres    false    212                       0    0    baju_id_pelanggan_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.baju_id_pelanggan_seq OWNED BY public.baju.id_pelanggan;
          public          postgres    false    211            ?            1259    16419    laptop    TABLE     ?   CREATE TABLE public.laptop (
    harga_barang integer NOT NULL,
    nama_laptop character varying(30),
    nama_pemesan character varying(30)
);
    DROP TABLE public.laptop;
       public         heap    postgres    false            ?            1259    16418    laptop_harga_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.laptop_harga_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.laptop_harga_barang_seq;
       public          postgres    false    214                       0    0    laptop_harga_barang_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.laptop_harga_barang_seq OWNED BY public.laptop.harga_barang;
          public          postgres    false    213            ?            1259    16405    sepatu    TABLE     ?   CREATE TABLE public.sepatu (
    no_sepatu integer NOT NULL,
    nama_pelanggan character varying(30),
    harga_sepatu character varying(30)
);
    DROP TABLE public.sepatu;
       public         heap    postgres    false            ?            1259    16404    sepatu_no_sepatu_seq    SEQUENCE     ?   CREATE SEQUENCE public.sepatu_no_sepatu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sepatu_no_sepatu_seq;
       public          postgres    false    210                       0    0    sepatu_no_sepatu_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sepatu_no_sepatu_seq OWNED BY public.sepatu.no_sepatu;
          public          postgres    false    209            g           2604    16415    baju id_pelanggan    DEFAULT     v   ALTER TABLE ONLY public.baju ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.baju_id_pelanggan_seq'::regclass);
 @   ALTER TABLE public.baju ALTER COLUMN id_pelanggan DROP DEFAULT;
       public          postgres    false    212    211    212            h           2604    16422    laptop harga_barang    DEFAULT     z   ALTER TABLE ONLY public.laptop ALTER COLUMN harga_barang SET DEFAULT nextval('public.laptop_harga_barang_seq'::regclass);
 B   ALTER TABLE public.laptop ALTER COLUMN harga_barang DROP DEFAULT;
       public          postgres    false    213    214    214            f           2604    16408    sepatu no_sepatu    DEFAULT     t   ALTER TABLE ONLY public.sepatu ALTER COLUMN no_sepatu SET DEFAULT nextval('public.sepatu_no_sepatu_seq'::regclass);
 ?   ALTER TABLE public.sepatu ALTER COLUMN no_sepatu DROP DEFAULT;
       public          postgres    false    210    209    210            ?          0    16412    baju 
   TABLE DATA           H   COPY public.baju (id_pelanggan, nama_pelanggan, harga_baju) FROM stdin;
    public          postgres    false    212          ?          0    16419    laptop 
   TABLE DATA           I   COPY public.laptop (harga_barang, nama_laptop, nama_pemesan) FROM stdin;
    public          postgres    false    214   7       ?          0    16405    sepatu 
   TABLE DATA           I   COPY public.sepatu (no_sepatu, nama_pelanggan, harga_sepatu) FROM stdin;
    public          postgres    false    210   i       	           0    0    baju_id_pelanggan_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.baju_id_pelanggan_seq', 1, false);
          public          postgres    false    211            
           0    0    laptop_harga_barang_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.laptop_harga_barang_seq', 1, false);
          public          postgres    false    213                       0    0    sepatu_no_sepatu_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sepatu_no_sepatu_seq', 1, false);
          public          postgres    false    209            l           2606    16417    baju baju_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.baju
    ADD CONSTRAINT baju_pkey PRIMARY KEY (id_pelanggan);
 8   ALTER TABLE ONLY public.baju DROP CONSTRAINT baju_pkey;
       public            postgres    false    212            n           2606    16424    laptop laptop_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.laptop
    ADD CONSTRAINT laptop_pkey PRIMARY KEY (harga_barang);
 <   ALTER TABLE ONLY public.laptop DROP CONSTRAINT laptop_pkey;
       public            postgres    false    214            j           2606    16410    sepatu sepatu_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sepatu
    ADD CONSTRAINT sepatu_pkey PRIMARY KEY (no_sepatu);
 <   ALTER TABLE ONLY public.sepatu DROP CONSTRAINT sepatu_pkey;
       public            postgres    false    210            ?      x?3404??p???s?444 ?=... CI?      ?   "   x?3?05 NW??0N? O?G?=... Z??      ?      x?31??p???s?447500?????? :?Y     