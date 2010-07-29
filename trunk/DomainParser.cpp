#include "DomainParser.h"
#include "PddlDomainGrammar.h"
#include "PddlCommon.h"

using namespace std;

///////////////////////////////////////////////////////////////////////////////
//
//  Parse a file
//
///////////////////////////////////////////////////////////////////////////////
std::auto_ptr<Domain> DomainParser::parseDomain(const string& filename)
{
    ifstream in(filename.c_str());

    if (!in)
    {
        cerr << "Could not open input file: " << filename << endl;
        return std::auto_ptr<Domain>();
    }

    in.unsetf(ios::skipws); //  Turn of white space skipping on the stream

    vector<char> vec;
    std::copy(
        istream_iterator<char>(in),
        istream_iterator<char>(),
        std::back_inserter(vec));

    vector<char>::const_iterator first = vec.begin();
    vector<char>::const_iterator last = vec.end();

    pddl_skipper skip_p;
    pddl_grammar p;

#ifdef BOOST_SPIRIT_DEBUG
    BOOST_SPIRIT_DEBUG_NODE(skip_p);
    BOOST_SPIRIT_DEBUG_NODE(p);
#endif

    parse_info<vector<char>::const_iterator> info =
        parse(first, last, p, skip_p);

    if (info.full)
    {
        cout << "\t\t" << filename << " Parses OK\n\n\n";
    }
    else
    {
        cerr << "---PARSING FAILURE---\n";
        cerr << string(info.stop, last);
    }

    return std::auto_ptr<Domain>();
}

///////////////////////////////////////////////////////////////////////////////
//
//  Main program
//
///////////////////////////////////////////////////////////////////////////////
int
main(int argc, char* argv[])
{
    cout << "/////////////////////////////////////////////////////////\n\n";
    cout << "\t\tPDDL Grammar For Spirit...\n\n";
    cout << "/////////////////////////////////////////////////////////\n\n";

    if (argc > 1)
    {
        for (int i = 1; i < argc; ++i)
        {
            cout << argv[i] << endl;
            DomainParser p;
            p.parseDomain(argv[i]);
        }
    }
    else
    {
        cerr << "---NO FILENAME GIVEN---" << endl;
    }

    return 0;
}

