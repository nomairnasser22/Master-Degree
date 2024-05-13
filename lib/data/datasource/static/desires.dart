class desire_list {
  late String title ;
  late bool value ;
  desire_list({required this.title , this.value = false });

  change(bool done){
    done = !done ;
  }
}