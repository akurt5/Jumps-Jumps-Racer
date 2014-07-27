//                                                              argument0 = seed
//                                                              argument1 = randomValue
//                                                              argument2 = spriteWidth
//                                                              argument3 = spriteHeight
random_set_seed(argument0);

image_speed = 0;
var RandA = 0;
var Height;
//                              calculate how much terrain is needed
var Terraincount = view_wport[0] / argument2;
var temp =  Terraincount mod 4;
Terraincount += temp;
var MapTerrain;
for(i = 0; i < Terraincount; i++)
{//                                  Generation 1st Pass
     MapTerrain[i] = instance_create(i*4, 0, obj_Terrain)//      Holds all terrain
}

for(i = 0; i < Terraincount; i += (argument2 * 4))
{//                                  Generation 2nd Pass
    RandB = random_range(-20, 20);//                           RandB is the diff in height from the last terrain.

    Height = view_hview[0] - (argument3 + RandA + RandB) - (argument1);
    MapTerrain[i].y = Height;
    RandA = RandB + RandA;
}
for(i = 0; i < Terraincount; i += (argument2 * 4))
{//                                   Generation 3rd Pass
    if(i+4 <= Terraincount)
    {
        Height = (MapTerrain[i+4].y - MapTerrain[i].y) / 2;
        MapTerrain[i+2].y = Height;
    }
    if(i+2 <= Terraincount)
    {
        Height = (MapTerrain[i+2].y - MapTerrain[i].y) / 2;
        MapTerrain[i+1].y = Height;
    }
    if(i+4 <= Terraincount)
    {
        Height = (MapTerrain[i+4].y - MapTerrain[i+2].y) / 2;
        MapTerrain[i+3].y = Height;
    }
}
