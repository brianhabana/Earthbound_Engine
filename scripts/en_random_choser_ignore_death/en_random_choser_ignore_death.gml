function en_random_choser_ignore_death() {
	var list;
	list = ds_list_create();

	ds_list_add(list,1);
	ds_list_add(list,2);
	ds_list_add(list,3);
	ds_list_add(list,4);

	ds_list_shuffle(list);
	tgt = ds_list_find_value(list, 0);
	ds_list_destroy(list);



}
