/*******************************************************************
*
*  DESCRIPTION: Atomic Model Buffer
*
*  AUTHOR:  Shanta Ramchandani
*
*  EMAIL: shantar@sympatico.ca
*
*  DATE: October 20, 2003
*
*******************************************************************/

#ifndef __BUFFER_H
#define __BUFFER_H

#include <list>
#include "atomic.h"     // class Atomic

class Buffer : public Atomic
{
public:
	Buffer( const string &name = "Buffer" );			//Default constructor

	virtual string className() const ;

protected:
	Model &initFunction();
	Model &externalFunction( const ExternalMessage & );
	Model &internalFunction( const InternalMessage & );
	Model &outputFunction( const InternalMessage & );

private:
	const Port          &in;			//inputs an element to the buffer
	const Port          &done;

	Port                &numElemOutput;		//outputs the number of elements in the buffer
	Port                &out;			//outputs an element of the buffer

	typedef list<Value> ElementList ;
	ElementList         elements ;

	int                 sendElement;
	int                 DEBUG;
	unsigned int        BUFFER_MAX_SIZE;

};	// class Buffer

// ** inline ** // 
inline
string Buffer::className() const
{
	return "Buffer" ;
}

#endif   //__BUFFER_H
