//  Copyright (c) 2001-2010 Hartmut Kaiser
// 
//  Distributed under the Boost Software License, Version 1.0. (See accompanying 
//  file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

#include <boost/config/warning_disable.hpp>
#include <boost/detail/lightweight_test.hpp>

#include <boost/spirit/include/karma_auxiliary.hpp>
#include <boost/spirit/include/karma_char.hpp>
#include <boost/spirit/include/karma_string.hpp>
#include <boost/spirit/include/karma_operator.hpp>
#include <boost/spirit/include/karma_directive.hpp>
#include <boost/spirit/include/karma_generate.hpp>

#include "test.hpp"

int main()
{
    using spirit_test::test;
    using boost::spirit::karma::symbols;

    { // basics
        symbols<char, std::string> sym;

        sym.add
            ('j', "Joel")
            ('h', "Hartmut")
            ('t', "Tom")
            ('k', "Kim")
        ;

        boost::mpl::true_ f = 
            boost::mpl::bool_<boost::spirit::traits::is_generator<
                symbols<char, std::string> >::value>();

        // silence stupid compiler warnings 
        // i.e. MSVC warning C4189: 'f' : local variable is initialized but not referenced
        BOOST_TEST((f.value));

        BOOST_TEST((test("Joel", sym, 'j')));
        BOOST_TEST((test("Hartmut", sym, 'h')));
        BOOST_TEST((test("Tom", sym, 't')));
        BOOST_TEST((test("Kim", sym, 'k')));
        BOOST_TEST((!test("", sym, 'x')));

        // test copy
        symbols<char, std::string> sym2;
        sym2 = sym;
        BOOST_TEST((test("Joel", sym2, 'j')));
        BOOST_TEST((test("Hartmut", sym2, 'h')));
        BOOST_TEST((test("Tom", sym2, 't')));
        BOOST_TEST((test("Kim", sym2, 'k')));
        BOOST_TEST((!test("", sym2, 'x')));

        // make sure it plays well with other generators
        BOOST_TEST((test("Joelyo", sym << "yo", 'j')));

        sym.remove
            ('j')
            ('h')
        ;

        BOOST_TEST((!test("", sym, 'j')));
        BOOST_TEST((!test("", sym, 'h')));
    }

    { // basics
        symbols<std::string> sym;

        sym.add
            ("Joel")
            ("Hartmut")
            ("Tom")
            ("Kim")
        ;

        boost::mpl::true_ f = 
            boost::mpl::bool_<boost::spirit::traits::is_generator<
                symbols<char, std::string> >::value>();

        // silence stupid compiler warnings 
        // i.e. MSVC warning C4189: 'f' : local variable is initialized but not referenced
        BOOST_TEST((f.value));

        BOOST_TEST((test("Joel", sym, "Joel")));
        BOOST_TEST((test("Hartmut", sym, "Hartmut")));
        BOOST_TEST((test("Tom", sym, "Tom")));
        BOOST_TEST((test("Kim", sym, "Kim")));
        BOOST_TEST((!test("", sym, "X")));

        // test copy
        symbols<std::string> sym2;
        sym2 = sym;
        BOOST_TEST((test("Joel", sym2, "Joel")));
        BOOST_TEST((test("Hartmut", sym2, "Hartmut")));
        BOOST_TEST((test("Tom", sym2, "Tom")));
        BOOST_TEST((test("Kim", sym2, "Kim")));
        BOOST_TEST((!test("", sym2, "X")));

        // make sure it plays well with other generators
        BOOST_TEST((test("Joelyo", sym << "yo", "Joel")));

        sym.remove
            ("Joel")
            ("Hartmut")
        ;

        BOOST_TEST((!test("", sym, "Joel")));
        BOOST_TEST((!test("", sym, "Hartmut")));
    }

    { // no-case handling
        using namespace boost::spirit::ascii;
        using boost::spirit::karma::lower;
        using boost::spirit::karma::upper;

        symbols<char, std::string> sym;
        sym.add
            ('j', "Joel")
            ('h', "Hartmut")
            ('t', "Tom")
            ('k', "Kim")
        ;

        BOOST_TEST((test("joel", lower[sym], 'j')));
        BOOST_TEST((test("hartmut", lower[sym], 'h')));
        BOOST_TEST((test("tom", lower[sym], 't')));
        BOOST_TEST((test("kim", lower[sym], 'k')));

        BOOST_TEST((test("JOEL", upper[sym], 'j')));
        BOOST_TEST((test("HARTMUT", upper[sym], 'h')));
        BOOST_TEST((test("TOM", upper[sym], 't')));
        BOOST_TEST((test("KIM", upper[sym], 'k')));

        // make sure it plays well with other generators
        BOOST_TEST((test("joelyo", lower[sym] << "yo", 'j')));
        BOOST_TEST((test("JOELyo", upper[sym] << "yo", 'j')));
    }

    return boost::report_errors();
}