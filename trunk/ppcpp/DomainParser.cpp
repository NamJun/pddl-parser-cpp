#include "PddlDomainGrammar.h"
#include "DomainParser.h"
#include "PddlCommon.h"
#include <iterator>
#include "boost/foreach.hpp"

///////////////////////////////////////////////////////////////////////////////
//
//  Parse a file
//
///////////////////////////////////////////////////////////////////////////////
std::auto_ptr<Domain> DomainParser::parseDomain(const std::string& filename)
{
    std::ifstream in(filename.c_str());

    if (!in)
    {
        std::cerr << "Could not open input file: " << filename << std::endl;
        return std::auto_ptr<Domain>();
    }

    in.unsetf(std::ios::skipws); //  Turn of white space skipping on the stream

    std::vector<char> vec;
    std::copy(
        std::istream_iterator<char>(in),
        std::istream_iterator<char>(),
        std::back_inserter(vec));

    std::vector<char>::const_iterator first = vec.begin();
    std::vector<char>::const_iterator last = vec.end();

    std::auto_ptr<pddl_skipper> skip_p = create_pddl_skipper();
    std::auto_ptr<pddl_grammar> p = create_pddl_grammar();

#ifdef BOOST_SPIRIT_DEBUG
    BOOST_SPIRIT_DEBUG_NODE(skip_p);
    BOOST_SPIRIT_DEBUG_NODE(p);
#endif

    parse_info<std::vector<char>::const_iterator> info =
        parse(first, last, *p, *skip_p);

    if (info.full)
    {
        std::cout << "\t\t" << filename << " Parses OK\n\n\n";
    }
    else
    {
        std::cerr << "---PARSING FAILURE---\n";
        std::cerr << std::string(info.stop, last);
    }

    std::cout << "Printing domain:\n";
    std::cout << domain.toString();
    
    return std::auto_ptr<Domain>();
}

std::string Domain::toString() const
{
    std::string s;
    
    // domain name
    s += std::string("[") + domainName + "] domain";
    s += "\n\n";
    
    // types
    s += "types:\n";
    BOOST_FOREACH(Type t, domain.types) {
      s += std::string("[") + t + "] ";
    }
    s += "\n\n";
    
    // inheritances
    s += "type inheritances:\n";
    BOOST_FOREACH(TypeInheritance::value_type t, domain.typeInheritance) {
      s += std::string("[") + t.first + "] -> [" + t.second + "]\n";
    }
    s += "\n";
    
    return s;
}

Domain domain;
Domain::TypeSet currentTypeSet;

void initializeTypeNameList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
  Type object("object");
  Type number("number");
  // inserting the default PDDL types 
  domain.types.insert(object);
  domain.types.insert(number);
}

/// Inserts the current type into currentTypeSet, as well as domain.types.
void insertTypeIntoCurrentTypeSet(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{  
    std::string typeName(first, last);
    Type t(typeName); 
    currentTypeSet.insert(t);
    domain.types.insert(t); 
}

void insertTypeInheritance(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    /// First, the currentTypeSet is filled with types that inherit from a base type. 
    /// Next, the types within currentTypeSet are inserted into inheritsFrom map.  
    /// Finally, currentTypeSet is cleared.
    std::string base(first, last);
    BOOST_FOREACH(std::string type, currentTypeSet) {
      domain.typeInheritance.insert(std::make_pair(type, base)); 
    }
    currentTypeSet.clear();
}

