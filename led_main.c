
#define LED_BaseAddr	0x60000550

//void Vi_DSKC6747_init( );	

void main( void )
{

	unsigned int i,k;
	unsigned short *led;

	led = (unsigned short *)LED_BaseAddr;

	//Vi_DSKC6747_init( );	// Board Initialization

	while(1)
	{
		*led = 0x55;
		for(i=0;i<1000;i++)
			for(k=0;k<10000;k++);

		*led = 0xaa;
		for(i=0;i<1000;i++)
			for(k=0;k<10000;k++);
	}
}

/* ------------------------------------------------------------------------ */



