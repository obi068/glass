OBSystemBrowserAdaptor implements the protocol expected by the SystemBrowser app registry, and thus allows OmniBrowser to be chosen as the default system browser. 

Caveat: because the required protocol is a little ...odd.... it can't be implemented well by OBSystemBrowser directly. OBSystemBrowserAdaptor does this reasonably well, but it has no way to provide a more natural name than its class name to the app registry menu.