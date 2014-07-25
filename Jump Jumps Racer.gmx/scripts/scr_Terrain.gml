//                                                              argument0 = seed
//                                                              argument1 = randomValue
//                                                              argument2 = spriteWidth
//                                                              argument3 = spriteHeight
random_set_seed(argument0);

image_speed = 0;
var RandA = 0;
for(i = 0; i < view_wport[0]; i += argument2)
{
    var RandB = random(argument1) - (argument1 * 0.5);//new rand
    var Height = view_hview[0] - (argument3 + RandA + RandB) - (argument1);
    inst = instance_create(i,Height,Terrain);
    RandA = RandB;
}

