package dj.phoenix;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Phoenix {
	public static final Logger LOG = LogManager.getLogger();
	public static final boolean DEBUG = true;
	
	public static void debug(String str) {
		if(DEBUG) {
			LOG.info(str);
		}
	}
}
