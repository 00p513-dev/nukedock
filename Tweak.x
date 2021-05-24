%hook SBDockView // Hooks the Dock
-(void)setBackgroundAlpha:(double)arg1 { // We want to change background alpha
%orig(0.0); // Set alpha to 0 (transparent)
}
%end
