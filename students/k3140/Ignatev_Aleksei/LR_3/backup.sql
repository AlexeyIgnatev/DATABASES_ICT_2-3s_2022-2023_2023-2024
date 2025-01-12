PGDMP                     	    {            Book_edition    15.4    15.4 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Book_edition    DATABASE     �   CREATE DATABASE "Book_edition" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1252';
    DROP DATABASE "Book_edition";
                postgres    false                        2615    16399    root    SCHEMA        CREATE SCHEMA root;
    DROP SCHEMA root;
                postgres    false            �            1259    16522    Author    TABLE     �   CREATE TABLE public."Author" (
    author_code integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    father_name character varying(50),
    email character varying(100) NOT NULL
);
    DROP TABLE public."Author";
       public         heap    postgres    false            �            1259    16521    Author_author_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Author_author_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Author_author_code_seq";
       public          postgres    false    235            �           0    0    Author_author_code_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Author_author_code_seq" OWNED BY public."Author".author_code;
          public          postgres    false    234            �            1259    16496    Book    TABLE     &  CREATE TABLE public."Book" (
    book_number integer NOT NULL,
    name character varying(50) NOT NULL,
    write_year integer NOT NULL,
    publish_year integer NOT NULL,
    CONSTRAINT publish_year_check CHECK ((publish_year > 0)),
    CONSTRAINT write_year_check CHECK ((write_year > 0))
);
    DROP TABLE public."Book";
       public         heap    postgres    false            �            1259    16529    Book_author    TABLE     �   CREATE TABLE public."Book_author" (
    book_author_id integer NOT NULL,
    book_number integer NOT NULL,
    author_code integer NOT NULL,
    author_position integer NOT NULL
);
 !   DROP TABLE public."Book_author";
       public         heap    postgres    false            �            1259    16528    Book_author_book_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Book_author_book_author_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Book_author_book_author_id_seq";
       public          postgres    false    237            �           0    0    Book_author_book_author_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Book_author_book_author_id_seq" OWNED BY public."Book_author".book_author_id;
          public          postgres    false    236            �            1259    16495    Book_book_number_seq    SEQUENCE     �   CREATE SEQUENCE public."Book_book_number_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Book_book_number_seq";
       public          postgres    false    231            �           0    0    Book_book_number_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Book_book_number_seq" OWNED BY public."Book".book_number;
          public          postgres    false    230            �            1259    16553    Book_category    TABLE     �   CREATE TABLE public."Book_category" (
    book_category_id integer NOT NULL,
    book_number integer NOT NULL,
    category_code integer NOT NULL,
    priority integer NOT NULL
);
 #   DROP TABLE public."Book_category";
       public         heap    postgres    false            �            1259    16552 "   Book_category_book_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Book_category_book_category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Book_category_book_category_id_seq";
       public          postgres    false    241            �           0    0 "   Book_category_book_category_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Book_category_book_category_id_seq" OWNED BY public."Book_category".book_category_id;
          public          postgres    false    240            �            1259    16546    Category    TABLE     p   CREATE TABLE public."Category" (
    category_code integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public."Category";
       public         heap    postgres    false            �            1259    16545    Category_category_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Category_category_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Category_category_code_seq";
       public          postgres    false    239            �           0    0    Category_category_code_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Category_category_code_seq" OWNED BY public."Category".category_code;
          public          postgres    false    238            �            1259    16440    Circulation    TABLE     I  CREATE TABLE public."Circulation" (
    circulation_code integer NOT NULL,
    date date NOT NULL,
    made_count integer NOT NULL,
    left_count integer NOT NULL,
    isbn_code character varying(13) NOT NULL,
    CONSTRAINT left_count_check CHECK ((left_count > 0)),
    CONSTRAINT made_count_check CHECK ((made_count > 0))
);
 !   DROP TABLE public."Circulation";
       public         heap    postgres    false            �            1259    16439     Circulation_circulation_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Circulation_circulation_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Circulation_circulation_code_seq";
       public          postgres    false    223            �           0    0     Circulation_circulation_code_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Circulation_circulation_code_seq" OWNED BY public."Circulation".circulation_code;
          public          postgres    false    222            �            1259    16421    Client    TABLE       CREATE TABLE public."Client" (
    client_code integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    father_name character varying(50),
    address character varying(100) NOT NULL,
    phone character varying(20) NOT NULL
);
    DROP TABLE public."Client";
       public         heap    postgres    false            �            1259    16420    Client_client_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Client_client_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Client_client_code_seq";
       public          postgres    false    220            �           0    0    Client_client_code_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Client_client_code_seq" OWNED BY public."Client".client_code;
          public          postgres    false    219            �            1259    16432    Edition    TABLE     �  CREATE TABLE public."Edition" (
    isbn_code character varying(13) NOT NULL,
    sheets_count integer NOT NULL,
    has_images integer NOT NULL,
    edition_number integer NOT NULL,
    type character varying(20) NOT NULL,
    it_sphere character varying(50) NOT NULL,
    CONSTRAINT has_images_check CHECK ((has_images = ANY (ARRAY[0, 1]))),
    CONSTRAINT sheets_count_check CHECK ((sheets_count > 0))
);
    DROP TABLE public."Edition";
       public         heap    postgres    false            �            1259    16505    Edition_book    TABLE     �   CREATE TABLE public."Edition_book" (
    edition_book_id integer NOT NULL,
    isbn_code character varying(13) NOT NULL,
    book_number integer NOT NULL
);
 "   DROP TABLE public."Edition_book";
       public         heap    postgres    false            �            1259    16504     Edition_book_edition_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Edition_book_edition_book_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Edition_book_edition_book_id_seq";
       public          postgres    false    233            �           0    0     Edition_book_edition_book_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Edition_book_edition_book_id_seq" OWNED BY public."Edition_book".edition_book_id;
          public          postgres    false    232            �            1259    16479    Edition_process    TABLE     �   CREATE TABLE public."Edition_process" (
    edition_process_id integer NOT NULL,
    isbn_code character varying(13) NOT NULL,
    editor_code integer NOT NULL,
    editor_role character varying(50) NOT NULL
);
 %   DROP TABLE public."Edition_process";
       public         heap    postgres    false            �            1259    16478 &   Edition_process_edition_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Edition_process_edition_process_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Edition_process_edition_process_id_seq";
       public          postgres    false    229            �           0    0 &   Edition_process_edition_process_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Edition_process_edition_process_id_seq" OWNED BY public."Edition_process".edition_process_id;
          public          postgres    false    228            �            1259    16472    Editor    TABLE     �   CREATE TABLE public."Editor" (
    editor_code integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    father_name character varying(50)
);
    DROP TABLE public."Editor";
       public         heap    postgres    false            �            1259    16471    Editor_editor_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Editor_editor_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Editor_editor_code_seq";
       public          postgres    false    227            �           0    0    Editor_editor_code_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Editor_editor_code_seq" OWNED BY public."Editor".editor_code;
          public          postgres    false    226            �            1259    16401    Manager    TABLE     �   CREATE TABLE public."Manager" (
    manager_code integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    father_name character varying(50)
);
    DROP TABLE public."Manager";
       public         heap    postgres    false            �            1259    16400    Manager_manager_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Manager_manager_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Manager_manager_code_seq";
       public          postgres    false    216            �           0    0    Manager_manager_code_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Manager_manager_code_seq" OWNED BY public."Manager".manager_code;
          public          postgres    false    215            �            1259    16408    Order    TABLE     �  CREATE TABLE public."Order" (
    order_code integer NOT NULL,
    payment_prepay character varying(50) NOT NULL,
    payment_balance character varying(50) NOT NULL,
    date date NOT NULL,
    duration integer NOT NULL,
    status character varying(20) NOT NULL,
    act character varying(50) NOT NULL,
    manager_code integer NOT NULL,
    client_code integer NOT NULL,
    CONSTRAINT check_duration CHECK ((duration > 0))
);
    DROP TABLE public."Order";
       public         heap    postgres    false            �            1259    16454    Order_creation    TABLE     �   CREATE TABLE public."Order_creation" (
    order_creation_id integer NOT NULL,
    order_code integer NOT NULL,
    "сirculation_code" integer NOT NULL,
    count integer NOT NULL,
    CONSTRAINT count_check CHECK ((count > 0))
);
 $   DROP TABLE public."Order_creation";
       public         heap    postgres    false            �            1259    16453 $   Order_creation_order_creation_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_creation_order_creation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Order_creation_order_creation_id_seq";
       public          postgres    false    225            �           0    0 $   Order_creation_order_creation_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."Order_creation_order_creation_id_seq" OWNED BY public."Order_creation".order_creation_id;
          public          postgres    false    224            �            1259    16407    Order_order_code_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_order_code_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Order_order_code_seq";
       public          postgres    false    218            �           0    0    Order_order_code_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Order_order_code_seq" OWNED BY public."Order".order_code;
          public          postgres    false    217            �           2604    16525    Author author_code    DEFAULT     |   ALTER TABLE ONLY public."Author" ALTER COLUMN author_code SET DEFAULT nextval('public."Author_author_code_seq"'::regclass);
 C   ALTER TABLE public."Author" ALTER COLUMN author_code DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16499    Book book_number    DEFAULT     x   ALTER TABLE ONLY public."Book" ALTER COLUMN book_number SET DEFAULT nextval('public."Book_book_number_seq"'::regclass);
 A   ALTER TABLE public."Book" ALTER COLUMN book_number DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16532    Book_author book_author_id    DEFAULT     �   ALTER TABLE ONLY public."Book_author" ALTER COLUMN book_author_id SET DEFAULT nextval('public."Book_author_book_author_id_seq"'::regclass);
 K   ALTER TABLE public."Book_author" ALTER COLUMN book_author_id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16556    Book_category book_category_id    DEFAULT     �   ALTER TABLE ONLY public."Book_category" ALTER COLUMN book_category_id SET DEFAULT nextval('public."Book_category_book_category_id_seq"'::regclass);
 O   ALTER TABLE public."Book_category" ALTER COLUMN book_category_id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16549    Category category_code    DEFAULT     �   ALTER TABLE ONLY public."Category" ALTER COLUMN category_code SET DEFAULT nextval('public."Category_category_code_seq"'::regclass);
 G   ALTER TABLE public."Category" ALTER COLUMN category_code DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16443    Circulation circulation_code    DEFAULT     �   ALTER TABLE ONLY public."Circulation" ALTER COLUMN circulation_code SET DEFAULT nextval('public."Circulation_circulation_code_seq"'::regclass);
 M   ALTER TABLE public."Circulation" ALTER COLUMN circulation_code DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16424    Client client_code    DEFAULT     |   ALTER TABLE ONLY public."Client" ALTER COLUMN client_code SET DEFAULT nextval('public."Client_client_code_seq"'::regclass);
 C   ALTER TABLE public."Client" ALTER COLUMN client_code DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16508    Edition_book edition_book_id    DEFAULT     �   ALTER TABLE ONLY public."Edition_book" ALTER COLUMN edition_book_id SET DEFAULT nextval('public."Edition_book_edition_book_id_seq"'::regclass);
 M   ALTER TABLE public."Edition_book" ALTER COLUMN edition_book_id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16482 "   Edition_process edition_process_id    DEFAULT     �   ALTER TABLE ONLY public."Edition_process" ALTER COLUMN edition_process_id SET DEFAULT nextval('public."Edition_process_edition_process_id_seq"'::regclass);
 S   ALTER TABLE public."Edition_process" ALTER COLUMN edition_process_id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16475    Editor editor_code    DEFAULT     |   ALTER TABLE ONLY public."Editor" ALTER COLUMN editor_code SET DEFAULT nextval('public."Editor_editor_code_seq"'::regclass);
 C   ALTER TABLE public."Editor" ALTER COLUMN editor_code DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16404    Manager manager_code    DEFAULT     �   ALTER TABLE ONLY public."Manager" ALTER COLUMN manager_code SET DEFAULT nextval('public."Manager_manager_code_seq"'::regclass);
 E   ALTER TABLE public."Manager" ALTER COLUMN manager_code DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16411    Order order_code    DEFAULT     x   ALTER TABLE ONLY public."Order" ALTER COLUMN order_code SET DEFAULT nextval('public."Order_order_code_seq"'::regclass);
 A   ALTER TABLE public."Order" ALTER COLUMN order_code DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16457     Order_creation order_creation_id    DEFAULT     �   ALTER TABLE ONLY public."Order_creation" ALTER COLUMN order_creation_id SET DEFAULT nextval('public."Order_creation_order_creation_id_seq"'::regclass);
 Q   ALTER TABLE public."Order_creation" ALTER COLUMN order_creation_id DROP DEFAULT;
       public          postgres    false    224    225    225            �          0    16522    Author 
   TABLE DATA           Z   COPY public."Author" (author_code, first_name, last_name, father_name, email) FROM stdin;
    public          postgres    false    235   ��       �          0    16496    Book 
   TABLE DATA           M   COPY public."Book" (book_number, name, write_year, publish_year) FROM stdin;
    public          postgres    false    231   �       �          0    16529    Book_author 
   TABLE DATA           b   COPY public."Book_author" (book_author_id, book_number, author_code, author_position) FROM stdin;
    public          postgres    false    237   U�       �          0    16553    Book_category 
   TABLE DATA           a   COPY public."Book_category" (book_category_id, book_number, category_code, priority) FROM stdin;
    public          postgres    false    241   ��       �          0    16546    Category 
   TABLE DATA           9   COPY public."Category" (category_code, name) FROM stdin;
    public          postgres    false    239   ��       z          0    16440    Circulation 
   TABLE DATA           b   COPY public."Circulation" (circulation_code, date, made_count, left_count, isbn_code) FROM stdin;
    public          postgres    false    223    �       w          0    16421    Client 
   TABLE DATA           c   COPY public."Client" (client_code, first_name, last_name, father_name, address, phone) FROM stdin;
    public          postgres    false    220   F�       x          0    16432    Edition 
   TABLE DATA           i   COPY public."Edition" (isbn_code, sheets_count, has_images, edition_number, type, it_sphere) FROM stdin;
    public          postgres    false    221   ͑       �          0    16505    Edition_book 
   TABLE DATA           Q   COPY public."Edition_book" (edition_book_id, isbn_code, book_number) FROM stdin;
    public          postgres    false    233   A�       �          0    16479    Edition_process 
   TABLE DATA           d   COPY public."Edition_process" (edition_process_id, isbn_code, editor_code, editor_role) FROM stdin;
    public          postgres    false    229   v�       ~          0    16472    Editor 
   TABLE DATA           S   COPY public."Editor" (editor_code, first_name, last_name, father_name) FROM stdin;
    public          postgres    false    227   Β       s          0    16401    Manager 
   TABLE DATA           U   COPY public."Manager" (manager_code, first_name, last_name, father_name) FROM stdin;
    public          postgres    false    216   �       u          0    16408    Order 
   TABLE DATA           �   COPY public."Order" (order_code, payment_prepay, payment_balance, date, duration, status, act, manager_code, client_code) FROM stdin;
    public          postgres    false    218   R�       |          0    16454    Order_creation 
   TABLE DATA           e   COPY public."Order_creation" (order_creation_id, order_code, "сirculation_code", count) FROM stdin;
    public          postgres    false    225   ��       �           0    0    Author_author_code_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Author_author_code_seq"', 2, true);
          public          postgres    false    234            �           0    0    Book_author_book_author_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Book_author_book_author_id_seq"', 5, true);
          public          postgres    false    236            �           0    0    Book_book_number_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Book_book_number_seq"', 2, true);
          public          postgres    false    230            �           0    0 "   Book_category_book_category_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Book_category_book_category_id_seq"', 4, true);
          public          postgres    false    240            �           0    0    Category_category_code_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Category_category_code_seq"', 2, true);
          public          postgres    false    238            �           0    0     Circulation_circulation_code_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Circulation_circulation_code_seq"', 2, true);
          public          postgres    false    222            �           0    0    Client_client_code_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Client_client_code_seq"', 2, true);
          public          postgres    false    219            �           0    0     Edition_book_edition_book_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Edition_book_edition_book_id_seq"', 2, true);
          public          postgres    false    232            �           0    0 &   Edition_process_edition_process_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."Edition_process_edition_process_id_seq"', 2, true);
          public          postgres    false    228            �           0    0    Editor_editor_code_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Editor_editor_code_seq"', 2, true);
          public          postgres    false    226            �           0    0    Manager_manager_code_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Manager_manager_code_seq"', 2, true);
          public          postgres    false    215            �           0    0 $   Order_creation_order_creation_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Order_creation_order_creation_id_seq"', 4, true);
          public          postgres    false    224            �           0    0    Order_order_code_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Order_order_code_seq"', 2, true);
          public          postgres    false    217            �           2606    16527    Author Author_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Author"
    ADD CONSTRAINT "Author_pkey" PRIMARY KEY (author_code);
 @   ALTER TABLE ONLY public."Author" DROP CONSTRAINT "Author_pkey";
       public            postgres    false    235            �           2606    16534    Book_author Book_author_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Book_author"
    ADD CONSTRAINT "Book_author_pkey" PRIMARY KEY (book_author_id);
 J   ALTER TABLE ONLY public."Book_author" DROP CONSTRAINT "Book_author_pkey";
       public            postgres    false    237            �           2606    16558     Book_category Book_category_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Book_category"
    ADD CONSTRAINT "Book_category_pkey" PRIMARY KEY (book_category_id);
 N   ALTER TABLE ONLY public."Book_category" DROP CONSTRAINT "Book_category_pkey";
       public            postgres    false    241            �           2606    16503    Book Book_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY (book_number);
 <   ALTER TABLE ONLY public."Book" DROP CONSTRAINT "Book_pkey";
       public            postgres    false    231            �           2606    16551    Category Category_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (category_code);
 D   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pkey";
       public            postgres    false    239            �           2606    16447    Circulation Circulation_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Circulation"
    ADD CONSTRAINT "Circulation_pkey" PRIMARY KEY (circulation_code);
 J   ALTER TABLE ONLY public."Circulation" DROP CONSTRAINT "Circulation_pkey";
       public            postgres    false    223            �           2606    16426    Client Client_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (client_code);
 @   ALTER TABLE ONLY public."Client" DROP CONSTRAINT "Client_pkey";
       public            postgres    false    220            �           2606    16510    Edition_book Edition_book_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Edition_book"
    ADD CONSTRAINT "Edition_book_pkey" PRIMARY KEY (edition_book_id);
 L   ALTER TABLE ONLY public."Edition_book" DROP CONSTRAINT "Edition_book_pkey";
       public            postgres    false    233            �           2606    16438    Edition Edition_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Edition"
    ADD CONSTRAINT "Edition_pkey" PRIMARY KEY (isbn_code);
 B   ALTER TABLE ONLY public."Edition" DROP CONSTRAINT "Edition_pkey";
       public            postgres    false    221            �           2606    16484 $   Edition_process Edition_process_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Edition_process"
    ADD CONSTRAINT "Edition_process_pkey" PRIMARY KEY (edition_process_id);
 R   ALTER TABLE ONLY public."Edition_process" DROP CONSTRAINT "Edition_process_pkey";
       public            postgres    false    229            �           2606    16477    Editor Editor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "Editor_pkey" PRIMARY KEY (editor_code);
 @   ALTER TABLE ONLY public."Editor" DROP CONSTRAINT "Editor_pkey";
       public            postgres    false    227            �           2606    16406    Manager Manager_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Manager"
    ADD CONSTRAINT "Manager_pkey" PRIMARY KEY (manager_code);
 B   ALTER TABLE ONLY public."Manager" DROP CONSTRAINT "Manager_pkey";
       public            postgres    false    216            �           2606    16460 "   Order_creation Order_creation_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Order_creation"
    ADD CONSTRAINT "Order_creation_pkey" PRIMARY KEY (order_creation_id);
 P   ALTER TABLE ONLY public."Order_creation" DROP CONSTRAINT "Order_creation_pkey";
       public            postgres    false    225            �           2606    16414    Order Order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (order_code);
 >   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "Order_pkey";
       public            postgres    false    218            �           2606    16540    Book_author author_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Book_author"
    ADD CONSTRAINT author_code_key FOREIGN KEY (author_code) REFERENCES public."Author"(author_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 G   ALTER TABLE ONLY public."Book_author" DROP CONSTRAINT author_code_key;
       public          postgres    false    235    237    3280            �           2606    16516    Edition_book book_number_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Edition_book"
    ADD CONSTRAINT book_number_key FOREIGN KEY (book_number) REFERENCES public."Book"(book_number) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 H   ALTER TABLE ONLY public."Edition_book" DROP CONSTRAINT book_number_key;
       public          postgres    false    3276    231    233            �           2606    16535    Book_author book_number_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Book_author"
    ADD CONSTRAINT book_number_key FOREIGN KEY (book_number) REFERENCES public."Book"(book_number) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 G   ALTER TABLE ONLY public."Book_author" DROP CONSTRAINT book_number_key;
       public          postgres    false    237    3276    231            �           2606    16559    Book_category book_number_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Book_category"
    ADD CONSTRAINT book_number_key FOREIGN KEY (book_number) REFERENCES public."Book"(book_number) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 I   ALTER TABLE ONLY public."Book_category" DROP CONSTRAINT book_number_key;
       public          postgres    false    241    231    3276            �           2606    16564    Book_category category_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Book_category"
    ADD CONSTRAINT category_code_key FOREIGN KEY (category_code) REFERENCES public."Category"(category_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 K   ALTER TABLE ONLY public."Book_category" DROP CONSTRAINT category_code_key;
       public          postgres    false    3284    239    241            �           2606    16466 #   Order_creation circulation_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_creation"
    ADD CONSTRAINT circulation_code_key FOREIGN KEY ("сirculation_code") REFERENCES public."Circulation"(circulation_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 O   ALTER TABLE ONLY public."Order_creation" DROP CONSTRAINT circulation_code_key;
       public          postgres    false    223    225    3268            �           2606    16427    Order client_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT client_foreign_key FOREIGN KEY (client_code) REFERENCES public."Client"(client_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 D   ALTER TABLE ONLY public."Order" DROP CONSTRAINT client_foreign_key;
       public          postgres    false    218    3264    220            �           2606    16490    Edition_process editor_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Edition_process"
    ADD CONSTRAINT editor_code_key FOREIGN KEY (editor_code) REFERENCES public."Editor"(editor_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 K   ALTER TABLE ONLY public."Edition_process" DROP CONSTRAINT editor_code_key;
       public          postgres    false    3272    227    229            �           2606    16448    Circulation isbn_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Circulation"
    ADD CONSTRAINT isbn_code_key FOREIGN KEY (isbn_code) REFERENCES public."Edition"(isbn_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 E   ALTER TABLE ONLY public."Circulation" DROP CONSTRAINT isbn_code_key;
       public          postgres    false    3266    221    223            �           2606    16485    Edition_process isbn_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Edition_process"
    ADD CONSTRAINT isbn_code_key FOREIGN KEY (isbn_code) REFERENCES public."Edition"(isbn_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 I   ALTER TABLE ONLY public."Edition_process" DROP CONSTRAINT isbn_code_key;
       public          postgres    false    221    229    3266            �           2606    16511    Edition_book isbn_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Edition_book"
    ADD CONSTRAINT isbn_code_key FOREIGN KEY (isbn_code) REFERENCES public."Edition"(isbn_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 F   ALTER TABLE ONLY public."Edition_book" DROP CONSTRAINT isbn_code_key;
       public          postgres    false    233    3266    221            �           2606    16415    Order manager_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT manager_foreign_key FOREIGN KEY (manager_code) REFERENCES public."Manager"(manager_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 E   ALTER TABLE ONLY public."Order" DROP CONSTRAINT manager_foreign_key;
       public          postgres    false    218    216    3260            �           2606    16461    Order_creation order_code_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_creation"
    ADD CONSTRAINT order_code_key FOREIGN KEY (order_code) REFERENCES public."Order"(order_code) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 I   ALTER TABLE ONLY public."Order_creation" DROP CONSTRAINT order_code_key;
       public          postgres    false    218    225    3262            �   Q   x�3�0�¦.�3.컰�3Ə3=713�L�%��rq^�a�Ŧ�pX)2��휕�y)�J���+F��� ,�7       �   B   x�3�0���;.l��A��>��.컰�®[9@�!�����@E� J�8��W� S�$�      �   "   x�3�4A.# i�i�e�	fq��x@�=... S1Y      �   "   x�3�4A.# i�i�e�	fq��x@�=... S1Y      �   7   x�3�0�b�Ŧ�.6\�qa���`��/�]l�����;.�s��qqq ��<      z   6   x�3�4200�5!NCN edlbjfna	dp��a*,� � YW� ���      w   w   x�3�0�¦.�3.컰	�sa��v��TӅ�.,���i��A���[��v �CNmsK0�4�2��z��b�D(�3Ə��.6^�����������b���� �Q      x   d   x�M��@PD�{�1�=�^���$*0�A��vdC������C��Y^�>�N<�`�:\�;���x���zu�gJ)N�`��#]����f5�ĦU��25�      �   %   x�3�40426153��28��8�8��b���� �X�      �   H   x�3�40426153��289/L����.��}a'��#��.6]�w�������^��=... ��%�      ~   2   x�3�0�¦.콰��&8�3Əˈ���[/6]l�HA9 �=... ��      s   2   x�3�0�¦.콰��&8�3Əˈ���[/6]l�HA9 �=... ��      u   V   x�M��	�0D��l/��h3V��f$'b��LPD�exW�'j���!*��,w&���������P]���.s/"7< �      |   (   x�3�4A.# m�ids��@�	H��Ȋ���� �-�     