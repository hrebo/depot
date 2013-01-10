#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(:title => 'Profesionalni webdesign',
  :description => 
    %{<p>
        Prostrednictvim praktickych projektu, modelovych designu a 
        7 komplexnich vzorovych reseni vam zkuseny odbornik predstavi jak zakladni, 
        tak i promyslenejsi koncepty designu, ktere vam umozni tvorit profesionalne 
        vypadajici weby pomoci nejnovesjsich technologii a technik. 
        Jednotlive pristupy jsou ilustrovany modelovymi weby, 
        jejichz zdrojove a graficke soubory naleznete k volnemu pouziti na CD. 
        Z knihy tak muzete cerpat nejen pouceni a zdokonaleni v tvurcich technikach, 
        ale i vydatnou inspiraci, nebo hotova reseni od webovych profesionalu rovnou 
        pouzit ve svych projektech.
      </p>},
  :image_url =>   '/images/pwd.jpg',    
  :price => 587)
# . . .
Product.create(:title => 'Zaciname programovat v Ruby on Rails',
  :description =>
    %{<p>
        Ruby on Rails je revolucni programovaci nastroj, 
        jenz urychluje a zjednodusuje tvorbu webovych stranek a jejich aplikaci. 
        Diky zapojeni primocareho jazyka Ruby a vyvojove platformy, kterou poskytuje Rails, 
        muzete ve velmi kratkem case vytvorit plnohodnotne webove aplikace, 
        i kdyz nejste zkusenymi programatory.
      </p>},
  :image_url => '/images/zprr.jpg',
  :price => 337)
# . . .

Product.create(:title => 'jQuery, Kucharka programatora',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => '/images/jqkp.jpg',
  :price => 502)
