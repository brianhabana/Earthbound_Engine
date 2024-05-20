// Alarm[1] event in obj_inv

// Ensure we're handling an item transfer
if (global.transfer_item) {
    var target_player = global.transfer_target; // The player to receive the item
    var item_to_transfer = global.item_to_transfer; // The item being transferred
    
    // Attempt to add the item to the target player's inventory
    if (add_item(item_to_transfer, target_player) != -1) {
        // Successfully added item, now remove it from the current player
        del_item(global.item_index);
        
        // Update equipment if necessary
        if (!item_exists(global.current_inv, global.weap_equip[global.current_inv + 1])) {
            global.weap_equip[global.current_inv + 1] = 0;
            eqp_boosts(global.current_inv + 1);
        }
        if (!item_exists(global.current_inv, global.body_equip[global.current_inv + 1])) {
            global.body_equip[global.current_inv + 1] = 0;
            eqp_boosts(global.current_inv + 1);
        }
        if (!item_exists(global.current_inv, global.arm_equip[global.current_inv + 1])) {
            global.arm_equip[global.current_inv + 1] = 0;
            eqp_boosts(global.current_inv + 1);
        }
        if (!item_exists(global.current_inv, global.other_equip[global.current_inv + 1])) {
            global.other_equip[global.current_inv + 1] = 0;
            eqp_boosts(global.current_inv + 1);
        }
        
        // Trigger inventory update
        with obj_inv {
            // Refresh the inventory display
            alarm[0] = 1;
        }
        instance_destroy();
    } else {
        // Failed to add item, notify player
        message = "@ There is no space left on " + global.s_name[target_player] + "'s inventory.";
        alarm[0] = 40;
    }

    // Reset transfer flags
    global.transfer_item = false;
    global.transfer_target = -1;
    global.item_to_transfer = -1;
    global.item_index = -1;
}
