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

/** include files **/
#include "buffer.h"     // class Buffer
#include "message.h"    // class ExternalMessage, InternalMessage
#include "mainsimu.h"   // class Simulator (MainSimulator::Instance().getParameter( ... ))

/** public functions **/

/*******************************************************************
* Function Name: Buffer
* Description: 
********************************************************************/
Buffer::Buffer( const string &name )
: Atomic( name )
, in( addInputPort( "in" ) )
, done( addInputPort( "done" ) )
, numElemOutput( addOutputPort( "numElemOutput" ) )
, out( addOutputPort( "out" ) )

{
	string debugTemp( MainSimulator::Instance().getParameter( description(), "DEBUG_FLAG" ) ) ;
	if (debugTemp == "1") DEBUG = 1;
	else DEBUG = 0;
}

/*******************************************************************
* Function Name: initFunction
* Description: Empties the list (buffer) and sets the size of the buffer
********************************************************************/
Model &Buffer::initFunction()
{
	sendElement = 0;
	BUFFER_MAX_SIZE = 2;
	elements.erase( elements.begin(), elements.end() ) ;
	return *this ;
}

/*******************************************************************
* Function Name: externalFunction
* Description: Adds element to buffer on 'input' if buffer not full
*		   All elements inputed to the buffer when it is full are
*		   discarded.
*		   Sets flag sendElement on 'done' if the buffer is not empty
********************************************************************/
Model &Buffer::externalFunction( const ExternalMessage &msg )
{
	if( msg.port() == in )
	{
		if( elements.size() < BUFFER_MAX_SIZE ) {	
			elements.push_back( msg.value() ) ;
			sendElement = 1;
			
		} else {
			// Should not happen
		}
	}

	if( msg.port() == done )
	{
		if( elements.size() > 0 ) {
			sendElement = 1;
		} else {
			// Should not happen
		}
	}

	holdIn( active, Time::Zero);	 	// Call output function to update numElemOutput

	return *this;
}

/*******************************************************************
* Function Name: internalFunction
* Description: No internal function for the buffer
********************************************************************/
Model &Buffer::internalFunction( const InternalMessage & )
{
	passivate();
	return *this ;
}

/*******************************************************************
* Function Name: outputFunction
* Description: Sends the size of the buffer to the numElemOutput port
		   and if sendElement flag is set, send out an element from
		   the buffer
********************************************************************/
Model &Buffer::outputFunction( const InternalMessage &msg )
{
	if (sendElement == 1) {
		sendElement = 0;
		sendOutput( msg.time(), out, elements.front() ) ;	// Send element in front
		elements.pop_front() ;						// Then remove it.
	}

	sendOutput( msg.time(), numElemOutput, elements.size() ) ;	// Send num of elements in buffer.

	return *this ;
}
