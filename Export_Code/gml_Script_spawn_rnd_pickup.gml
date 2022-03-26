var xx, yy, spawnX;
if (random(100) < argument0)
{
    if (canbeX == 1)
        xParasite = "What, you expected something useful?"
    xx = mean(bbox_left, bbox_right)
    yy = mean(bbox_top, bbox_bottom)
    pickup = irandom(3)
    spawnX = 0
    if (global.playerhealth == global.maxhealth && global.missiles == global.maxmissiles && global.smissiles == global.maxsmissiles)
        spawnX = irandom(1)
    pickup = irandom(4)
    if (pickup == 0)
    {
        if (oControl.mod_fusion == 1 && canbeX == 1)
            xParasite = instance_create(xx, yy, oHXPickup)
        else
            instance_create(xx, yy, oHPickup)
    }
    if (pickup == 1)
    {
        if (oControl.mod_fusion == 1 && canbeX == 1)
            xParasite = instance_create(xx, yy, oHXPickupBig)
        else
            instance_create(xx, yy, oHPickupBig)
    }
    if (pickup == 2)
    {
        if (oControl.mod_fusion == 1 && canbeX == 1)
            xParasite = instance_create(xx, yy, oMXPickup)
        else
            instance_create(xx, yy, oMPickup)
    }
    if (pickup == 3)
    {
        if (oControl.mod_fusion == 1 && canbeX == 1)
            xParasite = instance_create(xx, yy, oSMXPickup)
        else
            instance_create(xx, yy, oSMPickup)
    }
    if (pickup == 4)
    {
        if (oControl.mod_fusion == 1 && canbeX == 1)
            xParasite = instance_create(xx, yy, oPBXPickup)
        else
            instance_create(xx, yy, oPBPickup)
    }
    if (canbeX == 1 && instance_exists(xParasite) && oControl.mod_fusion == 1)
    {
        if (object_index == oEnemyFrozen)
        {
            xParasite.lastSprite = xSprite
            xParasite.lastFrame = xLastFrame
            xParasite.lastFacing = xLastFacing
            xParasite.lastAngle = xLastAngle
            xParasite.lastDepth = xLastDepth
            xParasite.lastXPos = xLastXPos
            xParasite.lastYPos = xLastYPos
            xParasite.lastEnemy = xLastEnemy
            xParasite.frozenAngle = image_angle
        }
        else
        {
            xParasite.lastSprite = sprite_index
            xParasite.lastFrame = image_index
            xParasite.lastFacing = image_xscale
            xParasite.lastAngle = image_angle
            xParasite.lastDepth = depth
            xParasite.lastXPos = xstart
            xParasite.lastYPos = ystart
            xParasite.lastEnemy = object_index
        }
        xParasite.lastEnemyX = x
        xParasite.lastEnemyY = y
        xParasite.lastYscale = image_yscale
        xParasite.lastEnemyTimer = timer
        xParasite.lastEnemyRotspeed = rotspeed
        xParasite.lastEnemyMyspeed = myspeed
        xParasite.lastEnemyOffset = offset
        xParasite.lastEnemyMoveratio = moveratio
        xParasite.lastEnemyMovesteps = movesteps
        if (object_index == oHalzyn)
            xParasite.lastEnemyGlow = glow
        if (sprite_index == sHalzynBodyFrozen)
            xParasite.lastEnemyGlow = xLastGlow
    }
}
