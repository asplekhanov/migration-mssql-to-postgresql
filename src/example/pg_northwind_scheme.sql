PGDMP      #                }         	   northwind    17.2 (Debian 17.2-1.pgdg120+1)    17.1 9    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    17287 	   northwind    DATABASE     t   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE northwind;
                     postgres    false                        2615    17288    dbo    SCHEMA        CREATE SCHEMA dbo;
    DROP SCHEMA dbo;
                     postgres    false            �            1259    17289 
   Categories    TABLE     �   CREATE TABLE dbo."Categories" (
    "CategoryID" integer NOT NULL,
    "CategoryName" character varying(15) NOT NULL,
    "Description" text,
    "Picture" bytea
);
    DROP TABLE dbo."Categories";
       dbo         heap r       postgres    false    5            �            1259    17296    CustomerCustomerDemo    TABLE     �   CREATE TABLE dbo."CustomerCustomerDemo" (
    "CustomerID" character varying(5) NOT NULL,
    "CustomerTypeID" character varying(10) NOT NULL
);
 '   DROP TABLE dbo."CustomerCustomerDemo";
       dbo         heap r       postgres    false    5            �            1259    17301    CustomerDemographics    TABLE     z   CREATE TABLE dbo."CustomerDemographics" (
    "CustomerTypeID" character varying(10) NOT NULL,
    "CustomerDesc" text
);
 '   DROP TABLE dbo."CustomerDemographics";
       dbo         heap r       postgres    false    5            �            1259    17306 	   Customers    TABLE     �  CREATE TABLE dbo."Customers" (
    "CustomerID" character varying(5) NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "ContactName" character varying(30),
    "ContactTitle" character varying(30),
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "Phone" character varying(24),
    "Fax" character varying(24)
);
    DROP TABLE dbo."Customers";
       dbo         heap r       postgres    false    5            �            1259    17323    EmployeeTerritories    TABLE     �   CREATE TABLE dbo."EmployeeTerritories" (
    "EmployeeID" integer NOT NULL,
    "TerritoryID" character varying(20) NOT NULL
);
 &   DROP TABLE dbo."EmployeeTerritories";
       dbo         heap r       postgres    false    5            �            1259    17318 	   Employees    TABLE     �  CREATE TABLE dbo."Employees" (
    "EmployeeID" integer NOT NULL,
    "LastName" character varying(20) NOT NULL,
    "FirstName" character varying(10) NOT NULL,
    "Title" character varying(30),
    "TitleOfCourtesy" character varying(25),
    "BirthDate" timestamp with time zone,
    "HireDate" timestamp with time zone,
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "HomePhone" character varying(24),
    "Extension" character varying(4),
    "Photo" bytea,
    "Notes" text,
    "ReportsTo" integer,
    "PhotoPath" character varying(255)
);
ALTER TABLE ONLY dbo."Employees" ALTER COLUMN "Address" SET STORAGE PLAIN;
    DROP TABLE dbo."Employees";
       dbo         heap r       postgres    false    5            �            1259    17328    OrderDetails    TABLE     �   CREATE TABLE dbo."OrderDetails" (
    "OrderID" integer NOT NULL,
    "ProductID" integer NOT NULL,
    "UnitPrice" numeric DEFAULT 0 NOT NULL,
    "Quantity" smallint DEFAULT 1 NOT NULL,
    "Discount" real DEFAULT 0 NOT NULL
);
    DROP TABLE dbo."OrderDetails";
       dbo         heap r       postgres    false    5            �            1259    17333    Orders    TABLE       CREATE TABLE dbo."Orders" (
    "OrderID" integer NOT NULL,
    "CustomerID" character(5),
    "EmployeeID" integer,
    "OrderDate" timestamp with time zone,
    "RequiredDate" timestamp with time zone,
    "ShippedDate" timestamp with time zone,
    "ShipVia" integer,
    "Freight" numeric,
    "ShipName" character varying(40),
    "ShipAddress" character varying(60),
    "ShipCity" character varying(15),
    "ShipRegion" character varying(15),
    "ShipPostalCode" character varying(10),
    "ShipCountry" character varying(15)
);
    DROP TABLE dbo."Orders";
       dbo         heap r       postgres    false    5            �            1259    17338    Products    TABLE     j  CREATE TABLE dbo."Products" (
    "ProductID" integer NOT NULL,
    "ProductName" character varying(40) NOT NULL,
    "SupplierID" integer,
    "CategoryID" integer,
    "QuantityPerUnit" character varying(20),
    "UnitPrice" numeric,
    "UnitsInStock" smallint,
    "UnitsOnOrder" smallint,
    "ReorderLevel" smallint,
    "Discontinued" boolean NOT NULL
);
    DROP TABLE dbo."Products";
       dbo         heap r       postgres    false    5            �            1259    17352    Region    TABLE     o   CREATE TABLE dbo."Region" (
    "RegionID" integer NOT NULL,
    "RegionDescription" character(50) NOT NULL
);
    DROP TABLE dbo."Region";
       dbo         heap r       postgres    false    5            �            1259    17355    Shippers    TABLE     �   CREATE TABLE dbo."Shippers" (
    "ShipperID" integer NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "Phone" character varying(24)
);
    DROP TABLE dbo."Shippers";
       dbo         heap r       postgres    false    5            �            1259    17360 	   Suppliers    TABLE     �  CREATE TABLE dbo."Suppliers" (
    "SupplierID" integer NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "ContactName" character varying(30),
    "ContactTitle" character varying(30),
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "Phone" character varying(24),
    "Fax" character varying(24),
    "HomePage" text
);
    DROP TABLE dbo."Suppliers";
       dbo         heap r       postgres    false    5            �            1259    17365    Territories    TABLE     �   CREATE TABLE dbo."Territories" (
    "TerritoryID" character varying(20) NOT NULL,
    "TerritoryDescription" character(50) NOT NULL,
    "RegionID" integer NOT NULL
);
    DROP TABLE dbo."Territories";
       dbo         heap r       postgres    false    5            t          0    17289 
   Categories 
   TABLE DATA           [   COPY dbo."Categories" ("CategoryID", "CategoryName", "Description", "Picture") FROM stdin;
    dbo               postgres    false    217   �Q       u          0    17296    CustomerCustomerDemo 
   TABLE DATA           M   COPY dbo."CustomerCustomerDemo" ("CustomerID", "CustomerTypeID") FROM stdin;
    dbo               postgres    false    218   �Q       v          0    17301    CustomerDemographics 
   TABLE DATA           O   COPY dbo."CustomerDemographics" ("CustomerTypeID", "CustomerDesc") FROM stdin;
    dbo               postgres    false    219   �Q       w          0    17306 	   Customers 
   TABLE DATA           �   COPY dbo."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax") FROM stdin;
    dbo               postgres    false    220   �Q       y          0    17323    EmployeeTerritories 
   TABLE DATA           I   COPY dbo."EmployeeTerritories" ("EmployeeID", "TerritoryID") FROM stdin;
    dbo               postgres    false    222   R       x          0    17318 	   Employees 
   TABLE DATA           �   COPY dbo."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "Region", "PostalCode", "Country", "HomePhone", "Extension", "Photo", "Notes", "ReportsTo", "PhotoPath") FROM stdin;
    dbo               postgres    false    221   7R       z          0    17328    OrderDetails 
   TABLE DATA           b   COPY dbo."OrderDetails" ("OrderID", "ProductID", "UnitPrice", "Quantity", "Discount") FROM stdin;
    dbo               postgres    false    223   TR       {          0    17333    Orders 
   TABLE DATA           �   COPY dbo."Orders" ("OrderID", "CustomerID", "EmployeeID", "OrderDate", "RequiredDate", "ShippedDate", "ShipVia", "Freight", "ShipName", "ShipAddress", "ShipCity", "ShipRegion", "ShipPostalCode", "ShipCountry") FROM stdin;
    dbo               postgres    false    224   qR       |          0    17338    Products 
   TABLE DATA           �   COPY dbo."Products" ("ProductID", "ProductName", "SupplierID", "CategoryID", "QuantityPerUnit", "UnitPrice", "UnitsInStock", "UnitsOnOrder", "ReorderLevel", "Discontinued") FROM stdin;
    dbo               postgres    false    225   �R       }          0    17352    Region 
   TABLE DATA           @   COPY dbo."Region" ("RegionID", "RegionDescription") FROM stdin;
    dbo               postgres    false    226   �R       ~          0    17355    Shippers 
   TABLE DATA           F   COPY dbo."Shippers" ("ShipperID", "CompanyName", "Phone") FROM stdin;
    dbo               postgres    false    227   �R                 0    17360 	   Suppliers 
   TABLE DATA           �   COPY dbo."Suppliers" ("SupplierID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax", "HomePage") FROM stdin;
    dbo               postgres    false    228   �R       �          0    17365    Territories 
   TABLE DATA           W   COPY dbo."Territories" ("TerritoryID", "TerritoryDescription", "RegionID") FROM stdin;
    dbo               postgres    false    229   S       �           2606    17411    Categories Categories_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY dbo."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY ("CategoryID");
 E   ALTER TABLE ONLY dbo."Categories" DROP CONSTRAINT "Categories_pkey";
       dbo                 postgres    false    217            �           2606    17413 .   CustomerCustomerDemo CustomerCustomerDemo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY dbo."CustomerCustomerDemo"
    ADD CONSTRAINT "CustomerCustomerDemo_pkey" PRIMARY KEY ("CustomerID");
 Y   ALTER TABLE ONLY dbo."CustomerCustomerDemo" DROP CONSTRAINT "CustomerCustomerDemo_pkey";
       dbo                 postgres    false    218            �           2606    17415 .   CustomerDemographics CustomerDemographics_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY dbo."CustomerDemographics"
    ADD CONSTRAINT "CustomerDemographics_pkey" PRIMARY KEY ("CustomerTypeID");
 Y   ALTER TABLE ONLY dbo."CustomerDemographics" DROP CONSTRAINT "CustomerDemographics_pkey";
       dbo                 postgres    false    219            �           2606    17417    Customers Customers_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY dbo."Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY ("CustomerID");
 C   ALTER TABLE ONLY dbo."Customers" DROP CONSTRAINT "Customers_pkey";
       dbo                 postgres    false    220            �           2606    17474 ,   EmployeeTerritories EmployeeTerritories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY dbo."EmployeeTerritories"
    ADD CONSTRAINT "EmployeeTerritories_pkey" PRIMARY KEY ("EmployeeID", "TerritoryID");
 W   ALTER TABLE ONLY dbo."EmployeeTerritories" DROP CONSTRAINT "EmployeeTerritories_pkey";
       dbo                 postgres    false    222    222            �           2606    17408    Employees Employees_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY dbo."Employees"
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY ("EmployeeID");
 C   ALTER TABLE ONLY dbo."Employees" DROP CONSTRAINT "Employees_pkey";
       dbo                 postgres    false    221            �           2606    17479    OrderDetails OrderDetails_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY dbo."OrderDetails"
    ADD CONSTRAINT "OrderDetails_pkey" PRIMARY KEY ("OrderID", "ProductID");
 I   ALTER TABLE ONLY dbo."OrderDetails" DROP CONSTRAINT "OrderDetails_pkey";
       dbo                 postgres    false    223    223            �           2606    17516    Orders Orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY dbo."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("OrderID");
 =   ALTER TABLE ONLY dbo."Orders" DROP CONSTRAINT "Orders_pkey";
       dbo                 postgres    false    224            �           2606    17529    Products Products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY dbo."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("ProductID");
 A   ALTER TABLE ONLY dbo."Products" DROP CONSTRAINT "Products_pkey";
       dbo                 postgres    false    225            �           2606    17534    Region Region_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY dbo."Region"
    ADD CONSTRAINT "Region_pkey" PRIMARY KEY ("RegionID");
 =   ALTER TABLE ONLY dbo."Region" DROP CONSTRAINT "Region_pkey";
       dbo                 postgres    false    226            �           2606    17544    Shippers Shippers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY dbo."Shippers"
    ADD CONSTRAINT "Shippers_pkey" PRIMARY KEY ("ShipperID");
 A   ALTER TABLE ONLY dbo."Shippers" DROP CONSTRAINT "Shippers_pkey";
       dbo                 postgres    false    227            �           2606    17596    Suppliers Suppliers_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY dbo."Suppliers"
    ADD CONSTRAINT "Suppliers_pkey" PRIMARY KEY ("SupplierID");
 C   ALTER TABLE ONLY dbo."Suppliers" DROP CONSTRAINT "Suppliers_pkey";
       dbo                 postgres    false    228            �           2606    17604    Territories Territories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY dbo."Territories"
    ADD CONSTRAINT "Territories_pkey" PRIMARY KEY ("TerritoryID");
 G   ALTER TABLE ONLY dbo."Territories" DROP CONSTRAINT "Territories_pkey";
       dbo                 postgres    false    229            �           2606    17611 9   CustomerCustomerDemo CustomerCustomerDemo_CustomerID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."CustomerCustomerDemo"
    ADD CONSTRAINT "CustomerCustomerDemo_CustomerID_fkey" FOREIGN KEY ("CustomerID") REFERENCES dbo."Customers"("CustomerID") NOT VALID;
 d   ALTER TABLE ONLY dbo."CustomerCustomerDemo" DROP CONSTRAINT "CustomerCustomerDemo_CustomerID_fkey";
       dbo               postgres    false    218    3267    220            �           2606    17606 =   CustomerCustomerDemo CustomerCustomerDemo_CustomerTypeID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."CustomerCustomerDemo"
    ADD CONSTRAINT "CustomerCustomerDemo_CustomerTypeID_fkey" FOREIGN KEY ("CustomerTypeID") REFERENCES dbo."CustomerDemographics"("CustomerTypeID") NOT VALID;
 h   ALTER TABLE ONLY dbo."CustomerCustomerDemo" DROP CONSTRAINT "CustomerCustomerDemo_CustomerTypeID_fkey";
       dbo               postgres    false    218    219    3265            �           2606    17621 7   EmployeeTerritories EmployeeTerritories_EmployeeID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."EmployeeTerritories"
    ADD CONSTRAINT "EmployeeTerritories_EmployeeID_fkey" FOREIGN KEY ("EmployeeID") REFERENCES dbo."Employees"("EmployeeID") NOT VALID;
 b   ALTER TABLE ONLY dbo."EmployeeTerritories" DROP CONSTRAINT "EmployeeTerritories_EmployeeID_fkey";
       dbo               postgres    false    221    3269    222            �           2606    17616 8   EmployeeTerritories EmployeeTerritories_TerritoryID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."EmployeeTerritories"
    ADD CONSTRAINT "EmployeeTerritories_TerritoryID_fkey" FOREIGN KEY ("TerritoryID") REFERENCES dbo."Territories"("TerritoryID") NOT VALID;
 c   ALTER TABLE ONLY dbo."EmployeeTerritories" DROP CONSTRAINT "EmployeeTerritories_TerritoryID_fkey";
       dbo               postgres    false    229    3285    222            �           2606    17626 "   Employees Employees_ReportsTo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Employees"
    ADD CONSTRAINT "Employees_ReportsTo_fkey" FOREIGN KEY ("ReportsTo") REFERENCES dbo."Employees"("EmployeeID") NOT VALID;
 M   ALTER TABLE ONLY dbo."Employees" DROP CONSTRAINT "Employees_ReportsTo_fkey";
       dbo               postgres    false    221    221    3269            �           2606    17636 &   OrderDetails OrderDetails_OrderID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."OrderDetails"
    ADD CONSTRAINT "OrderDetails_OrderID_fkey" FOREIGN KEY ("OrderID") REFERENCES dbo."Orders"("OrderID") NOT VALID;
 Q   ALTER TABLE ONLY dbo."OrderDetails" DROP CONSTRAINT "OrderDetails_OrderID_fkey";
       dbo               postgres    false    3275    223    224            �           2606    17631 (   OrderDetails OrderDetails_ProductID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."OrderDetails"
    ADD CONSTRAINT "OrderDetails_ProductID_fkey" FOREIGN KEY ("ProductID") REFERENCES dbo."Products"("ProductID") NOT VALID;
 S   ALTER TABLE ONLY dbo."OrderDetails" DROP CONSTRAINT "OrderDetails_ProductID_fkey";
       dbo               postgres    false    223    225    3277            �           2606    17651    Orders Orders_CustomerID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Orders"
    ADD CONSTRAINT "Orders_CustomerID_fkey" FOREIGN KEY ("CustomerID") REFERENCES dbo."Customers"("CustomerID") NOT VALID;
 H   ALTER TABLE ONLY dbo."Orders" DROP CONSTRAINT "Orders_CustomerID_fkey";
       dbo               postgres    false    3267    220    224            �           2606    17641    Orders Orders_EmployeeID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Orders"
    ADD CONSTRAINT "Orders_EmployeeID_fkey" FOREIGN KEY ("EmployeeID") REFERENCES dbo."Employees"("EmployeeID") NOT VALID;
 H   ALTER TABLE ONLY dbo."Orders" DROP CONSTRAINT "Orders_EmployeeID_fkey";
       dbo               postgres    false    224    221    3269            �           2606    17646    Orders Orders_ShipVia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Orders"
    ADD CONSTRAINT "Orders_ShipVia_fkey" FOREIGN KEY ("ShipVia") REFERENCES dbo."Shippers"("ShipperID") NOT VALID;
 E   ALTER TABLE ONLY dbo."Orders" DROP CONSTRAINT "Orders_ShipVia_fkey";
       dbo               postgres    false    224    3281    227            �           2606    17656 !   Products Products_CategoryID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Products"
    ADD CONSTRAINT "Products_CategoryID_fkey" FOREIGN KEY ("CategoryID") REFERENCES dbo."Categories"("CategoryID") NOT VALID;
 L   ALTER TABLE ONLY dbo."Products" DROP CONSTRAINT "Products_CategoryID_fkey";
       dbo               postgres    false    3261    217    225            �           2606    17661 !   Products Products_SupplierID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Products"
    ADD CONSTRAINT "Products_SupplierID_fkey" FOREIGN KEY ("SupplierID") REFERENCES dbo."Suppliers"("SupplierID") NOT VALID;
 L   ALTER TABLE ONLY dbo."Products" DROP CONSTRAINT "Products_SupplierID_fkey";
       dbo               postgres    false    3283    228    225            �           2606    17666 %   Territories Territories_RegionID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dbo."Territories"
    ADD CONSTRAINT "Territories_RegionID_fkey" FOREIGN KEY ("RegionID") REFERENCES dbo."Region"("RegionID") NOT VALID;
 P   ALTER TABLE ONLY dbo."Territories" DROP CONSTRAINT "Territories_RegionID_fkey";
       dbo               postgres    false    3279    229    226            t      x������ � �      u      x������ � �      v      x������ � �      w      x������ � �      y      x������ � �      x      x������ � �      z      x������ � �      {      x������ � �      |      x������ � �      }      x������ � �      ~      x������ � �            x������ � �      �      x������ � �     