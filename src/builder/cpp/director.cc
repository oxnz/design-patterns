#include "builder.h"
#include "director.h"

Director::Director(Builder *builder)
{
	m_pBuilder = builder;
}

void Director::Create()
{
	m_pBuilder->BuildStep1();
	m_pBuilder->BuildStep2();
	m_pBuilder->BuildStep3();
	m_pBuilder->BuildStep4();
}
