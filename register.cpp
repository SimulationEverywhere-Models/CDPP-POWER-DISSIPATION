/*******************************************************************
*
*  DESCRIPTION: Simulator::registerNewAtomics()
*
*  AUTHOR: Shanta Ramchandani
*
*  EMAIL: mailto: shantar@sympatico.ca
*
*  DATE: October 20, 2003
*
*******************************************************************/

#include "modeladm.h" 
#include "mainsimu.h"
#include "buffer.h"      // class Buffer

void MainSimulator::registerNewAtomics()
{
	SingleModelAdm::Instance().registerAtomic( NewAtomicFunction<Buffer>() , "Buffer" ) ;
}
