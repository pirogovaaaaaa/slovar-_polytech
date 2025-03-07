PGDMP         (                w            date    9.6.11    11.2     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16384    date    DATABASE     v   CREATE DATABASE date WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE date;
             postgreadmin    false            �            1259    16446    opreds    TABLE     W   CREATE TABLE public.opreds (
    opred text NOT NULL,
    opred_id integer NOT NULL
);
    DROP TABLE public.opreds;
       public         postgreadmin    false            �            1259    16551    opreds_opred_id_seq    SEQUENCE     |   CREATE SEQUENCE public.opreds_opred_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.opreds_opred_id_seq;
       public       postgreadmin    false    197            �
           0    0    opreds_opred_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.opreds_opred_id_seq OWNED BY public.opreds.opred_id;
            public       postgreadmin    false    198            �            1259    16616    terms    TABLE     �   CREATE TABLE public.terms (
    term_id integer NOT NULL,
    term text NOT NULL,
    naprav text NOT NULL,
    opred_id integer NOT NULL
);
    DROP TABLE public.terms;
       public         postgreadmin    false            �            1259    16614    terms_term_id_seq    SEQUENCE     z   CREATE SEQUENCE public.terms_term_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.terms_term_id_seq;
       public       postgreadmin    false    200            �
           0    0    terms_term_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.terms_term_id_seq OWNED BY public.terms.term_id;
            public       postgreadmin    false    199            Y
           2604    16553    opreds opred_id    DEFAULT     r   ALTER TABLE ONLY public.opreds ALTER COLUMN opred_id SET DEFAULT nextval('public.opreds_opred_id_seq'::regclass);
 >   ALTER TABLE public.opreds ALTER COLUMN opred_id DROP DEFAULT;
       public       postgreadmin    false    198    197            Z
           2604    16619    terms term_id    DEFAULT     n   ALTER TABLE ONLY public.terms ALTER COLUMN term_id SET DEFAULT nextval('public.terms_term_id_seq'::regclass);
 <   ALTER TABLE public.terms ALTER COLUMN term_id DROP DEFAULT;
       public       postgreadmin    false    200    199    200            �
          0    16446    opreds 
   TABLE DATA               1   COPY public.opreds (opred, opred_id) FROM stdin;
    public       postgreadmin    false    197   r       �
          0    16616    terms 
   TABLE DATA               @   COPY public.terms (term_id, term, naprav, opred_id) FROM stdin;
    public       postgreadmin    false    200   �H       �
           0    0    opreds_opred_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.opreds_opred_id_seq', 175, true);
            public       postgreadmin    false    198            �
           0    0    terms_term_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.terms_term_id_seq', 183, true);
            public       postgreadmin    false    199            \
           2606    16700    opreds opreds_opred_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.opreds
    ADD CONSTRAINT opreds_opred_key UNIQUE (opred);
 A   ALTER TABLE ONLY public.opreds DROP CONSTRAINT opreds_opred_key;
       public         postgreadmin    false    197            ^
           2606    16598    opreds opreds_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.opreds
    ADD CONSTRAINT opreds_pkey PRIMARY KEY (opred_id);
 <   ALTER TABLE ONLY public.opreds DROP CONSTRAINT opreds_pkey;
       public         postgreadmin    false    197            `
           2606    16696    terms terms_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.terms
    ADD CONSTRAINT terms_pkey PRIMARY KEY (term);
 :   ALTER TABLE ONLY public.terms DROP CONSTRAINT terms_pkey;
       public         postgreadmin    false    200            b
           2606    16698    terms terms_term_id_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.terms
    ADD CONSTRAINT terms_term_id_key UNIQUE (term_id);
 A   ALTER TABLE ONLY public.terms DROP CONSTRAINT terms_term_id_key;
       public         postgreadmin    false    200            c
           2606    16660    terms terms_opred_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.terms
    ADD CONSTRAINT terms_opred_id_fkey FOREIGN KEY (opred_id) REFERENCES public.opreds(opred_id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.terms DROP CONSTRAINT terms_opred_id_fkey;
       public       postgreadmin    false    200    2654    197            �
      x��}[�$�q�sׯH�i�N_g�"�b���X`	��/�M��)��KX�}�ٞ��ns ��J��@���Ϊ���d�����r�\��	�a�ܩ��<�8_|q9��pڷ����7����������.�'w����M?���g��M?o��w5��o���������-���><h3�g��=1<=m�Ǜ����g��N�w�ON��#f�-��~�ل7УN�_�_���m����� :����=�9���ҋ�;�h���͖&9\6a������rB?��G�L^8�w?��P���)���tG���_���0|����7L�o��^q�?�h�Mx��p1�	h�_~����	aZ`�c�ۆfW.,:~?���L��X���G4x���Kh�lB��ʰ<��f�b�t�4<q���u�iaֲ�s��O�_<��}1�^��c����N_Һ�1YZ{���vh���[o�BʛYnZ��rK�	��r���rxK��a��ϛo~���Y����ȳ(���a�p��E	�*np�����Ц�,xکH���,bD�Ed)o���U-&x��<L�œ�b�:|9%A]���p�Ϲ
C��"K��!W8d���N����XJ�}��<���{&���g]�����,�����7��߯xU��S&�߸����S�<��g��:�pү0�ex���.9��3dV��"�m�q9#�pKK�����E!\��M4�a� ���+�7���AAcX��_Oh���\چ3i��#~���u͊r#;:��c�M+����7�l�|�6����=��MY�-x�W�r]@f�SZ��wA�^�v�ӣ����9�ANDu���h]�q�lD�gQ-��~ŇRN��o)?]�}a���d8*Qd�DՅ]ٟ��d�H�B�t��jh*kYsLkΛt>Sՙ};hʙ�ALLtC����ײ�x�տ0�-�u��0�0�<��|aC�
ͽ���j/�e\�\�ߤ©2���¹�ga�&r�i���rx9D�Gօ4>�w�b:qQ#!Zc=�69ڟ������B��n�v�A�"�q�ư�i�3��q���p���m�:h�6|�3���� ��#�vt�e����%|���'M����GDlE��ɀi�O����~���XO��7|X����]��i>��?Е������gx3���.ć���V�*�i�G֭�aI�]cp�+~�x謁�_6�M��£I���n�ܖP1� p�>�4��m ��)-wE)�#�	�q<��% VL�L�˝��i�/:��JN����$+SӠ��};H��dܗ�5o���G�|"c�6�q+��S��uO:_S7f�����bW��W0367z :�md�OpH�=�hW&�+�Mh�up��g��>��_����u�]���)he�G�G�e��A�<C�� �M��mX���d��K���b��I���t��X���x���~e�?�Jw�F��^�Da�v:M��H��,̚�H����L�gb�?gO.�a������?� �ˊ-)A�������'K��/.	)*7y�4��t�6�7ZqQ���w�3��2�Ŕ���#(#��u	��xc�fht����1e�I�?����0*��S�ݔ��0�{v�	��:Ҏ�_�B�1�3��0�k(�|.a�^MRM@\ts�+�3��l2{�_>���}��O>�$��x�<#��EzJ�7AV�L����y� ^>�Yc�Q�G�9`�59Q'�R��}�\W�%��v��<m�=�1��3,i�db�B%�sUA��N>�û>e�#ه��c���4P���_�
(Pv+��P�gJ���	����I�a5C^���lc�'*�-ԙ(R�w��Q��J�n]_ESU8r���&��V�w�}Co��B_��UP�鬒֤2*��N]�Ng�A4���_4px!7)`n�Q��<���J�����*�͎{j����?�7���F
c1<鿷,��m^rٚ��<�#{{�٘|e}���+f릑�L��[ze�0_�?�-��Ä��پK;{���dM'^fGb#����80yN�|�!ˡV<�:��N���-�J�������'��^\��;U��*`���3��+�4���^(�Oi�����b�T��+�@��B;��� /��r�F�z�� nvRX�ᵳ�"SY������E�tO�R�}#<G'>-�ac�������=}N�Vυ8����􄱷 ����i#�YP,���w��4E���zQ��ǒ��"RC�!|p�/��ů�;����'�����
}?�O��\ܝ��� k���v�(	Y3w	O�~0`*
�1�i�*(�������y�����	�1�U�^T,�Y���5$|��!��3:f�
��R�\�6�F�hʂaUN�wO�,�2�D�40-b_`e�{%+y�P�G�ثxE��ȁ��W����A �)�1��"C��6�׹ �3�4��țh�/ε->/���4qPyo�-h���i�
!ۜ��<e�����]zؾO��&m�4׵Pt��/�O[2y ��B
�c����r���Z��u������&T�#�F�+9� #>�a�7�N��|�"V&�DWH}��i���b�1Qۻ�w�nuS6�A��)g��ic���)N�{a�����A��z(7�'�0fҰ1�wņ��(�Ј�X3������+Q6�Y���4T�Ǝ�=�x1=���/C�s�(cd��	 �Xi�)�,ywhx��
Iӛ�_M�bm�X�ρ���zi�Y!ɛ���-$������{��X���l.RX@�;7�RH�^�t?
vZF�G�T����I�	;��#���)b����TG�r-���"?��,K��Db�ͬa�x'	y2fE��]��W湸ߊ{�@�m���c�+�Rd�OU=�a�K��o���U��p��q�9���Y=vua�7�3L�]$[��:��R��:6J��<�aq0���g����@g�e�mxC�(��S�}�1V� ��c�f_(�$P$f��Qd��iΌ�ջV5�o�����������bfhG�]"U2�:� �`a�:]&?Z�RQ�
	 ��t�/&����� M����hϜ��O1��XGx�����\a����
����,���č��3���)8����0��	�,XB>�P^
8$"�"�&��L}�Nc$4�VnvΎ*��3�;ޫ�
H7���2��-Xds��cf�ec^�R��y-@�W��f��!h��"�zw� �-���4���T���[������@�%~k'Mx�[A,fTcT��^�ɿS>M�������=�>9��z������U���b�2�w#�"D��� <�s��-�XN8��^��M&ع���7���vf^��*��1(�N�g�fM���[�d��軩�K`,�)y&����lu�K� �Q23��ǒ.�?P�� ���"�w��{r�@�D>0�����1D����2�#D��n��(@Ͻ���C:��>��z��f��if��u.f�Q�N��O�*�k���)���3�a���CD&�f�2�����s_c�JJ�Tӹ1�k���a$Պi�z����A�U���b�\2��S�:��P�b����	X�;�&aE�E\�E<�%tiB�$�eH���^��i]d���Zg1�=�k{� �W'���E��~-.�  �o�݉>�Ũ�B����f/9r�W��8�������2�i�fCl�~�|ȵFR�0�~C\c5��Q.��%��e	H����JC]�m.I`�ئ!RoB$14Q����s"i���z�$��x���Kd+�O��#YEt��b�ƚ�+Gp���&5�q	���S��Q���M;ּ5�:�0���h��EC� Y:��y.K~oLW���_�DD�k,��X=;/�_�Y&�6��Kr>�]�.r�{4��ؼ�L�,������h�p�h�V���_Np6��D_f����Z	]�(}�%7�{��Q���œ��^��r��6�D�2{    #�y��gA���XmP������X�G�k�jRcb������^6i*�w��]�x_K8\9#�����	���=	s�*�!�#�)���[F�p�|��F����4+u��+o	AW2�s2<�B/��i��6N��� ���)�D�SfJ�}�E�c�7k�r<�,�e���E��'�0K6���
3��U�.��)T5�HC*���	���u�әź���u����K�]��r��E���Ԛ�݉!�s6�O���Wɟm�1��-ٕ�յ���E�U�@�W��¤(�7���g�c$j�̅���Y����:��+�-��� ��ۮAV>@���ςȬ9���9�.:n�j��H��8�H�T�",@q�Uȸ�0D��s���媝�D�NgK2�����-PY�`\c*\��#l��J�wp /��8 ���M{��$�K3�ص$����a�'�#�S.�E,䡲X2s�*Y�,r�^�=e�����6�j�e����Vj�6N"u�ۀeg�A8�[d�#y�5K��?���N�g%�ۉ?�)�l�}<wQo���6�-ʻ=&�y��^Ûi �r��,�y�1q/A
{Li-����<B����/m��B���� ���ϱ��'[�
�CJ	N��#��NI��
YI��mUt�/�O����
s��%���B��8�H�'&����Ԇ�a�S�Z���	a7bi�a[E8���`e6sr+�E�%p��S���<��Ð��,��.�m��l،3y�m��%�Q�8�ar��g��^���O���?���۶b�ڷ�{[N�Yv��6��w4��y������l���?��������6��Ԇ�u�p����f0�#Q�o�X'���OI%N�,f�4�i��ʁC�b8���݈�N��+al��d���"���R�[�c@1�9�J�(�Z7Ȭag��pT���f�g\�����:2f{I��lI$rE�8I���e�Ө�N ��M�&<]��V�>k�؃!{QwM�R:3�����o$-!6C}�֎Áτ$	��i�T��[l !"'���i�����de��u\FW=ب{��l�WT����1�l��:��	��8�і+�	n.�q�|�b	^��j��'fc$E���0�Ϡ��7*�����B�7��V(M	y�D7 l�º����{�t�/�Y��Ȼ,Z���q���9	
�I�x�*f�C��(��صM7O�e]~���%_�ϕab�X�qv��bq%�¸�5\�Pɲ|����<�Q~���N�.Q��X��p��Q����o��\��Z�V��;���t�1��9����g�J���z�Fyd�gL��[zy\>�9z1��X!h���u�ޓD���"��nPq��uc1М���H��X#�qfo���|Bk'��z��M$�K?�$6�a��-���%{�Ҥ@su"���0�@6����FI��葓u��Ͳ@���e���B�+~��M��5ۃ�?�Q8(�L-��;�X���]���	~zeHh��H��j䖵e��mc�"����:b��1A	;�B? �$�8Eι�j��y�ϴ��F�ptEi�ô�\vhQ"RI��`�,Ϊ�)>*��/-�'�/�"`��c��D	a�*�)/NىH��7���6s�*�7bͮ��}o�� Y��w�u���fa��T8?	���g���E1|��D�O���Ԓ�n )0.�Y|��L|�7i���bDe��S�'$��[�p^���9| 9�U�$�ʧ�����?�h������X]�ޤ���������&$S�������])A���s
��^_����QT&��������������/��D��^���@���J�A���胟~�>��G=m�����7}��?��.:�GI������̓B�����f�{�%9�)�Hoﵰg�a�d���歩8S���@�D��ˉ��pu���";	�rYc~z�]��<6#	��D0א}VoK6!ј<�i��増�$�8���Y���{[�`4v�x��Yh9��s�!ɹ+��\Y�lE��l�u��nX�J](
g���L��reԊ!ly.S9%F��2�X�9:���'��¨��KCS��"6�F��zV�*�Fv#�y��Ww �*&m��8UC��N=�*Ɩ�B�ң���f�p
�6/p���/���P�T�ظg
O�~M:u�f*2N��������I6J�"��8����I_i�Ž���D�E#y���\��T`I�?fx2.0O�b�6CV;��ܛl��A���>���2��H49��Xh� OK���(o��!�TS�����I�����햜�$��;�gh'�慾5(�3ð�7=��ǲӹ�͈�MOŬV����P�IUZ3���Ѩh���=l�%�9H~����� �����Pi��r�+Y*�Ö����HWK2'����3�#
G��<@�#�"	���4;��o�IC��gs��/��N��IѴ�O��"�2�$�̎ylzG� Q=�(�%T���+%�9k��)u��n��"-/<�h��^����ɏ�F��nK�k%-�����!q�0�T�A�� a���V���JW�ڶ4�;m�!���M�>@1#����$M�$a�V?��&-�Xˍe�@���� cʪC�l�Hm� ��h���&���V��b��ԧ=���f�`Q#�sY�>+I6����O�D�l�i��=5�{Ý7�~�
߽���Z�W�r�]U�l���?+��i_�DG�e`����"�k{�q[Ļ/����D�ū���T�C~�ֈ���uB����gP3����ƈ��4�;�I;k�Fqv���#jQi��[�>����7u��Γ#�ɚ7gV�>�WfQ����%'ѽ3aq�>��uK�C�^�B�|h�"o��O��ݣ0�̯Nu]�)�C�����f)�F��W���̲�^���к�|�m㵞�n������L�*���/��n��+oV�aV�Lі^j�A��[:���:��.�����_��F�L��+4�+�D��<�����^�!}*��y@q��i�4�Di�CK���]Z.�[�ok��,O%qe��6�.n�����D��&��QS�mN_:�B#����l����UH	�Z	S��,�Mahr�d�w��͓}�m�,^y��������?ڈ���4��p1��v�Z��_5�3cvM@�▶��DCUN���S�A';����^V����Q�g9r<�6	��,��*p5.P�9I��B^���ނ�@��n7u>��	����r��>�5��>�.u�k,	�ez�������`!5��u�=*#s~^��EIiK�:���Z
HݼS��N�|&w.���]��"�׬O
/R@-Ep�իBJ��~��7q��I�3�dn:�����egݻ���4���|�ַ{���R
A���3L}��>�д��oq�F�9㔴��#��x`�W���.��5�[\k uf3F��)�Ǌ5)h��9��h�Nfb��_��=��1D�G��؂���J�č��,�^k:xgN���t��kF���cU�U
u�A��4z�r��
S�Q�|<��R��>�RA��+N�A����A��;�/&f�а��򔇓ȇM��J ;y� ����?ӡ�uوL:��˚����o#k��1�T̸-Ŭ���X��M�Yc�K͹h%'�_c�'���xwb�b�;d]c`�[��Uї��	˓>o�����u�_9Ÿ����
�4Lso"���gUYcm�X���T8�kM�0�Eqtt�{^W6��WO!��1.�Ռ��]��|~�ʮ^d���z��E*f<�ԁ�a�����^ɥ�i���w�]9Ѯ�ӕN@����ϖ�W��t�c%�P�1����h�Ī�Dԇ�I>sb���8w�����t�R&���jĬ%�6�j�p'�:E�4崶ya�X���7.UK�e
{ȅ^���ɼ��`V�K�~�H�f�ϴ�.���	��xዸS�f���v���4;Ǉ�>d�!�l���߹)X�i��k-��/j�";Ҕ��-��&ڥ�Jю�qA��ċ.�=.��@Ϝ�uȱ�����sB��    ��qǾo�>�a���,^�@�T�;�bIv�m'�<{������>O9T:7�j�����k�?����3�d��;��-	���h�\�^b]�	LH��Z<-\�Xx�#XZ7��Mu��7�T�?�|M�)��͎я��~����J!�
?�����ļ��#,�HL���Z�">t��QW^ļ���\~S�7TV�0+r��H�I��gBN�[
��޴��Ʊ�sIDe�b���V(5���@�	Ց�\
�Hb���t�3�[a�%?���U/nr�K3�9�!�������(xJ`��}���{LR��gZ��2菏�Xh�q�U��\�1Ͱ���e� ��.��i�2*�l踰�N�%�OX�)��Z��w5�@&�.���Wk��l�F�B,��.q��9��v�6��u��F�&���0�T|�S_���k�� SX���O�N��w�k�Q���]=�o�=4���[߾,�2c2Ȳ��O��W������Hv�4?��,�"0\���U�^49��pqHz)w�-
o����a��k�g���wN�X+n@�r�ğ�@�dj��4ǋ28(��fR��s��S��pl�����]��f+�t٨L����&jQ��� �-�/�r;YS�#�|޻�l3�j���_3Q�j�;�P�r��_� �w_�W-|� m�	�sH(���v��0O��"f/��͋��b��f#�>�a��K����Wd2s_Y�<�Ta�\W�ZI�>�}>�҉�._�^QS8N�tG�5�v�p�&�'�ץFi����Be���#7�\�Z���FNn�TϬ\�g9
t��H�j�)Fjz�h�VG:~��*;z΅ں��k�-"�ٵ"�QQ��ݖ>w��z�{��d��:F:M���7KW��(�]P,�׍�BcϨ�T|Rl�ڽ�J��9�>�Vow.���ܸ����J�z�f��,��d��_h��^�GN*dL^�x ��>`�o}V���#W2h��E':.U��}�"�K9�MZ.Oo���_[�d=��L���?֜{�]r"<�U�kY`�+̓�$�Uw�n�@!8ƀ@����֏�b�8�9#��&��2aΦ2�[�ޜ�9�48e��;Q��`�u��0T߲8)� ��R��[r���Z�̒� ��ûoU*�jyh�j8�z(�7��= gau���Q��3_���L&s�	��/�ح=谕�þ�;W	�VP��}�t��z�v�wu����)Y
�)*`��w_�,nw�E!\�R�&\��\���Q��\��vTyF�6]����w����vY����Y���L��)�Q�b��Ě�"38==��M�_��~K��xlq�H��(M��ՒKR���3߫� n��毕1ϳ���G1� ~�Tk�SAr�Q�_Ȓ�b��pSִg���f�%��m��r�R�n<_�k��j2=͝��Oyޒo�6�>�*�u�ֶwC-�F�٘tk�z�3|� W��V�طiܟ[��J���XI�AG͒|��B���S#\͢p��i޽�cE7���W'��XRw��X���?�׋U��:��NI�������7�W�Fԭv�y��2R�!z�_$��Rw��ղC�7vw�p�d�B��}���j֧��,bTOkĂ�,ժ��DVے����#!��x�w0J��}ObA�O+o%f��N^`J.G�mM����ݣItI4ۿ�0G�Z+�����Qk�tIb�����㖑[����ύ�i��<��v
":us�
�ݤ��$mQ�1����˞���l*��Ԋ*s�յC�'�I	u���>G�|�ǋ)�iw���� � �/���!��@�r���3�6hHwH��yD���,ǲ1��fPޛ�Y�a�H�-�FDO>�0�eR�tLܙ���X�־L�����vؕ��69^�=X�L[���$�糽b-v��n�$Ki-�/�\�ѧ"ꇰ~�V��_K:��Hj%���|�"ۼʎvQLsA]��#��RR�̭���!�IO_n�c"v"�|��=l��LA
�^LƝ)p����o,֯��\��c���\�s+p�Yo]6���/uӐ���}ݫ�d=��2�����N}�c���<)!s.t�}堒1�3�IS������b�*h���	ӫ6�����V@{\����-oY��d{8�ӤUߕ�����b��M����2	hv�۬�}2�z����ڊ)��j�Oj���8���<k��d�L�r��I�g1��=�e��K
sR:�6V���肶���u��=O� �U��%�c���,�R[2ͬ[�h���q��x-
'"�i��T�WH�T����os@������W��j����M{����9���P��{�7��/��� �Y�weJ�:'m˸Vs�[5_Z8HW}��}&^Y�=���<�S�h�%j�r�OT����Ԓ�L�L�5�s�.<��?gZl��ȏĺn$͖Nx��+�w�=�3��:��A/d�Z�J�� ۻt�,�\�1w�'���~^���-��J�P\_���˿�҄���bj��i�,�Lq�2="�t��4]PѸ��*!w���`&�[_���@Du￘�Q0��>]Y�����(o�,{�sT�C�q����)@��o�0>(�V�2z�EC�rH��Z��I�$Z��e�*͸uu�F�C�h�~�Ǡ��+ַz�on���k	�������{q/�_)�s��R%�&"��*�[aP�F/��g>t��ЉͧMB�`�g�;��ẊRO�z�ܼi^�`��ĲE}��Z���?�<����o]�O�J���(F�
��pH�i��~�����j4"��+�"�Y �wZ�É�O1�S]����s�[����;�M֜�7��fx�5��M��q�t�ph�n���j �_Q����������%��э��ӑ�H	-"���%M#x�6����*�_F!�l�՚|�\_��nÖ"��K��Rt@.Z�;�a�Ռ;�$��eL"L����^M��H刮#�sn���L�'?�"����}ZҊE(]m���n�N
�Om|�UZ7�"Id�V����O�ς�I��z��}S�N��������=��t�N��*��=���k��g�u)�>�@���@v~=OG�b�}+�ܚ۶S�R�n-Q�ȝ��ڴ��hW�f>���5&������v'eS�r�َ�����Jn���B,�0u7FUhu��O�`��S��2�����iE�&�?�{����	��v��Gw��-�����.���憜:9�f���ncⓞy#I�zF��H���E[���Q� �=��G>�W]���s��0�żV�=>V��O��~3vc������mo��S�n�6�~2�K��Ӥ��6^�q�KI����������AbY�Ŝ�d�˴t%�AR�����6���LV`�8|�ͦS�z-����V���Q���Aݷ�����0�J{���t�!����`S�淤0d��h����E�[����o"h�;;�Sq���Ϋ~&��fL��`�_��++%�ZqDy��'yj�T�h���DId�|�lza�6a�~���oiz��Əg�-��O�Gbѱkaԇj��3s��zvM��rF��5�E��.�R`)��.�!�j}�+�@�)���jWƤ�����$�{mVt�Mˮ��=�6O�(�X���]�.�$���/_�]96��c�X	��U���j�<r�M�	D�r�Č�żFH�P�[+��9{����W.�*�������>�`q��Yh�����v�q9S�n�_�#��O��֕�P��-�Ded&����"�RO�t�\o�D����ѐ�2���(�ӆknw�H��*|��͈��(�ݥ{��>1pB)4���TO���VO;��e�q���z(�C�4	N�F��1�u��:�ǆ4+���&�؊��n�c�rլVӞ'�2/F):2@�Q�����������(y"v���!�E�=N^�c�hC�͇W���r���{n��7%�+�$��U���YD,�fC-K>�i5q�N���έ��S&��� 0��U�k��ni�ڹH�k�d�����"3��^ִ��ܭ�	mQu!�4;>C1W����ɋ} 2  �.mEnm�bS5�#V<1ǭ�s����h5" �16�׵�Q��;t����.A�D۬oo���>| ���5.2*}͔)p����f���b����R#�l�<��wXJJ�������7o��<J�X��B��QF��\�0�x�ݍk�'9�Ab[*i�F���^[�|��(�� �]�P����iε/���	s���� ��Lܢ[�G����/,�VrC���T����&N�_���I_�۰Z815"�v�5\�w�GV�.�*/"iG�7"Q����B��\�zL���v��\�x�!�;�jϯ����$8s�/�	��Vu1
�L{T��:�F��6�e.)���XB��u�s�k���#,�_���%vbN$$�l,��9�_ʤ�vmͫ��޶ح�i���X�Y��i8[h�
s�\xm!1��;���cQL;�p��]��С�z���\7�O��zw��m ��s��,���ݻ�W�`-	ِ�ݨ�8\��2�7�׷vծc|�$�.��EOZ'�0Bu�P�_�Z�C:��D�K��fv?�ȷ�dP�����o�v��G"W�U.�ԃ�uR3YF&��sM�֎DW�P�|:Ґ��+nz������9�vs��P�Rn�^[%����n	��Z"|̽�%�K�4k����q��;���m)�"�׌؞IQ�94��?�5!��Ћ*���9&V(���o~�����^��� mt�oo����_��bc-��\*���6�Ws�������Z	�T���[q+����.S�k��*�"�X�;�*u��a�^Ъ%����,���$�p����� �[�)      �
   4
  x��YKo�>O���O$`J�ꞙ#A&H�&B���bŲH��H�C�$
"Ȋ^�%_,�]q��a������]*�H�ԣ���z2�^�藻E�8,��Vy�薏� ?���\yYHY*l�1��E��^(N��v��r��U�@àܶ�"�r�x6��܁�V��/�@>�TTO=?�,��3�1�<0��ŰhAX�ś[��7n|7W�0��b��p$V>(�9`�>��}|����m����h.ڶMy�?�������L��@z���-�R{�s<��`�lrFy�$���i7�)�M�/�|y	9��� ���8c�"BY�-~���������ے!��+�X�M�(�L���C�S8��B��ϯ�yEG����v>0�*>◖-�P8����/�1l����R����]�SSԜ��6GJQ8��p�u�Q�?���j�s�b&�M,bP��B69�H{�_��_#���d����gy:�)�,v_�H����/������	E�I�嚧&`92%x���r7N��)�a�UtM�:X4�Q�lIL��|PGqH��R��:e욗�sE���n��m����[�h9(V�.��b́�������Q�2�dy��/�S�I��vm�qBq^i��z���(�m_ ���}�8�a�n�џ$���|	^FtOlr�$�8�$b&�;êg�3JbC�JV챙�s;b��qN	����[���!�0%%�[�)��-��0�M�%�$e��m��9m�%1%�a�Ld_�J`��b�#���-Q�������fФBf������HI���o���f�e�:ZsR���E�qA�R�[Z���BR)��)^�_�����)�p7PtmRL
f��K�MHH��oM�-w�� D�\�mNEv��J1mǎJ����ɨV)��a��! �
K*#3���Pޗ�̊8Ҫ��s_����e�N��i���mW@����֝� 	���dH�` Y�]��]��ܑ��ӹ�	uD����>�z&��*�:&�{���bM(��]�x���(��B��Y!��+viӚ��[�n�C�)�����;�4�X��K�sN��F�ӣT�]���t{i@����,���S����\ۻőM�(��4��9�q��R�5�����A���&����\�۵ym��,l��lBSMY��Sw�.CJY���u��A,�2�WʍO�唩	�5��K��sH@�Q4^��x@����V1�v�.����ґC�T�v%)=����԰ݩ��)Nm��r`�߸M}Xk|��j�U�99l��$9���K��.60[`{:]9:Y�F�B��Oݙ������Ƶ|t�YZS�K��ȶ��艩�R_��]�)!��^
�au���F]8�U`HW�#��q0fU=7�����V sU��U�5�cH u}_ZYנx=�"��m)l?4ˌ4:S�V�Th*�����
��Yf: H���o���yK�{����J�����h��F��?�94~�)�ƛG�z���-m~���[���+�7.��7�|{m�g�{'�(��E�}e���
����� �B5ċ���?)*Ӭn��j�O���,O��x.5L�O`����9Y�r����>�U�c��yb}?#_�<����J�Wgde0�!4Ê?s�%��q�i��2��ŕ�;��(4F��B�>ZM$s�Qd8���	 b��W.\��V�o^����_�����_��/�][�v���k[���qf�N�w�����Uˢ�kM@
s��r�嵭5K�]�X�l�Z��H�h׊}_nUWή{2�U�����W/�~w���6|�=^^�WF� $R�a�� �ͭ%GN�!4�	.
vzg �G���V�8��Ӂ�84�����69���y�s��4�d��;�^FF,� �{œ�o�5��	L� T�����ۘ}wf�7V��P�T�,��7<�����ðA�������0�;�v3������^�@�=�1\�C���mj��'���͟ϊ7��pO���U�0�aA~�#1^5.㱄���$���g�O`x٨��|S��Ȧ�i��~���� y��1��<��|��yy�z�Udٍ|֠c�y��7�`�GhƼ&�E2��:�~��涧��c:��/�14-T��P�Y)u��8�16Wl%qL�)���!~��4(f��'��ʧ �~��Ǖ�v9v����*m>2ٍ+�P���q�̚����X��ߡ���`T0>���:��B�ҩ7S��on�%���md9^7vR.H�=��MK*�MK߻+�oM�L��t������KKo�\��T��^�1O���gp	
�ӣFw�շ�������=>�x�"/	\	d��2	��`V�j�ږ
�����X�lh�p3�~�I�M�i8���j����ŉ	��W��oj:]ظB�b�y�y�{��?��4��J3{"X�Y^�pp�m%4H#�f�z�¶��w8� ��c2�v�/@� ޜ�G�x���9BֳC�������o�ߜ8����ϼ��� B��o��i�3��״��:C�r)\�ˆ_�9�Fq
G�v�C�f��[A#���e���^�����*���_Q<q     