PGDMP     3                    x            Bookland    12.2    12.2 ?    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    35788    Bookland    DATABASE     ?   CREATE DATABASE "Bookland" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Bookland";
                postgres    false            ?            1259    35916    Books_category    TABLE     ?   CREATE TABLE public."Books_category" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(100) NOT NULL
);
 $   DROP TABLE public."Books_category";
       public         heap    postgres    false            ?            1259    35914    Books_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Books_category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Books_category_id_seq";
       public          postgres    false    219            D           0    0    Books_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Books_category_id_seq" OWNED BY public."Books_category".id;
          public          postgres    false    218            ?            1259    35985    Books_comment    TABLE     ?   CREATE TABLE public."Books_comment" (
    id integer NOT NULL,
    content character varying(160) NOT NULL,
    time_stamp timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public."Books_comment";
       public         heap    postgres    false            ?            1259    35983    Books_comment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Books_comment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Books_comment_id_seq";
       public          postgres    false    227            E           0    0    Books_comment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Books_comment_id_seq" OWNED BY public."Books_comment".id;
          public          postgres    false    226            ?            1259    35932    Books_product    TABLE     ?  CREATE TABLE public."Books_product" (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    intro character varying(200) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    author character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    published_date timestamp with time zone,
    out_of_stock boolean,
    subcategory_id integer NOT NULL
);
 #   DROP TABLE public."Books_product";
       public         heap    postgres    false            ?            1259    35943    Books_product_favrioute    TABLE     ?   CREATE TABLE public."Books_product_favrioute" (
    id integer NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
 -   DROP TABLE public."Books_product_favrioute";
       public         heap    postgres    false            ?            1259    35941    Books_product_favrioute_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Books_product_favrioute_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Books_product_favrioute_id_seq";
       public          postgres    false    225            F           0    0    Books_product_favrioute_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Books_product_favrioute_id_seq" OWNED BY public."Books_product_favrioute".id;
          public          postgres    false    224            ?            1259    35930    Books_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Books_product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Books_product_id_seq";
       public          postgres    false    223            G           0    0    Books_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Books_product_id_seq" OWNED BY public."Books_product".id;
          public          postgres    false    222            ?            1259    35924    Books_subcategory    TABLE     ?   CREATE TABLE public."Books_subcategory" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    category_id integer NOT NULL
);
 '   DROP TABLE public."Books_subcategory";
       public         heap    postgres    false            ?            1259    35922    Books_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Books_subcategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Books_subcategory_id_seq";
       public          postgres    false    221            H           0    0    Books_subcategory_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Books_subcategory_id_seq" OWNED BY public."Books_subcategory".id;
          public          postgres    false    220            ?            1259    36005    Checkout_customerlocation    TABLE       CREATE TABLE public."Checkout_customerlocation" (
    id integer NOT NULL,
    company character varying(100),
    street_address character varying(100),
    city character varying(100),
    country character varying(100),
    customer_id integer NOT NULL
);
 /   DROP TABLE public."Checkout_customerlocation";
       public         heap    postgres    false            ?            1259    36003     Checkout_customerlocation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Checkout_customerlocation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Checkout_customerlocation_id_seq";
       public          postgres    false    229            I           0    0     Checkout_customerlocation_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Checkout_customerlocation_id_seq" OWNED BY public."Checkout_customerlocation".id;
          public          postgres    false    228            ?            1259    36013    Checkout_customerorder    TABLE     4  CREATE TABLE public."Checkout_customerorder" (
    id integer NOT NULL,
    quantity integer NOT NULL,
    price integer,
    ordered_date timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    location_id integer,
    product_id integer NOT NULL,
    phone_number character varying(10)
);
 ,   DROP TABLE public."Checkout_customerorder";
       public         heap    postgres    false            ?            1259    36011    Checkout_customerorder_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Checkout_customerorder_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Checkout_customerorder_id_seq";
       public          postgres    false    231            J           0    0    Checkout_customerorder_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Checkout_customerorder_id_seq" OWNED BY public."Checkout_customerorder".id;
          public          postgres    false    230            ?            1259    36045    Contact_subscribe    TABLE     p   CREATE TABLE public."Contact_subscribe" (
    id integer NOT NULL,
    email character varying(200) NOT NULL
);
 '   DROP TABLE public."Contact_subscribe";
       public         heap    postgres    false            ?            1259    36043    Contact_subscribe_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Contact_subscribe_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Contact_subscribe_id_seq";
       public          postgres    false    233            K           0    0    Contact_subscribe_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Contact_subscribe_id_seq" OWNED BY public."Contact_subscribe".id;
          public          postgres    false    232            ?            1259    36053    UsedBooks_usedcategory    TABLE     ?   CREATE TABLE public."UsedBooks_usedcategory" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(100) NOT NULL
);
 ,   DROP TABLE public."UsedBooks_usedcategory";
       public         heap    postgres    false            ?            1259    36051    UsedBooks_usedcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."UsedBooks_usedcategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."UsedBooks_usedcategory_id_seq";
       public          postgres    false    235            L           0    0    UsedBooks_usedcategory_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."UsedBooks_usedcategory_id_seq" OWNED BY public."UsedBooks_usedcategory".id;
          public          postgres    false    234            ?            1259    36080    UsedBooks_usedcomment    TABLE     ?   CREATE TABLE public."UsedBooks_usedcomment" (
    id integer NOT NULL,
    content character varying(160) NOT NULL,
    time_stamp timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public."UsedBooks_usedcomment";
       public         heap    postgres    false            ?            1259    36078    UsedBooks_usedcomment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."UsedBooks_usedcomment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."UsedBooks_usedcomment_id_seq";
       public          postgres    false    241            M           0    0    UsedBooks_usedcomment_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."UsedBooks_usedcomment_id_seq" OWNED BY public."UsedBooks_usedcomment".id;
          public          postgres    false    240            ?            1259    36069    UsedBooks_usedproduct    TABLE     v  CREATE TABLE public."UsedBooks_usedproduct" (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    author character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    published_date timestamp with time zone,
    subcategory_id integer NOT NULL,
    user_id integer NOT NULL
);
 +   DROP TABLE public."UsedBooks_usedproduct";
       public         heap    postgres    false            ?            1259    36067    UsedBooks_usedproduct_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."UsedBooks_usedproduct_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."UsedBooks_usedproduct_id_seq";
       public          postgres    false    239            N           0    0    UsedBooks_usedproduct_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."UsedBooks_usedproduct_id_seq" OWNED BY public."UsedBooks_usedproduct".id;
          public          postgres    false    238            ?            1259    36061    UsedBooks_usedsubcategory    TABLE     ?   CREATE TABLE public."UsedBooks_usedsubcategory" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    category_id integer NOT NULL
);
 /   DROP TABLE public."UsedBooks_usedsubcategory";
       public         heap    postgres    false            ?            1259    36059     UsedBooks_usedsubcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."UsedBooks_usedsubcategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."UsedBooks_usedsubcategory_id_seq";
       public          postgres    false    237            O           0    0     UsedBooks_usedsubcategory_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."UsedBooks_usedsubcategory_id_seq" OWNED BY public."UsedBooks_usedsubcategory".id;
          public          postgres    false    236            ?            1259    36133    Users_profile    TABLE     ?   CREATE TABLE public."Users_profile" (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    phone character varying(10),
    email_confirmed boolean NOT NULL,
    user_id integer NOT NULL,
    address character varying(200)
);
 #   DROP TABLE public."Users_profile";
       public         heap    postgres    false            ?            1259    36131    Users_profile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Users_profile_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Users_profile_id_seq";
       public          postgres    false    243            P           0    0    Users_profile_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Users_profile_id_seq" OWNED BY public."Users_profile".id;
          public          postgres    false    242            ?            1259    35820 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    35818    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            Q           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            ?            1259    35830    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    35828    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            R           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            ?            1259    35812    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    35810    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            S           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            ?            1259    35838 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    35848    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    35846    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            T           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            ?            1259    35836    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            U           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            ?            1259    35856    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    35854 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            V           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            ?            1259    36148    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    36146    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    245            W           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    244            ?            1259    35802    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    35800    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            X           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            ?            1259    35791    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    35789    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            Y           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            ?            1259    36179    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false                       2604    35919    Books_category id    DEFAULT     z   ALTER TABLE ONLY public."Books_category" ALTER COLUMN id SET DEFAULT nextval('public."Books_category_id_seq"'::regclass);
 B   ALTER TABLE public."Books_category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    35988    Books_comment id    DEFAULT     x   ALTER TABLE ONLY public."Books_comment" ALTER COLUMN id SET DEFAULT nextval('public."Books_comment_id_seq"'::regclass);
 A   ALTER TABLE public."Books_comment" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    35935    Books_product id    DEFAULT     x   ALTER TABLE ONLY public."Books_product" ALTER COLUMN id SET DEFAULT nextval('public."Books_product_id_seq"'::regclass);
 A   ALTER TABLE public."Books_product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    35946    Books_product_favrioute id    DEFAULT     ?   ALTER TABLE ONLY public."Books_product_favrioute" ALTER COLUMN id SET DEFAULT nextval('public."Books_product_favrioute_id_seq"'::regclass);
 K   ALTER TABLE public."Books_product_favrioute" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                       2604    35927    Books_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public."Books_subcategory" ALTER COLUMN id SET DEFAULT nextval('public."Books_subcategory_id_seq"'::regclass);
 E   ALTER TABLE public."Books_subcategory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    36008    Checkout_customerlocation id    DEFAULT     ?   ALTER TABLE ONLY public."Checkout_customerlocation" ALTER COLUMN id SET DEFAULT nextval('public."Checkout_customerlocation_id_seq"'::regclass);
 M   ALTER TABLE public."Checkout_customerlocation" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                       2604    36016    Checkout_customerorder id    DEFAULT     ?   ALTER TABLE ONLY public."Checkout_customerorder" ALTER COLUMN id SET DEFAULT nextval('public."Checkout_customerorder_id_seq"'::regclass);
 J   ALTER TABLE public."Checkout_customerorder" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231                       2604    36048    Contact_subscribe id    DEFAULT     ?   ALTER TABLE ONLY public."Contact_subscribe" ALTER COLUMN id SET DEFAULT nextval('public."Contact_subscribe_id_seq"'::regclass);
 E   ALTER TABLE public."Contact_subscribe" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    36056    UsedBooks_usedcategory id    DEFAULT     ?   ALTER TABLE ONLY public."UsedBooks_usedcategory" ALTER COLUMN id SET DEFAULT nextval('public."UsedBooks_usedcategory_id_seq"'::regclass);
 J   ALTER TABLE public."UsedBooks_usedcategory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    36083    UsedBooks_usedcomment id    DEFAULT     ?   ALTER TABLE ONLY public."UsedBooks_usedcomment" ALTER COLUMN id SET DEFAULT nextval('public."UsedBooks_usedcomment_id_seq"'::regclass);
 I   ALTER TABLE public."UsedBooks_usedcomment" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    36072    UsedBooks_usedproduct id    DEFAULT     ?   ALTER TABLE ONLY public."UsedBooks_usedproduct" ALTER COLUMN id SET DEFAULT nextval('public."UsedBooks_usedproduct_id_seq"'::regclass);
 I   ALTER TABLE public."UsedBooks_usedproduct" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239                       2604    36064    UsedBooks_usedsubcategory id    DEFAULT     ?   ALTER TABLE ONLY public."UsedBooks_usedsubcategory" ALTER COLUMN id SET DEFAULT nextval('public."UsedBooks_usedsubcategory_id_seq"'::regclass);
 M   ALTER TABLE public."UsedBooks_usedsubcategory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    36136    Users_profile id    DEFAULT     x   ALTER TABLE ONLY public."Users_profile" ALTER COLUMN id SET DEFAULT nextval('public."Users_profile_id_seq"'::regclass);
 A   ALTER TABLE public."Users_profile" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            
           2604    35823    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    35833    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            	           2604    35815    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                       2604    35841    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    35851    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    35859    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    36151    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245                       2604    35805    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    35794    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            "          0    35916    Books_category 
   TABLE DATA           ;   COPY public."Books_category" (id, name, image) FROM stdin;
    public          postgres    false    219   1      *          0    35985    Books_comment 
   TABLE DATA           W   COPY public."Books_comment" (id, content, time_stamp, product_id, user_id) FROM stdin;
    public          postgres    false    227   ?1      &          0    35932    Books_product 
   TABLE DATA           ?   COPY public."Books_product" (id, title, intro, description, price, author, image, published_date, out_of_stock, subcategory_id) FROM stdin;
    public          postgres    false    223   ?1      (          0    35943    Books_product_favrioute 
   TABLE DATA           L   COPY public."Books_product_favrioute" (id, product_id, user_id) FROM stdin;
    public          postgres    false    225   BH      $          0    35924    Books_subcategory 
   TABLE DATA           D   COPY public."Books_subcategory" (id, name, category_id) FROM stdin;
    public          postgres    false    221   _H      ,          0    36005    Checkout_customerlocation 
   TABLE DATA           n   COPY public."Checkout_customerlocation" (id, company, street_address, city, country, customer_id) FROM stdin;
    public          postgres    false    229   qI      .          0    36013    Checkout_customerorder 
   TABLE DATA           ?   COPY public."Checkout_customerorder" (id, quantity, price, ordered_date, customer_id, location_id, product_id, phone_number) FROM stdin;
    public          postgres    false    231   ?I      0          0    36045    Contact_subscribe 
   TABLE DATA           8   COPY public."Contact_subscribe" (id, email) FROM stdin;
    public          postgres    false    233   ?I      2          0    36053    UsedBooks_usedcategory 
   TABLE DATA           C   COPY public."UsedBooks_usedcategory" (id, name, image) FROM stdin;
    public          postgres    false    235   J      8          0    36080    UsedBooks_usedcomment 
   TABLE DATA           _   COPY public."UsedBooks_usedcomment" (id, content, time_stamp, product_id, user_id) FROM stdin;
    public          postgres    false    241   jJ      6          0    36069    UsedBooks_usedproduct 
   TABLE DATA           ?   COPY public."UsedBooks_usedproduct" (id, title, description, price, author, image, published_date, subcategory_id, user_id) FROM stdin;
    public          postgres    false    239   ?J      4          0    36061    UsedBooks_usedsubcategory 
   TABLE DATA           L   COPY public."UsedBooks_usedsubcategory" (id, name, category_id) FROM stdin;
    public          postgres    false    237   ?J      :          0    36133    Users_profile 
   TABLE DATA           ^   COPY public."Users_profile" (id, image, phone, email_confirmed, user_id, address) FROM stdin;
    public          postgres    false    243   %K                0    35820 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ?K                0    35830    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ?K                0    35812    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ?K                0    35838 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ?N                0    35848    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ?O                 0    35856    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   P      <          0    36148    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    245   $P                0    35802    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   Z[                0    35791    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   3\      =          0    36179    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    246   _      Z           0    0    Books_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Books_category_id_seq"', 15, true);
          public          postgres    false    218            [           0    0    Books_comment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Books_comment_id_seq"', 1, true);
          public          postgres    false    226            \           0    0    Books_product_favrioute_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Books_product_favrioute_id_seq"', 3, true);
          public          postgres    false    224            ]           0    0    Books_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Books_product_id_seq"', 22, true);
          public          postgres    false    222            ^           0    0    Books_subcategory_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Books_subcategory_id_seq"', 34, true);
          public          postgres    false    220            _           0    0     Checkout_customerlocation_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Checkout_customerlocation_id_seq"', 37, true);
          public          postgres    false    228            `           0    0    Checkout_customerorder_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Checkout_customerorder_id_seq"', 50, true);
          public          postgres    false    230            a           0    0    Contact_subscribe_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Contact_subscribe_id_seq"', 1, false);
          public          postgres    false    232            b           0    0    UsedBooks_usedcategory_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."UsedBooks_usedcategory_id_seq"', 3, true);
          public          postgres    false    234            c           0    0    UsedBooks_usedcomment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."UsedBooks_usedcomment_id_seq"', 1, false);
          public          postgres    false    240            d           0    0    UsedBooks_usedproduct_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."UsedBooks_usedproduct_id_seq"', 1, true);
          public          postgres    false    238            e           0    0     UsedBooks_usedsubcategory_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."UsedBooks_usedsubcategory_id_seq"', 2, true);
          public          postgres    false    236            f           0    0    Users_profile_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Users_profile_id_seq"', 2, true);
          public          postgres    false    242            g           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            h           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            i           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    206            j           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            k           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            l           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            m           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 144, true);
          public          postgres    false    244            n           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    204            o           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    202            F           2606    35921 "   Books_category Books_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Books_category"
    ADD CONSTRAINT "Books_category_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Books_category" DROP CONSTRAINT "Books_category_pkey";
       public            postgres    false    219            T           2606    35990     Books_comment Books_comment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Books_comment"
    ADD CONSTRAINT "Books_comment_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Books_comment" DROP CONSTRAINT "Books_comment_pkey";
       public            postgres    false    227            N           2606    35948 4   Books_product_favrioute Books_product_favrioute_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Books_product_favrioute"
    ADD CONSTRAINT "Books_product_favrioute_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Books_product_favrioute" DROP CONSTRAINT "Books_product_favrioute_pkey";
       public            postgres    false    225            Q           2606    35962 P   Books_product_favrioute Books_product_favrioute_product_id_user_id_cf373d1a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."Books_product_favrioute"
    ADD CONSTRAINT "Books_product_favrioute_product_id_user_id_cf373d1a_uniq" UNIQUE (product_id, user_id);
 ~   ALTER TABLE ONLY public."Books_product_favrioute" DROP CONSTRAINT "Books_product_favrioute_product_id_user_id_cf373d1a_uniq";
       public            postgres    false    225    225            K           2606    35940     Books_product Books_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Books_product"
    ADD CONSTRAINT "Books_product_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Books_product" DROP CONSTRAINT "Books_product_pkey";
       public            postgres    false    223            I           2606    35929 (   Books_subcategory Books_subcategory_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Books_subcategory"
    ADD CONSTRAINT "Books_subcategory_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Books_subcategory" DROP CONSTRAINT "Books_subcategory_pkey";
       public            postgres    false    221            Y           2606    36010 8   Checkout_customerlocation Checkout_customerlocation_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Checkout_customerlocation"
    ADD CONSTRAINT "Checkout_customerlocation_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."Checkout_customerlocation" DROP CONSTRAINT "Checkout_customerlocation_pkey";
       public            postgres    false    229            ]           2606    36018 2   Checkout_customerorder Checkout_customerorder_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Checkout_customerorder"
    ADD CONSTRAINT "Checkout_customerorder_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Checkout_customerorder" DROP CONSTRAINT "Checkout_customerorder_pkey";
       public            postgres    false    231            `           2606    36050 (   Contact_subscribe Contact_subscribe_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Contact_subscribe"
    ADD CONSTRAINT "Contact_subscribe_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Contact_subscribe" DROP CONSTRAINT "Contact_subscribe_pkey";
       public            postgres    false    233            b           2606    36058 2   UsedBooks_usedcategory UsedBooks_usedcategory_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."UsedBooks_usedcategory"
    ADD CONSTRAINT "UsedBooks_usedcategory_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."UsedBooks_usedcategory" DROP CONSTRAINT "UsedBooks_usedcategory_pkey";
       public            postgres    false    235            k           2606    36085 0   UsedBooks_usedcomment UsedBooks_usedcomment_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."UsedBooks_usedcomment"
    ADD CONSTRAINT "UsedBooks_usedcomment_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."UsedBooks_usedcomment" DROP CONSTRAINT "UsedBooks_usedcomment_pkey";
       public            postgres    false    241            g           2606    36077 0   UsedBooks_usedproduct UsedBooks_usedproduct_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."UsedBooks_usedproduct"
    ADD CONSTRAINT "UsedBooks_usedproduct_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."UsedBooks_usedproduct" DROP CONSTRAINT "UsedBooks_usedproduct_pkey";
       public            postgres    false    239            e           2606    36066 8   UsedBooks_usedsubcategory UsedBooks_usedsubcategory_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."UsedBooks_usedsubcategory"
    ADD CONSTRAINT "UsedBooks_usedsubcategory_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."UsedBooks_usedsubcategory" DROP CONSTRAINT "UsedBooks_usedsubcategory_pkey";
       public            postgres    false    237            o           2606    36138     Users_profile Users_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Users_profile"
    ADD CONSTRAINT "Users_profile_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Users_profile" DROP CONSTRAINT "Users_profile_pkey";
       public            postgres    false    243            q           2606    36140 '   Users_profile Users_profile_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."Users_profile"
    ADD CONSTRAINT "Users_profile_user_id_key" UNIQUE (user_id);
 U   ALTER TABLE ONLY public."Users_profile" DROP CONSTRAINT "Users_profile_user_id_key";
       public            postgres    false    243            +           2606    36177    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            0           2606    35872 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            3           2606    35835 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            -           2606    35825    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            &           2606    35863 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            (           2606    35817 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            ;           2606    35853 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            >           2606    35887 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            5           2606    35843    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            A           2606    35861 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            D           2606    35901 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            8           2606    36171     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            t           2606    36157 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    245            !           2606    35809 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            #           2606    35807 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    35799 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            x           2606    36186 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    246            U           1259    36001 !   Books_comment_product_id_f67d854b    INDEX     e   CREATE INDEX "Books_comment_product_id_f67d854b" ON public."Books_comment" USING btree (product_id);
 7   DROP INDEX public."Books_comment_product_id_f67d854b";
       public            postgres    false    227            V           1259    36002    Books_comment_user_id_165afd0d    INDEX     _   CREATE INDEX "Books_comment_user_id_165afd0d" ON public."Books_comment" USING btree (user_id);
 4   DROP INDEX public."Books_comment_user_id_165afd0d";
       public            postgres    false    227            O           1259    35973 +   Books_product_favrioute_product_id_ed36d03b    INDEX     y   CREATE INDEX "Books_product_favrioute_product_id_ed36d03b" ON public."Books_product_favrioute" USING btree (product_id);
 A   DROP INDEX public."Books_product_favrioute_product_id_ed36d03b";
       public            postgres    false    225            R           1259    35974 (   Books_product_favrioute_user_id_55d9e87a    INDEX     s   CREATE INDEX "Books_product_favrioute_user_id_55d9e87a" ON public."Books_product_favrioute" USING btree (user_id);
 >   DROP INDEX public."Books_product_favrioute_user_id_55d9e87a";
       public            postgres    false    225            L           1259    35960 %   Books_product_subcategory_id_6cf790bb    INDEX     m   CREATE INDEX "Books_product_subcategory_id_6cf790bb" ON public."Books_product" USING btree (subcategory_id);
 ;   DROP INDEX public."Books_product_subcategory_id_6cf790bb";
       public            postgres    false    223            G           1259    35954 &   Books_subcategory_category_id_c3726d84    INDEX     o   CREATE INDEX "Books_subcategory_category_id_c3726d84" ON public."Books_subcategory" USING btree (category_id);
 <   DROP INDEX public."Books_subcategory_category_id_c3726d84";
       public            postgres    false    221            W           1259    36024 .   Checkout_customerlocation_customer_id_e323b5b7    INDEX        CREATE INDEX "Checkout_customerlocation_customer_id_e323b5b7" ON public."Checkout_customerlocation" USING btree (customer_id);
 D   DROP INDEX public."Checkout_customerlocation_customer_id_e323b5b7";
       public            postgres    false    229            Z           1259    36040 +   Checkout_customerorder_customer_id_0564f263    INDEX     y   CREATE INDEX "Checkout_customerorder_customer_id_0564f263" ON public."Checkout_customerorder" USING btree (customer_id);
 A   DROP INDEX public."Checkout_customerorder_customer_id_0564f263";
       public            postgres    false    231            [           1259    36041 +   Checkout_customerorder_location_id_21e690c6    INDEX     y   CREATE INDEX "Checkout_customerorder_location_id_21e690c6" ON public."Checkout_customerorder" USING btree (location_id);
 A   DROP INDEX public."Checkout_customerorder_location_id_21e690c6";
       public            postgres    false    231            ^           1259    36042 *   Checkout_customerorder_product_id_4cd14126    INDEX     w   CREATE INDEX "Checkout_customerorder_product_id_4cd14126" ON public."Checkout_customerorder" USING btree (product_id);
 @   DROP INDEX public."Checkout_customerorder_product_id_4cd14126";
       public            postgres    false    231            l           1259    36108 )   UsedBooks_usedcomment_product_id_02b3ee78    INDEX     u   CREATE INDEX "UsedBooks_usedcomment_product_id_02b3ee78" ON public."UsedBooks_usedcomment" USING btree (product_id);
 ?   DROP INDEX public."UsedBooks_usedcomment_product_id_02b3ee78";
       public            postgres    false    241            m           1259    36109 &   UsedBooks_usedcomment_user_id_739ec0e9    INDEX     o   CREATE INDEX "UsedBooks_usedcomment_user_id_739ec0e9" ON public."UsedBooks_usedcomment" USING btree (user_id);
 <   DROP INDEX public."UsedBooks_usedcomment_user_id_739ec0e9";
       public            postgres    false    241            h           1259    36097 -   UsedBooks_usedproduct_subcategory_id_25d460a0    INDEX     }   CREATE INDEX "UsedBooks_usedproduct_subcategory_id_25d460a0" ON public."UsedBooks_usedproduct" USING btree (subcategory_id);
 C   DROP INDEX public."UsedBooks_usedproduct_subcategory_id_25d460a0";
       public            postgres    false    239            i           1259    36115 &   UsedBooks_usedproduct_user_id_b934e25d    INDEX     o   CREATE INDEX "UsedBooks_usedproduct_user_id_b934e25d" ON public."UsedBooks_usedproduct" USING btree (user_id);
 <   DROP INDEX public."UsedBooks_usedproduct_user_id_b934e25d";
       public            postgres    false    239            c           1259    36091 .   UsedBooks_usedsubcategory_category_id_5233ad5e    INDEX        CREATE INDEX "UsedBooks_usedsubcategory_category_id_5233ad5e" ON public."UsedBooks_usedsubcategory" USING btree (category_id);
 D   DROP INDEX public."UsedBooks_usedsubcategory_category_id_5233ad5e";
       public            postgres    false    237            )           1259    36178    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            .           1259    35883 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            1           1259    35884 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            $           1259    35869 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            9           1259    35899 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            <           1259    35898 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            ?           1259    35913 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            B           1259    35912 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            6           1259    36172     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            r           1259    36168 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    245            u           1259    36169 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    245            v           1259    36188 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    246            y           1259    36187 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    246            ?           2606    35991 C   Books_comment Books_comment_product_id_f67d854b_fk_Books_product_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_comment"
    ADD CONSTRAINT "Books_comment_product_id_f67d854b_fk_Books_product_id" FOREIGN KEY (product_id) REFERENCES public."Books_product"(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public."Books_comment" DROP CONSTRAINT "Books_comment_product_id_f67d854b_fk_Books_product_id";
       public          postgres    false    2891    227    223            ?           2606    35996 <   Books_comment Books_comment_user_id_165afd0d_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_comment"
    ADD CONSTRAINT "Books_comment_user_id_165afd0d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public."Books_comment" DROP CONSTRAINT "Books_comment_user_id_165afd0d_fk_auth_user_id";
       public          postgres    false    2869    227    213            ?           2606    35963 W   Books_product_favrioute Books_product_favrioute_product_id_ed36d03b_fk_Books_product_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_product_favrioute"
    ADD CONSTRAINT "Books_product_favrioute_product_id_ed36d03b_fk_Books_product_id" FOREIGN KEY (product_id) REFERENCES public."Books_product"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Books_product_favrioute" DROP CONSTRAINT "Books_product_favrioute_product_id_ed36d03b_fk_Books_product_id";
       public          postgres    false    223    2891    225            ?           2606    35968 P   Books_product_favrioute Books_product_favrioute_user_id_55d9e87a_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_product_favrioute"
    ADD CONSTRAINT "Books_product_favrioute_user_id_55d9e87a_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."Books_product_favrioute" DROP CONSTRAINT "Books_product_favrioute_user_id_55d9e87a_fk_auth_user_id";
       public          postgres    false    2869    225    213            ?           2606    35955 K   Books_product Books_product_subcategory_id_6cf790bb_fk_Books_subcategory_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_product"
    ADD CONSTRAINT "Books_product_subcategory_id_6cf790bb_fk_Books_subcategory_id" FOREIGN KEY (subcategory_id) REFERENCES public."Books_subcategory"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."Books_product" DROP CONSTRAINT "Books_product_subcategory_id_6cf790bb_fk_Books_subcategory_id";
       public          postgres    false    223    221    2889            ?           2606    35949 M   Books_subcategory Books_subcategory_category_id_c3726d84_fk_Books_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Books_subcategory"
    ADD CONSTRAINT "Books_subcategory_category_id_c3726d84_fk_Books_category_id" FOREIGN KEY (category_id) REFERENCES public."Books_category"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Books_subcategory" DROP CONSTRAINT "Books_subcategory_category_id_c3726d84_fk_Books_category_id";
       public          postgres    false    219    221    2886            ?           2606    36019 X   Checkout_customerlocation Checkout_customerlocation_customer_id_e323b5b7_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Checkout_customerlocation"
    ADD CONSTRAINT "Checkout_customerlocation_customer_id_e323b5b7_fk_auth_user_id" FOREIGN KEY (customer_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Checkout_customerlocation" DROP CONSTRAINT "Checkout_customerlocation_customer_id_e323b5b7_fk_auth_user_id";
       public          postgres    false    213    229    2869            ?           2606    36030 M   Checkout_customerorder Checkout_customerord_location_id_21e690c6_fk_Checkout_    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Checkout_customerorder"
    ADD CONSTRAINT "Checkout_customerord_location_id_21e690c6_fk_Checkout_" FOREIGN KEY (location_id) REFERENCES public."Checkout_customerlocation"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Checkout_customerorder" DROP CONSTRAINT "Checkout_customerord_location_id_21e690c6_fk_Checkout_";
       public          postgres    false    229    231    2905            ?           2606    36025 R   Checkout_customerorder Checkout_customerorder_customer_id_0564f263_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Checkout_customerorder"
    ADD CONSTRAINT "Checkout_customerorder_customer_id_0564f263_fk_auth_user_id" FOREIGN KEY (customer_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Checkout_customerorder" DROP CONSTRAINT "Checkout_customerorder_customer_id_0564f263_fk_auth_user_id";
       public          postgres    false    2869    213    231            ?           2606    36035 U   Checkout_customerorder Checkout_customerorder_product_id_4cd14126_fk_Books_product_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Checkout_customerorder"
    ADD CONSTRAINT "Checkout_customerorder_product_id_4cd14126_fk_Books_product_id" FOREIGN KEY (product_id) REFERENCES public."Books_product"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."Checkout_customerorder" DROP CONSTRAINT "Checkout_customerorder_product_id_4cd14126_fk_Books_product_id";
       public          postgres    false    223    231    2891            ?           2606    36098 K   UsedBooks_usedcomment UsedBooks_usedcommen_product_id_02b3ee78_fk_UsedBooks    FK CONSTRAINT     ?   ALTER TABLE ONLY public."UsedBooks_usedcomment"
    ADD CONSTRAINT "UsedBooks_usedcommen_product_id_02b3ee78_fk_UsedBooks" FOREIGN KEY (product_id) REFERENCES public."UsedBooks_usedproduct"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."UsedBooks_usedcomment" DROP CONSTRAINT "UsedBooks_usedcommen_product_id_02b3ee78_fk_UsedBooks";
       public          postgres    false    2919    241    239            ?           2606    36103 L   UsedBooks_usedcomment UsedBooks_usedcomment_user_id_739ec0e9_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."UsedBooks_usedcomment"
    ADD CONSTRAINT "UsedBooks_usedcomment_user_id_739ec0e9_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."UsedBooks_usedcomment" DROP CONSTRAINT "UsedBooks_usedcomment_user_id_739ec0e9_fk_auth_user_id";
       public          postgres    false    213    2869    241            ?           2606    36092 O   UsedBooks_usedproduct UsedBooks_usedproduc_subcategory_id_25d460a0_fk_UsedBooks    FK CONSTRAINT     ?   ALTER TABLE ONLY public."UsedBooks_usedproduct"
    ADD CONSTRAINT "UsedBooks_usedproduc_subcategory_id_25d460a0_fk_UsedBooks" FOREIGN KEY (subcategory_id) REFERENCES public."UsedBooks_usedsubcategory"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."UsedBooks_usedproduct" DROP CONSTRAINT "UsedBooks_usedproduc_subcategory_id_25d460a0_fk_UsedBooks";
       public          postgres    false    237    2917    239            ?           2606    36126 L   UsedBooks_usedproduct UsedBooks_usedproduct_user_id_b934e25d_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."UsedBooks_usedproduct"
    ADD CONSTRAINT "UsedBooks_usedproduct_user_id_b934e25d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."UsedBooks_usedproduct" DROP CONSTRAINT "UsedBooks_usedproduct_user_id_b934e25d_fk_auth_user_id";
       public          postgres    false    239    213    2869            ?           2606    36086 P   UsedBooks_usedsubcategory UsedBooks_usedsubcat_category_id_5233ad5e_fk_UsedBooks    FK CONSTRAINT     ?   ALTER TABLE ONLY public."UsedBooks_usedsubcategory"
    ADD CONSTRAINT "UsedBooks_usedsubcat_category_id_5233ad5e_fk_UsedBooks" FOREIGN KEY (category_id) REFERENCES public."UsedBooks_usedcategory"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."UsedBooks_usedsubcategory" DROP CONSTRAINT "UsedBooks_usedsubcat_category_id_5233ad5e_fk_UsedBooks";
       public          postgres    false    2914    237    235            ?           2606    36141 <   Users_profile Users_profile_user_id_d9e76b0e_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Users_profile"
    ADD CONSTRAINT "Users_profile_user_id_d9e76b0e_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public."Users_profile" DROP CONSTRAINT "Users_profile_user_id_d9e76b0e_fk_auth_user_id";
       public          postgres    false    2869    243    213            |           2606    35878 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2856    207    211            {           2606    35873 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2861    211            z           2606    35864 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2851    205    207            ~           2606    35893 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2861            }           2606    35888 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2869            ?           2606    35907 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2856    217    207                       2606    35902 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2869    217    213            ?           2606    36158 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    245    2851    205            ?           2606    36163 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    245    2869            "   y   x?m??
?0 ?s?/N;??x??q0J??HmF?????î????.a?1\??lR}????b??Kю?3=gxP??,	mJ?UËQ?b˸I[??p?(?ٖ^I?	??;+s????s+R?L?      *      x?????? ? ?      &      x??[[?Gv~?????]???23??Xw?$;?cA??H????S?M????<,??s?%??S?d?<v???Ѕͮ˩S????G/\i?.?nԭz??ܨƩ????V[??֙	?ϮUo??x????xm?ތ??)c?????깶?tqT???λv?S;w??????\b??n?7??dM??Q???U????2??Uh??g?I\]u?9U?=?0?L?IV?H???K?j?]??Fm?/w??T????Zy]m?t?/Ą1ֲAe???ٙ*p??0?`1qg?Z??C0AN?U?-?;k? n?0??~2??wiPn?<??n??:kl??Ԡ?yU???F?s?)??'YJ??????`?&v?p^?n??`Pz?0D8???:??Y?v??7`9X?????9?O??}arU?d?;?d;>?????m8,LF????? ?j????????v4?Χ????ٵ?]??.o.W??r1]??yzysq9ڌ?g??????׆}I?F???pܓ??;c??|?|6??4H?Z???????_?8??ܷUc<^5໫?e???2^O~??ƪv??݋~<7??U?ߩ?m?H?Ap\fLn?(?o??$????????ب?)?????3??!#i ???t?rTP#B?-?_	??>?iJ??cU?F?w5V{?+JW?9??m????_????g?+('f??4LyM)?*??,???8&Փ??? Ko?#?? ??(?9Uj????8?[?ܚ*??N8??????sߝ??Lh????,ÿca_????)m[*0'??8x?h2Z@??????T?'IN??|@?糛?j??^Η?'??:??E?????ߙ5tҫ'6??????N???j>??????8H3V[??7?d?7j?2?n???hû\C??F??U?ɰZ??b&?>?5?R/
????r<?N????+?88?'????a?ccM?Cr???-6ٚ*??(LfӍa$??1M??ƻ????????*??????7m?q?g???b9??.lla?????
p=t?|lÇ??w? ??p%޹2I?`?D| ???ʬh]Φ`G??O??\Օ`l??}??mm?ppG??6W-?????d?);I??C;?͞,??Wˋ??.?f????<<7n?u????V??7O???
WC?????dq]?5?H??yߚ?h.`??p<H?_?.????? <8P????"??)?????"?)???2Zg????f:Rx???????D???X?`?A!9@?B ??4????Uj&?u~k??p?JR?\?BO?c??????sTȱ?&@Z?X??????4Q??Xc3H?????]??N8?E??'F?I???%???n:P??ܣ?? a???v???`??=?#??xc?-n????$?,m?7_? x?>}{???m=/??	5??N?y3q???&#d>6?R?9?_?A?s܊+??ߺ?j????k??fDa?۬f7??I?W???h???f??I???.?r??(?o?f7ze6???J???r}???Өϟ?;"_uW?ۆ??U??????!%?-??tDB!D@?azau?]?a? 0D????@?KPj????:+(d??-$[?C?@?????m?BWr3$?<?7?u?????* ?tq?L???`?;C?6?I?9?;??sP????`??41?c@?&Q.??}d%BBD?᠍?e?Ǜ9	??a?.o.?&????rv???ٕ?K@?%V{l ???B???V??7???XC?????؁`??-?M??0g?????=?f?B???h4??痪??F??[!???〈??21?)Uaqbq/Q$??epG(7?V???????a>J?Q`Y#??{gH?M??eY[Gd3?]?R?Q?	*UMw???fw?X?D(	r?????c?Z???_ph?'TE0$?&P?U??-M?8?`CN4'??`^?k?H??#n?F[Jy?G?Z?:?z1?	y7????y?/??Ǜ??Ca??f??\-.?V?'?^?-G?n߿x???o?>yy{?!??????܃??=??-!??v???e????0?ΗN%???8t?b ???Amz?~?T?P?2?EL? ???]??깇K0?3b??w??L?w;#~N?7S?ڱ-?1u??D??Q3WU?b?????3s%q?δ??-%[L?3ĵ'?z??T????Crtqsq?t??b???Vb?????-??xG?w?q*?U}??9??C?~???'?4?'?'1.H%{D?@}a#????@z;??i?'??f?e%?v?Y?`1?c%/K?H?PB?f?0lw? '?*n??%?4E?C??e?R?1???:?3??&[Z?????a% ??1h*m9??N??d?`??)?-?Q7muשxz????
5x?ڈ>?A~!?ȯ???с???d?"B??????@???" ??????y???%Y{wg8l;N1k]hl?1@Q????,=?g?x??LL??G????l????N??AAD?????\>?;˛?b2?\.?T??l6?y	???m	v_??Z??x#??ߖ?s?@?J?-??ީt?c???~?5V???;]??????S????>?Lgx?5M~?????![? n??????5?H?#???2??I"$?t?7?-A-Ȃ9G??RB0i?????ꈐ1`?=?KPb?͖?A?"i?G?t+??????A???.??`E???$?j?v]???f??XMFא?/xv???????f????gWW˓?\??.F/t?0T!?? ?H?COp?'	??W?@-Jw?g??T[n????@???9??????#<????i??????e*	?1??%??Ԥ??ɓ????(q-?p???_~GG?ŉ7Ԥ?
N??pp@j?9????]]`????B?~)\TD??pS??)??w???v+1??vb?Ps^hY&???z??Dq?x???Y?
B'	e}Ld??U??~?#??mR?ƀ޷L?`?Ѯ%??+?{L?ot??r4?u???r:z ??7?c? n?P????t	=(??lv9z?4?ͷ??`4??F?%????aʓ8b??թ?Ѳ?!??{????????a[?¦(?_??V<ұw?g?{???Qe?4^s(M???a?릛?? 1r???bm?C?:?????-?,?p?R%?> Q???(e,"??N??ۘ???Ҍ????e??n?ɷ??^?}7I]ӧ΀??&??t????n(?%?K@????jyu?\xā ?6`?b??%7?0??r??ṅ??Y??{o??ቋ?F+`?1?a???O???὆?d*?x???C??A?T??d?p?x#:??	?Q????޺???8??t??A?zos*???5P??{ *pC????m???^?u?&Vt?*?l?2@??m?5>g???´e?O?(|m???x????*?q8VAǺ?SUfJB8???Y`???km??֠?V.h9?cy???n?C?n???wl????Ӣ3??????݉p7?N????@"?N?i?r@????bDei?`?'?)'?v?RYn??N???E?'L??6k7FWR???M??Y?=v;lZS?Пv????/???t??N?v?xP??h%? ??f3???b??5<?d??^?O????͖r^؜Y??)?????<5R2??ѷ?_|?vEa?Fr{?&xQt?D??&ƪ?-!&-?+?IJx?q?[?A?0*?? ³??8?R'*?>?եj??NH&?ac?ڵ,?K???7??O1??\??fz ?!F?=ӣ	Pf??~ b??ֵ?M?6t??>0???U?Z/7I?????×??s?S???????^?,UO??>?4?k?emb??3?ϔ?X??;??C*???b9?????|?bz6[?na4$?qw?????????`???????4??	???#??kG??8ɘe????1?9s??0&=x?RpKS?? 6E???X????-)s??h?kC?6V|KĨg1A??8??Ç4?Hk???Lюy??.&?8?9?B?.j?\GHe?(	?<J-??Β?X???ϟ???d@????Ѱ%?Zr6GY ?u?? v  ??.*w=V'`??y??=+?Rx?4vp?Л??u?Z????p???1??ã폂?[#z??*???t??1Y?kN?\CS/???鬒n?4{8??l?2???0?????????
?PĂ	qG?????Z?U?^?C?l?-K܍?'???pO????#??????????bru}?4 ,?gs,??????3??>~?f????%?|,\?P*?AM0?C?R??Kq? ?T???sēk?5#?SA???a{H??????V7??)ls????X??H??̫L'??????(??cZ?JL??? ?f??Doǀ#?G???:t?}?W??p.??T?R`ot?>?a?B?ʲp???^&@X?q?\???-?6?~N?X"%«x<r1?Gm??L?????=t,u}o??-???T?։?YD??K?????,6R3,-{?[?}Td?1`??|(f=ċ?o????b??oNB???s>V?O??@?F56???O
j??????????e???rg`R?iZ?cI???????X?ͮܽ?J?+???S?{&?????'C?ܽO?z3	)??<ۘ??B&???/Rl???1?غCǍA?v?COX???4?`?.??h?z:R?ǰ.?e?????eHh?P	??vPL:z??&lÖR??V??Y?D׆?9&?H???s	?Sժ?u3?+ƴ??A??u]X!9?]l?{?`2`?k???6@A??w?-????d"?? -?ѳ??!?)?L.??? ?8??S	?|?$:??;3?F?7???6??DV_?OU?????`?(<?GC?$?|Q??%4r@?T@_?^?	H?Ų?\f?WL>??#?H??q????r,?ݦ4?)???t?o<??Ѣ??s??oE?E(ʁd??{Jn??J.%A?V?e????}ݤ??c?#??o??S?^?l4?%8???s }?ԽQ??v0/?8??o??eǎ?^IqH?P?y?{U#??.?J???M??{?`x?R?9qJ
?G?@??? P?
A	n?WKIi?gP9?{?K˵n?A???k?????">??HZ|???5$??CU8?Of]?g+?????)???????D?????vCq9Ux??D{)Y?B??ʾ?ia??ذ?z?'????]?Շ????%/?~?ϟ~??˹)}ݖ?N??}/1ޯ?gKG*?b&q񊽇?7p??nv???jo??l??ww?qj?t>?[??????ɿ?|:?b??3 -6???Bvpn?O?3N?n??J #?m?/?L?8K?K<Ʈ??lMY?I"???H??pA??3V??8?@H#?????W???f???L???g
3??n8$Fcs?J?X????{c?7??SCA???D0?j ^?Q??5]???:?UJ3,??cr[???????h??f]??н^?w????????BaL=$????f<?lF5?q#???ps?
??,!bTi?????oRm?%(??l???? ?????>^e????4??y1?  񉟰?F?ϡ????F"?u+??? 2d:5 D?t?p]Y7?Od?c???j??)9~?\?]
N
?|6)??????&?Ų?=?4?=T,??3ܞO/g????????????M2g      (      x?????? ? ?      $     x?-?KO?@????????#M)?G.&?Z?$??Q)?????J󍽣????G?	le6p?Q?/z;????u^?Vp?C$??k?SF?zRr??J5?(?+4p??@?Bq?pƮ?#I??????U????Um?^	??Õo??*?3E?:?ߟ?0?????C???I??=??a?x?Wp?e)???????<M??r?3?Z[??P?SW??ZS[??x?A??,?ɺ???????K?҄?q1??1??j?      ,   _   x?36?,?O+)O,?LN?,N,I?OJ,???N,??M?K)??K-H??4?26???RS?Ĕ??4N?"mƉ?&s?`?M?p?>?9?%?Ep?1z\\\ ?N?5      .      x?????? ? ?      0      x?????? ? ?      2   @   x?3?t?L.??????MLO???/?O?/?K?+?K?2????S??3$??D?)???|? ?"?      8      x?????? ? ?      6   \   x?3?LIK#Δ?????40?ibj????,-NM?O???.?7??s?4202?5??54T0??2??22?366340?60?21?4?4?????? ? ?      4   "   x?3???M?KN?4?2???/*?/2c???? o.?      :   j   x??A
?  ???+???jB
?C?%????Et1???Ӝf?@????'	?"L?@Z??i?jote??@'?b?$xڇ??b?|=??P?^?p{??*??n?zvd            x?????? ? ?            x?????? ? ?         ?  x?u?K??0E??*????a	?2KU
?q0?ORo?1Rm1????m?oۙ?鑝?6????????8?\?Z?å?r?}z\????E [????e ?v???^U????{7?]?0y???????H???ݳEE??;?????OS???u;i??/@????$g+p? ??S??֕??p^?J? xyj~7???7z??LKײ???M???ĺ?4??????׊??wlsE??u?z???u0W6W???$LM;c`?01?W??I????M?<^?\918????&?19?ŹF???x???:o????z	?n?aC?T3.Il%?b?%?HO??|?!?q>3?????R??`o?@$d??.K??????eA@???2?B?	?r?T6???@;'?{?/?0?Anå-s?Y?(??:??QN?+eF??|?IX???2tgo\?m??TqP wY?	?r3??P$?9N?e?????3?4??m? x?m?????????$??_o?"PIa??7?b[a????w?*/ڪL?F?Ua ??U?hU??D=$Qŀ??n?1??????1?~2[Jj?On?????B}Hn???????w?-????X(]z3n?5U,?S??ݖ?'???C??4?Q?zH?f?&A?z o7T6??Z?????V?DѢ??>Q,9&??u;fGܒ{?OX??.i[i?`??%?+??H???B??G$??Yk?/3?           x?m??n?@??????;#?\?Rk[ѐ??Rc?,?.????ӗH???3???$s?????>g@?pSjxx=˩????:?D?UXl????r?d????w?W????HR_9?!Z{h??????iג?b!9C??u?DbY??>gI?mʼy?!??{x?#?!?tHS?O??j:?.}???U]?2܈??c?O?z~=/?mp??V?bV?????zNv?r?H; 6??L?4L
?6It`y,?{??:?[!m.J??˦??͍??׿?ך?(_!?h#            x?????? ? ?             x?????? ? ?      <   &  x??Zێ??}????KdMtW??6??ذ?m??}?%?ĬD(j????{?)?I5?9?7?8??T_NU?*?&@?<!?	)?B?S?Rk?'.??,?mYW??????jU?/??????D'?L!͸??I????ղ@?`>_ dBb???|]????6]6?J??@jAEf??F8????b?@??ׄ??8?aBLdJ	%?Ɇm??O??2?΂%	eh-???'k?Vk?X???k????6dm|k?2?
???-??iݬ??X????kH?*?P<mm???/?,?????&????z|S???<???Wm??????B{x????Kә?Zw$??5~b,?ԇ??h`oG???8,(˸1?iW???B??B?????>t?'?J?I?Yġ???\?7bÕ)A????2 =???{;:?????xr???ũ?9ɘ??????;?o?l?????J?	]???rI??3??C?I??P?<?]?ãC?U?w??t?.?qb???%???ўq?w???y ?;sɹ?٠y ?;sD?30h???H???4?5??j?As?|????j?C??????3??????8%j?e??l?D???=޾~?o????|?F?$O?&?@??}?x??߳???)Qb?f?fY}0
9?% i??FBݪ?wu??ae?8@3?F+p???n???@0r???.?AG?,?L?B ????t?I?)`?҂?6????M???oQ?Q??1??)Ϙ$"D?f??Ҕb,a??p?G?4?l?? ???p?$!???E/??!=n?H`J?s?щL?Q??d3J?鰽e????ҙ??}V????I???i??i?p??????"???!?du????x?5f?:?y??c?%?,??)??+E{?L????S?(??o?~<B?jȇ3???q???????????D?~?`??3??	???Jg?'"?C?4#?ៈ?OE?,?ៈ?O?????3??I??{???????.????????O??϶?d?Uf=??M,???0>??	?????*4ڰ????{(-?K?	??}???I?%aB< ?????2A{+&#, !3?xNa?l????Qԝl??msߴ??? ??6A?/?i?n?3??:??^??5??Yv=?f}Q>?J?}?ܬ7?Y?c>7-?Y?ֶ>7\?~ZDw>5??[?|?`}(??t???ۺn?Cl??F<EIN?Xq&%?@?_/F?]??A?΃?s??m lC??????QO??.?@qܟUo???(:??6"bÕ???_???He????J?mT?F??ی?P!????F?7??xG???x?75?p4?2}h????ۊJ?*???h???|?㜑*?????)???6$?;?	???!h>4GX??Ūؕ?ʄg??
?X??%??̵1ﰎ??y?Ff???b(???????V7a?m?2M?q?k??[۫]?/nBamɀ%??y??nۇ??\۴???????I,[?0?k?'?? ?L??ؑ
?4??48.A?D??/z?9?????t???)g?Tz??]?B?2??B?I-?S:y[??2&??DXɨ??\C???Ӳ^7??&&??0?+??aztRo??mL.?1vG2N$3?=ο3~pt#6????`H?m??>?X:?DB?(?]v?!z?>݁[驴 z????????F?yH??kBO?G?? ?`R?j7?N??C?1?DɄ??&~?A?ڱ?M?ˣ?
?c?-ҵn˻|???L8??z!'??M?????7?mhB[2x?¸??&?yY?Q?	i?A͉pi??gu????x?3᭲?˰ :? ???q;33!??uU??	K^??lM,?0up?\l???7<y^??ut1tB^e󲑄;?"yzؗU??2?N?k߆?w1?I??u?o?x?	?????ǽ???1??3@??N???N^T??嶾-Ve4????{?ϙr?3ɳ?v????¦?n?t.E0?Q?,Ȅ?????`?Y%???#Ȅ????m8\??s?;!??uD??n7,??P?⛙??t?2%? ??k??U?-?????N??Lp6?5O>m?tHY???v}??G46q???"?ꊪm???L? ??k?~?? _Nn??["?YF?H?I?F???ײݧ?Mz]?7?????M??vW????6?)????0??t?y???^?ԋF???b?`GX???ר8^Ϳ??x??_?޿x??*?@?#a???Mc???T???_???"?J? I?:}?x??:?x?/?}?????+??&??W??Vʻ??ѾkeG` ?a\b????i?u??-C?(??
?M??.??r]?J_Uw???Q\?G??1?1?g??"?3???????????l9~?_8ڟߨ?????)?E?W????n???r?>???Y??r?ȁz覲
?7??cr)???wO>_??Og??	?v?G??b3BG??.e?????ؗ????*w??Tޓ????^F4W?:q???Eζ,"o+?p~?eL	'??????~S??v*}V?0a?>?????Q,??́?Y&???u?O?????Z?~?~?MG????????w??X????:?\ ]K???.
{??%?W?X~}j?`{q??3#]??$??????ɿY??~wT~??=?ݡ*???????Y?Q+L?WQC\U&?&?~[??????>P?????lBj???O:??G?~??
??~?)?DZ??o??E??m???A???????????a?O>???y]w?d??p???????pخðb?i?1ʫ8u??=z????o?         ?   x?e??r?0D???t0$????l5x???%??*$?6ܤ?yڕ?6?8@??︅??F?)?Dp7+]?2b5/E(c?5L?#??z??pg???߱'<?'?ͰV?cK>.???Ks?E4*?????,?N?z?@?9^?NW?7.
??r?ܳ]???????!WO?`/?????Wr?2_e?{K??D???}         ?  x????n?0E??Wt_??9|x?|CwUf!???$_*?(f!o?=޹??w?????ꆂ1????.???}C<???)????I??r??EF1a/~x???Q
???ĪB?v?????	? ?\/ Z? ??y )? ?
??m<˪?	?Q?Vm???,cy??F??
????H?????Ϯz?Ӹ??
o??8??1$???
	FF!?w???Z0L]?J?N????????}?aB?Ul4?-????P??I?6!?q/?1??C[?M??<?(?)rK??)P4gBE??R???)? ??????d?(0?3C??t?#Gf(??l???x?g???wÐ?c0?(?m???*???U????p??wۻֿ??%?9$?N????WN??p?j?٧?????ו?oGh?)N7?cU?;??]ٺ,??2?	?4?ÀmF?۫??z??f?m?7۸?????nE?Ʉ?n>?ֵe?쒌А??H?3i??(?_Ǽ]?1:a?3?)?q?F695?<H?J?<?????S?'??:ag??!e?C??E?Z
z-??\??>b??????./?I?4:\Ǒ???N?خHH??׻???uMk)Ri<Ҁ-?K???]???C?8;?H$??5???Q???)?y???N5?bp?˻?@kAk???FE[M??[zu?ͳ????_.+~b?DtD!9?T?:??&;t[      =   ?   x??M?0 ????Cy??m?[5?M??,?d???e???9?O@????vvTܿ??M^y=??|?{?ݺ6鶵????f0:?\?Σ)?n?65?j??4???o/?n1VXPϊ???x\f?Ĩ
BP!?		?	gਦ????]D?'*?     