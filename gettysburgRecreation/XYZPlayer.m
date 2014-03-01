//
//  XYZPlayer.m
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/15/14.
//
//

#import "XYZPlayer.h"

@implementation XYZPlayer

-(id)init
{
    self = [super init];
    if (self)
    {
        // FIXME placeholder?
    }
}

-(id)initWithRank:(NSString*)rank andSide(NSString*)side
{
    self = [super init];
    
    NSLog(@"I EXISSST");
    
    if(self)
    {
        //NSDictionary * dict = @{ @"Colonel":Colonel};
        
        //self.rank = [dict objectForKey:rank];
        //NSLog(self.rank);
        
        //FIXME this isn't actually linked to anyting yet...
        
        
        switch (rank)
        {
            case @"Colonel":
                self.rank = Colenel;
                break;
                
            case @"Brigadier General":
                self.rank = BrigadierGeneral;
                break;
                
            case @"Major General":
                self.rank = MajorGeneral;
                break;
                
            case @"General":
                self.rank = General;
                break;
                
        }
        switch (side)
        {
            case @"Union":
                self.loyalty = theUnion;
                break;
                
            case @"Brigadier General":
                self.loyalty = theConfederacy;
                break;
                
        }
        
    }
    
    NSLog(self.rank);
    NSLog(self.loyalty);
    return self;
}



@end
