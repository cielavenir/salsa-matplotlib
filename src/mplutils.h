/* mplutils.h	-- 
 *
 * $Header: /cvsroot/matplotlib/matplotlib/src/mplutils.h,v 1.2 2004/11/24 15:26:12 jdh2358 Exp $
 * $Log: mplutils.h,v $
 * Revision 1.2  2004/11/24 15:26:12  jdh2358
 * added Printf
 *
 * Revision 1.1  2004/06/24 20:11:17  jdh2358
 * added mpl src
 *
 */

#ifndef _MPLUTILS_H
#define _MPLUTILS_H

#include <string>
#include <iostream>
#include <sstream>

void _VERBOSE(const std::string&);


class Printf
{
private :
  char *buffer;
public :
  Printf(const char *, ...);
  ~Printf();
  std::string str() {return buffer;}
  friend std::ostream &operator <<(std::ostream &, const Printf &);
};

#endif
