import "dart:math";

T getRandomElement<T>(List<T> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}

String heyo() {
  var list = ['Trash covered the landscape like sprinkles do a birthday cake.','He stomped on his fruit loops and thus became a cereal killer.','A kangaroo is really just a rabbit on steroids.','Choosing to do nothing is still a choice, after all.','He drank life before spitting it out.','He figured a few sticks of dynamite were easier than a fishing pole to catch fish.','The view from the lighthouse excited even the most seasoned traveler.','She did her best to help him.','She advised him to come back at once.','Siri became confused when we reused to follow her directions.','Pantyhose and heels are an interesting choice of attire for the beach.','Courage and stupidity were all he had.','The dead trees waited to be ignited by the smallest spark and seek their revenge.','The glacier came alive as the climbers hiked closer.','The best key lime pie is still up for debate.','Each person who knows you has a different perception of who you are.','Her scream silenced the rowdy teenagers.','Two more days and all his problems would be solved.'];
  var element = getRandomElement(list);
  return(element);
}