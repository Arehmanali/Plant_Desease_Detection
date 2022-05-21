import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:flutter/material.dart';

class BlogDetails extends StatefulWidget {
  String? title;

  BlogDetails({this.title});

  @override
  _BlogDetailsState createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "${widget.title}",
          style: TextSizes.black14pxw500.copyWith(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [

          Center(
            child: Opacity(
              opacity: 0.13,
              child: Image.asset("assets/images/splash_ic.png",height: SizeConfig.safeBlockVertical*100,
              width: SizeConfig.safeBlockHorizontal*100,
              ),
            ),
          ),

          Positioned.fill(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 3,
                    vertical: SizeConfig.safeBlockVertical * 2),
                child: ((){
                  if (widget.title == "Apples"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Planting Apple Trees and Harvesting Apple",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Fall means apple harvest time! See our tips on harvesting apples—as well as caring for apple trees, apple tree problems, and everything about planting and growing juicy apples in the home garden! ",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "About Apples",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Apples trees aren’t just for people with acres upon acres of land. Even in a small space, you can plant a hedge of dwarf apple trees or an apple espalier and yield a successful crop. Spring planting is recommended in central and northern areas. Fall planting can also be successful but only in areas where autumn and winter weather is generally more mild and moist."
                              "",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Where Do Apples Grow?",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "However, climate considerations are very important for growing apples. As a general rule, if an apple tree is called “hardy,” it grows best in USDA Hardiness Zones 3 to 5. If termed “long-season,” apple quality will be best in Zones 5 to 8."
                              "Tree tags don’t always tell you where the variety grows best, but many catalogs do. Also check with your local Cooperative Extension Service for a recommendation specific to your area. Each variety has a number of chill hours needed to set fruit (i.e., the amount of time temperatures is between 32 and 45 degrees F). The farther north you go; the more chill hours an apple variety needs to avoid late spring freeze problems. Check tree tags for chill hour information or ask the seller.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Can You Grow Apple Trees from Seed?"
                              "",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "A common question is whether it’s possible to simply plant the seed of a variety that you like rather than buy a young tree. While it’s certainly possible to grow an apple tree from a seed, the apple tree you get probably won’t be the kind you hoped for!"
                              "Apple seeds are genetically different from their parent tree, which means that things like tree size, hardiness, and fruit quality will differ (and will usually be poorer). So, if you plant a Honey crisp seed, you won’t end up with Honey crisp apples. Plus, it can take 8-10 years for an apple seedling to grow big enough to produce apples, so you may end up waiting awhile!"
                              "Nevertheless, growing an apple seedling can still be a fun experiment. Here’s how to plant apple seeds: Apple seeds need to be exposed to cool, moist conditions before they are ready to germinate and grow. Sow them outdoors 1/2-inch-deep in the fall and the natural seasonal cycle will take care of the seed’s chilling needs for you. Alternatively, place the seeds in moistened sand in a plastic container and keep the container in the fridge for 3 to 4 months. Then, sow them outdoors 1/2-inch-deep once the threat of frost has passed. Once the seedling emerges, be sure to keep it well watered and protected from pests.",
                          style: TextSizes.black14pxw500,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Apples Need Pest Control"
                              "",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Also, it’s important to recognize that there are many diseases and fruit pests that attack apples so it’s rare for this fruit to be grown without any type of pesticides. Growing apples organically is much more difficult in the East coast than the West due to incidence of fungal diseases and types of pests that aren’t even present in the West. It will take much research and persistence to grow apples is you wish to avoid any type of spraying program."
                              "",style: TextSizes.black14pxw500,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Apple Trees Need Friends"
                              "",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Most apples need pollen from another apple tree to produce fruit. This is called cross-pollination. This second tree must be a different cultivar but also one that will flower at the same time. The presence of bees will be very important; poor pollination can reduce the number of fruit and cause misshapen fruit; some orchards rent or maintain bee hives for good pollination. Overusing broad-spectrum insecticides can reduce the number of bees. "
                              "",style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Apple_0.jpg",fit: BoxFit.cover,),
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Planting"
                              "",
                          style: TextSizes.black18pxw700,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "When to Plant Apple Trees"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "● Bare-root apple trees should be planted in the early spring as soon as the soil can be worked.\n\n"
                              "● Container-grown apple trees can be planted throughout the growing season as long as they are given enough water."
                              "",style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Selecting a Site"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "As with most fruit, apple trees produce best when grown in full sun, which means six or more hours of direct summer sunlight daily. "
                              " \n\n ● Apple trees need well-drained soil, but should be able to retain some moisture. Light- to medium-textured soils are best. Fruit trees struggle in heavy clay soil; poorly drained soils leads to root rot disease."
                              "\n\n● Plant fruit in a location with good air circulation so leaves dry quickly after a rainfall or irrigation (or the tree risks fungal leaf diseases)."
                              "\n\n● Make sure the tree will not be planted in a “frost pocket” where cold air settles in low-lying areas. Choose a higher site with a slip if possible so that cold air will flow away from the trees."
                              "\n\n● Do not plant trees near wooded areas or other trees. "
                              "\n\n● The ideal soil pH is 6.0 to 6.5 but a pH range of 5.5 to 7.0 is acceptable. Take a soil test prior to planting your apple trees."
                              "",style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Planting the Tree"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Before planting, remove all weeds and the grass in a 4-foot diameter circle. "
                              "\n\n ● After you purchase the tree, protect it from injury, drying out, freezing, or overheating. If the roots have dried out, soak them in water about 24 hours before planting."
                              "\n\n ● Tree spacing is influenced by the rootstock, soil fertility, and pruning. Seedlings or full-size trees should be planted about 15 to 18 feet apart in a row. A dwarfing rootstock might be 4 to 8 feet apart in a row. Of course, apple trees require cross-pollination; a different cultivar that blooms at the same time must be planted within 2,000 feet (preferably, nearer)."
                              "\n\n ● Dig a hole approximately twice the diameter of the root system and 2 feet deep. Place some of the loose soil back into the hole and loosen the soil on the walls of the planting hole so the roots can easily penetrate the soil. Spread the tree roots on the loose soil, making sure they are not twisted or crowded in the hole. Continue to replace soil around the roots. As you begin to cover the roots, firm the soil to be sure it surrounds the roots and to remove air pockets."
                              "\n\n ● Do not add fertilizer at planting time, as the roots can be “burned”. Fill the remainder of the hole with the loose soil, and press the soil down well."
                              "\n\n ● Most apple trees are grafted. The graft union should be at least 4 inches above the soil line so that roots do not emerge from the scion. The graft union (where the scion is attached to the rootstock) can be recognized by the swelling at the junction. "
                              "\n\n ● Dwarf apple trees are notoriously prone to uprooting under the weight of a heavy crop, so you should provide a support system for your hedge. You can grow your trees against a fence, or you can provide free-standing support in the form of a trellis."
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Growing"
                              "",
                          style: TextSizes.black18pxw700,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "General Care"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Water young trees regularly, especially those on semi dwarfing or dwarfing rootstocks, to ensure that the root system becomes well established."
                              "\n\n ● Refresh mulch periodically, but pull it away from the trunk so that it doesn’t rot. This also helps to prevent rodents from nesting in it over the winter and chewing on the tree’s bark."
                              "\n\n ● Apple trees require initial training to nurture a strong frame of branches so the trees can carry heavy apple crops. Dwarf plants must be supported with posts or trellis and trained to a central leader system. Standard (and sem-dwarf) trees should also be trained to a modified leader."
                              "\n\n ● Pest control measures will be an important part of care. Correct timing is critical to avoid harming the bees and affecting pollination. When used, pesticides are applied at a specific stage of flower and fruit development, not according to the calendar. It’s important to research your variety and climate to know which pests are most likely to be a problem, which will allow you to apply the right controls at the right time."
                              "\n\n ● If you wish to avoid pesticides, it is possible, though apple trees are the one of the most pest-susceptible fruits. For example, you can place paper bags around each apple of your tree, though this takes some time and labor. There are also organic pesticides."
                          ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Pruning Apple Trees"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Pruning slows a young tree’s overall growth and can delay fruiting, so don’t be in a hurry to prune, other than removing misplaced, broken, or dead branches. There are several techniques to direct growth without heavy pruning. For example:"
                              "\n\n ●  Rub off misplaced buds before they grow into misplaced branches."
                              "\n\n ●  Bend a stem down almost horizontally for a few weeks to slow growth and promote branches and fruiting. Tie down with strings to stakes in the ground or to lower branches."
                              "\n\n ● Prune yearly to maintain size and form once your apple tree has filled in and is bearing fruit. Pruning reduces disease by letting in more light and air. Large trees may need more pruning (and a ladder!). "
                              "\n\n ● Prune your mature tree when it is dormant. Completely cut away overly vigorous, upright stems (most common high up in the tree)."
                              "\n\n ● Remove weak twigs (which often hang from the undersides of limbs."
                              "\n\n ●  Shorten stems that become too droopy, especially those low in the tree."
                              "\n\n ● After about ten years, fruiting spurs (stubby branches that elongate only about a half-inch per year) become overcrowded and decrepit. Cut away some of them and shorten others."
                              "\n\n ● When a whole limb of fruiting spurs declines with age, cut it back to make room for a younger replacement."
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Thinning Apples"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Apples are often grown without any thinning other than what nature provides in the annual spring drop."
                              "\n\n ●However, to avoid potential disease and insect problems, it’s helpful to thin after the natural fruit drop (about 4 to 6 weeks after bloom) to one fruit per cluster, or about 6 to 8 inches between fruit."
                              "\n\n ●This seems hard but this practice evens out production, prevents a heavy crop from breaking limbs, and ensures better-tasting, larger fruit crop."
                              "\n\n ●Soon after fruit-set, remove the smallest fruits or damaged ones, leaving about four inches between those that remain."
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Harvesting"
                              "",
                          style: TextSizes.black18pxw700,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Harvesting Apples"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Harvest patiently. After all this pruning and caring, be sure to harvest your apples at their peak of perfection."
                              "\n\n ● Pluck your apples when their background color is no longer green."
                              "\n\n ●The stem should part readily from the branch when the fruit is cupped in the palm of your hand and given a slight twist around, then up (do not yank on the apple)."
                              "\n\n ●Different apple varieties mature at different times, so the harvest season can stretch from August to October."
                              "\n\n ●If the apple is overripe and soft, use for cooking!"
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Sorting Apples"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Only store mid or late season apples. Early season varieties don’t keep and are best eaten soon after picking. Mid-season varieties should keep for a few weeks, while late season varieties will stay in good condition for anywhere up to five months in a root cellar. Apples destined for storage must be perfect, with no bruises or blemishes that could provide entry points for rot."
                              "\n\n ●  Store apples by wrapping up individual fruits in newspaper or tissue paper. Place the wrapped apples onto trays that allow air to circulate. You can also store them unwrapped, but the fruits should not touch. Different varieties store for different lengths of time, so keep them separate and eat those that won’t store as long first."
                              "\n\n ● The ideal store is somewhere cool, dark, and well-ventilated. Most garages and sheds are ideal, while attics and basements should be avoided due to either excessive heat, lack of ventilation or low humidity. Check stored apples regularly and remove any that are going soft, brown or rotting."
                          ,style: TextSizes.black14pxw500,
                        ),
                      ],
                    );
                  }
                  else if (widget.title == "Tomatos"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Growing Tomatoes from Planting to Harvest"
                          "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "About Growing Tomatoes",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Tomato plants are tender warm-season crops that love the sun and cannot bear frost. It’s important not to put plants in the ground too early. In most regions, the soil is not warm enough to plant tomatoes outdoors until late spring and early summer except in zone 10, where they are a fall and winter crop."
                              "Tomatoes take 60 days to more than 100 days to harvest, depending on the variety (see more about varieties below). Due to their relatively long growing season requirements (and late planting date), most gardeners plant small “starter plants” or transplants instead of seeds after the weather has warmed up in spring. Many gardeners purchase their transplants at a garden center or nursery but you can certainly grow you own from seed indoors. "
                              "\n\nfew guidelines on buying transplants:"
                              "\n\n ● Choose young tomato plants from a reputable nursery."
                              "\n\n ● Good starter plants are short and stocky with dark green color and straight, sturdy stems about the size of a pencil or thicker."
                              "\n\n ● They should not have yellowing leaves, spots, or stress damage, nor have flowers or fruits already in progress."
                  ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "PLANTING"
                              "",
                          style: TextSizes.black18pxw700,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Select a site with full sun! In northern regions, 8 to 10 hours of direct sunlight are preferred. In southern regions, light afternoon shade (natural or applied, e.g., row covers) will help tomatoes to survive and thrive. Dig soil to about 1-foot-deep and mix in aged manure and/or compost. Give it two weeks to break down before planting."
                  "Also, choose a space where tomatoes (and members of their family, especially eggplants, peppers, and potatoes) have not grown in the previous couple of years.",
                          style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "When to Plant Tomatoes",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Tomatoes are long-season, heat-loving plants that won’t tolerate frost, so wait until the weather has warmed up in the spring.  If you are starting tomatoes from seed, sow indoors 6 weeks before the last expected spring frost date in your area. Sow seeds 1/2-inch deep in small trays. Plant seedlings outdoors about 2 weeks after that date or when temperatures stay in the mid-50 degree range both day and night."
                            "\n\n If you have a long enough growing season, it is also possible to direct-seed tomatoes in the garden soil (1/2-inch deep)—but not before the soil is at least 55°F. Note that 70°F soil is optimum for maximum germination within 5 days."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Growing Tomatoes in Container,",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Use a large pot or container (at least 20 inches in diameter) with drainage holes in the bottom. "
                              "\n\n ● Use loose, well-draining soil (e.g., at least 12 inches of a good “potting mix” with added organic material)."
                  "\n\n ● A tray of some sort should be placed under the pot to catch any excess water that drains out the bottom."
                  "\n\n ● Choose determinate types, such as bush or dwarf varieties. Many cherry tomatoes grow well in pots. Taller varieties may need to be staked."
                  "\n\n ● Plant one tomato plant per pot and give each at least 6 hours of sun per day."
                  "\n\n ●Keep soil moist. Containers will dry out more quickly than garden soil, so check daily and provide extra water during heat waves.",
                  style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Tomato_0.jpeg",fit: BoxFit.cover,),
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "GROWING"
                              "",
                          style: TextSizes.black18pxw700,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        Text(
                          "Watering"
                              "",
                          style: TextSizes.black16pxw600,
                        ),


                        Text(
                          "\n ● Water in the early morning so that plants have sufficient moisture to make it through a hot day."
                          "\n\n ● Water generously the first few days that the tomato seedlings or transplants are in the ground."
                          "\n\n ● Then water with about 2 inches (about 1.2 gallons) per square foot per week during the growing season. Deep watering encourages a strong root system."
                              "\n\n ● Avoid overhead watering and afternoon watering. Water at the base/soil level of a plant to avoid splashing water on the leaves (which invites disease)."
                              "\n\n ● Mulch 5 weeks after transplanting to retain moisture, keep soil from splashing the lower leaves, and control weeds. Apply 2 to 4 inches of organic mulch such as straw, hay, or bark chips."
                              "\n\n ● To help tomatoes through periods of drought, find some flat rocks and place one next to each plant. The rocks prevent water from evaporating from the soil."
                  ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Fertilizing"
                              "",
                          style: TextSizes.black16pxw600,
                        ),


                        Text(
                  "\n ● You should have already worked compost into the soil before planting, and added some bone meal to the planting hole when transplanting."
                  "\n\n ● Side-dress plants, applying liquid seaweed or fish emulsion or an organic fertilizer every 2 weeks, starting when tomatoes are about 1 inch in diameter (some folks say golf ball-size). If you are using an organic granular formula such as Espuma Tomato-Tone (4-7-10 or 3-4-6), pull mulch back a few inches and scratch 2 to 3 tablespoons fertilizer around the drip line of the plant. Water in, and replace mulch."
                  "\n\n ● Continue fertilizing tomatoes about every 3 to 4 weeks until frost."
                  "\n\n ● Note: Avoid fast-release fertilizers and avoid high-nitrogen fertilizers. As stated, too much nitrogen will result in lush foliage but few flowers and little or no fruit."
                  ,style: TextSizes.black14pxw500,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Pruning, pinching, staking"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        Text(
                          "\n ● If growing vining tomatoes, pinch off suckers (new, tiny stems and leaves between branches and the main stem). This aids air circulation and allows more sunlight into the middle of the plant.  "
                          "\n\n ● Gently tie the stems to stakes with rags, nylon stockings, twine, or soft string.  "
                          "\n\n ●  As a plant grows, trim the lower leaves from the bottom 12 inches of the stem."
                            ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "PESTS/DISEASES"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Tomato Problems"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "If no flowers form, plants may not be getting enough sun or water. Too little can stop flowering."
                          "\n\nIf plants produce a lot of flowers but no fruit, the cause might be inadequate light, too little water or inconsistent watering, too cold, or hot temperatures (above 75°F at night/90°F during the day), or not enough pollinators (bees)."
                          "\n\nIf flowers form but drop off the plant, this is due to high daytime temperatures (over 90°F). Provide shade during the hottest part of the day by using row covers or shade cloth."
                          "\n\n Low humidity can also affect pollination. The ideal is 40 to 70 percent. If humidity is low, mist the plant to help pollen to stick."
                  ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Tomato Pests"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Tomatoes are susceptible to insect pests. To avoid overpopulation of insect pests, follow these basic tips:"
                          "\n\nMonitor tomato plants daily, checking under leaves, checking fruit, and checking near the soil."
                        "\n\nTo dislodge many pests like Aphids, spray plants with a good jet stream from the hose."
                            "\n\nHandpick insect’s bigger insects like Tomato Hornworm with gloves on, dropping into a bucket of soapy water."
                        "\n\nApply insecticidal soap directly to the insect on the plant. This works for smaller pests, such as aphids and spider mites."
                        "\n\nApply horticultural oils or sprays diluted in water. Neem oil sprays block an insect’s air holes."
                        "\n\nIf you choose as a last resort to use insecticides like Sevin, keep in mind that you may be killing beneficial insects as well."
                        "\n\nWhen it comes to tomato diseases and other problems, most of the work is in prevention. Here are some tips to avoid tomato diseases:"
                        "\n\nPlant disease-resistant tomato varieties. Tomato disease-resistant codes are listed on seed or seedling packets (example: F = Fusarium Wilt)."
                  "\n\nRotate crops at least every three years in the same spot. Avoid planting other members of Solanaceous family in the same area as well. This includes potato, pepper, and eggplant."
                  "\n\nEnsure well-draining soil. Always mix in compost or organic matter."
                  "\n\nWater consistently! Do not overwater or underwater. Uneven watering may cause a condition called blossom end rot."
                  "\n\nDestroy infected plants. Unfortunately, you often need to remove and discard infected plants or the disease will overwinter. Do NOT put in a compost pile. "
                  "\n\nSolarize the soil. If the problem is really bad, you can treat your soil by covering it with plastic during the hottest part of the summer for 6 to 8 weeks; the sun will destroy the bacteria."
                  ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Tomato Diseases"
                              "",
                          style: TextSizes.black16pxw600,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Blossom-End Rot causes the bottom side of the tomato to develop dark, sunken spots, due to a calcium imbalance because of uneven watering. See the link for remedies and prevention."
                  "\n\n ● Early Blight is a fungal disease that causes leaves to drop. In July, the risks of blight increase, due to the combination of high humidity and warm days and nights. It starts with dark, concentric spots (brown to black), about 1/2-inch in diameter on the lower leaves and stems. If you catch it early and destroy infected leaves, you plant may survive. The best defense for outdoor tomatoes is good ventilation and stripping off the lower leaves as the fruits develop. This also helps the ripening process, as tomatoes have maximum exposure to sun. "
                  "\n\n ● Late Blight is a fungal disease that causes grey, moldy spots on leaves and fruit, which later turn brown. The disease is spread and supported by persistent damp weather. Unfortunately, once your tomato has late blight, there’s really no solution."
                  "\n\n ● Mosaic Virus creates distorted leaves and causes young growth to be narrow and twisted, and the leaves become mottled with yellow. Unfortunately, infected plants should be destroyed (but don’t put them in your compost pile)."
                  "\n\n ● Fusarium Wilt starts with yellowing and wilting on one side of the plant and moves up the plant as the fungus spreads. Unfortunately, once this disease strikes, the plant needs to be destroyed."
                  "\n\n ● Powdery Mildew is a fungal disease which leaves white spots or a dusting of white on the leaves. It can be managed. See the link to learn more."
                              "\n\n ● Cracking: When fruit growth is too rapid, the skin will crack. This usually occurs due to uneven watering or uneven moisture from weather conditions, such as (very rainy periods mixed with dry periods). Keep moisture levels constant with consistent watering and mulching.",
                          style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Harvesting"
                              "",
                          style: TextSizes.black18pxw700,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Leave garden tomatoes on the vine as long as possible."
                  "\n\nHarvest tomatoes when they are firm and very red, regardless of size, with perhaps some yellow remaining around the stem. Harvest tomatoes of other colors (orange, yellow, purple, or another rainbow shade) when they turn the correct color."
                  "\n\nIf temperatures start to drop and your tomatoes aren’t ripening, use one of these methods:"
                  "\n\nPull up the entire plant, brush off dirt, remove foliage, and hang the plant upside down in a basement or garage."
                          "\n\nPlace mature, pale green tomatoes stem up, in a paper bag and loosely seal it. Or wrap them in newspaper and place in a cardboard box. Store in a cool (55°F to 70°F), dark place. Cooler temperatures slow ripening; warmth speeds it. Check weekly and remove soft, spotted, diseased, or ripe fruit."
                          "\n\n Never place tomatoes on a sunny windowsill to ripen. They may rot before they are ripe!"
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "How to Store Tomatoes"
                              "",
                          style: TextSizes.black16pxw600,
                        ),


                        Text(
                          "\n ● Never refrigerate fresh garden tomatoes. Doing so spoils the flavor and texture that give them that garden tomato taste."
                            "\n\n ● To freeze, core fresh and unblemished tomatoes and place them whole in freezer bags or containers. Seal, label, and freeze. The skins will slip off when they thaw."
                            ,style: TextSizes.black14pxw500,
                        ),
                      ],
                    );
                  }
                  else if (widget.title == "Lemons"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Growing Lemons"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        Text(
                          "Growing a lemon tree isn’t that difficult. As long as you provide their basic needs, growing lemons can be a very rewarding experience.",style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "How to grow lemons trees at outdoors?"
                              "",
                          style: TextSizes.black16pxw600,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Lemons are more cold-sensitive than all other citrus trees. Due to this cold sensitivity, lemon trees should be planted near the south side of the home. Lemon trees need protection from frost. Growing them near the house should help with this. Lemon trees also require full sunlight for adequate growth."
                           "\n\n While lemon trees can tolerate a range of soils, including poor soil, most prefer well-drained, slightly acidic soil. Lemon trees should be set slightly higher than ground. Therefore, dig a hole somewhat shallower than the length of the root ball. Place the tree in the hole and replace soil, tamping firmly as you go. Water sufficiently and add some mulch to help retain moisture. Lemon trees require deep watering once weekly. If necessary, pruning may be done to maintain their shape and height."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/lemons_1.jpg",fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Lemon Tree Growing Indoors",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Lemons can make excellent houseplants and will be comfortable in a container as long it provides adequate drainage and room for growth. Heights of around 3 to 5 feet (1-1.5 m.) can be expected for a lemon tree growing indoors. They also prefer well-draining, slightly acidic soil. Keep the soil evenly moist and fertilize as needed."
                  "\n\nLemon trees thrive within a normal temperature range of about 70 F. (21 C.) throughout the day and 55 F. (13 C.) at night. Keep in mind that they will usually go into dormancy when temperatures fall below 55 F. (13 C.)"
                  "\n\nLemon trees require lots of light; therefore, they may need to be supplemented with fluorescent grow lights during winter."
                  "\n\nLemon trees can be placed outdoors during warm periods, which is also recommended in order to increase their chances of bearing fruit. When you grow a lemon tree indoors, bees and other insects are unable to pollinate them. Therefore, you should place them outdoors during summer unless you want to hand pollinate."
                  ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Propagating for Lemon Tree Cultivation:",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Many lemon trees are container-grown, purchased straight from the nursery. However, they can be propagated through cuttings, air layering, and seeds. The variety usually dictates the best method used; yet, different people see different results using different methods. Therefore, it’s best to find the method that works for you. The majority find it easier to propagate lemons by rooting large cuttings. While seeds can be used, the seedlings are usually slow to bear. When choosing to grow from seeds, allow them to dry out for a week or two. Once dried, plant the seeds about an inch deep in good potting soil and cover with clear plastic wrap. Set the pot in a sunny location and wait for it to reach 6 to 12 inches (15-30 cm.) before transplanting outdoors or to another pot."
                          ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/lemons_0.jpg",fit: BoxFit.cover,),
                        ),



                      ],
                    );
                  }
                  else if (widget.title == "Lychee"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Planting and Caring Tips for Your Lychee Tree"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        Text(
                          "The season is upon us for harvesting the fruit of the Lychee tree. Despite the fruits addictive flavor, it remains one of China’s best kept secrets. Lychees have a rough outer skin that separates easily leaving you with a flesh that is sweet to sub-acid, aromatic and tastes unlike anything else on earth.",
                          style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/lychee-1.jpeg",fit: BoxFit.cover,),
                        ),




                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "In SW Florida, fruit is ready for a short time in late May through early July and has a very short shelf life."
                            "\nThe trees were introduced to Florida in the 1930’s and some of the larger commercial groves are in an area southwest of Miami. They grow best in the subtropical climates where temperatures are cool and dry for a short time in the winter months."
                        "\nLychees do not like wet feet, so be sure to plant your tree in well drained soil. Trees can also be planted on a mound to ensure proper drainage. The native soil of Florida is fine for successful growing."
                          ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/lychee-0.jpeg",fit: BoxFit.cover,),
                        ),




                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),





                        Text(
                          "Tips for Growing & Caring for Lychee trees:",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "\n\n ● Temperature: Thrive in subtropical environments. Heavy tropical environments may result in no fruit production. Mature trees can withstand a light frost, but prolonged temperatures below 32 degrees may result in damage or even kill the tree."
                              "\n\n ● Best Dooryard Varieties: Hak Ip, Sweet Heart, Kwai Mai Pink and Mauritius. Commercial varieties such as: Brewster and Emperor are larger trees that may not be suited for a smaller yard."
                        "\n\n ● Avg. Height and Width: Varies with the variety, Lychee trees range from about 20 to 40 feet tall. Average is 25’ X 25”."
                        "\n\n ● Native Range: Common in areas of Southern China. Commercial plantations are common in Hawaii and Florida."
                        "\n\n ● Fertilize established trees regularly 1 to 2 times during the growing season from spring to the end of summer."
                        "\n\n ● Water: Lychees need regular watering during the growing season. Soils with too much salt in them, especially in the Southwest require regular watering to prevent salt build-up. Lychees should not be in standing water, as it will stunt their growth. Newly planted trees should be watered 2 to 3 times a week during the first weeks of planting, but can be reduced once the tree is established"
                        "\n\n ● Prune mature trees to help control the size and shape. The University of Florida Extension office recommends not cutting branches that are larger than 1 inch, or you risk having less fruit production."
                        "\n\n ● During Lychee season, we will be selling Lychee fruit at the Downtown Farmers Market at Centennial Park Thursdays from 7am to 1pm."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),



                      ],
                    );
                  }
                  else if (widget.title == "Bananas"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "How to Grow and Care for a Banana Tree"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        Text(
                          "If you're planting the banana tree outdoors, choosing the right planting site is key to making care easy. Grow this plant in a location where it will be sheltered from strong winds, as it is very susceptible to damaged leaves. Prepare your planting site by mixing some compost into the soil. And make sure you have enough space for the height and spread of your particular species."
                          "\n\nDuring the growing season (spring to fall), banana trees are water hogs. You might have to water daily, especially during hot weather, to maintain adequate soil moisture. The plants also will need regular fertilization throughout the growing season. Bananas form in the late summer in a cluster called a hand. Once the fruit is green but plumped up, it can be cut off the stalk and placed in a cool, dry space to finish ripening."
                  ,style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Bananas-0.webp",fit: BoxFit.cover,),
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Light",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Most types of bananas plants prefer to grow in full sun, meaning at least six hours of direct sunlight on most days. However, some varieties can scorch easily and will do better in partial shade."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Soil",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "These plants love organically rich, deep soil with good drainage and a slightly acidic soil pH. They typically have poor tolerance for salt in the soil."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Water",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Banana trees are tropical and originate in rainforests, so they need a lot of water and plenty of moisture in the air. They do best when planted in groups fairly close together, as this helps to retain moisture in the leaves. Water regularly to make sure the soil stays evenly moist but not soggy. Avoid overwatering, which can cause root rot.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Temperature and humidity",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "These plants thrive in warm, humid conditions, but they don't like temperature extremes. Even the hardy, cold-tolerant banana tree species prefer consistent temperatures ranging between 75 and 95 degrees Fahrenheit. Cold temperatures and dry conditions can cause the plants to quickly die back. To increase the level of humidity, mist the leaves daily.",
                          style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Fertilizers",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Banana trees are heavy feeders. Apply a balanced fertilizer regularly throughout the growing season, following label instructions. Also, mix compost into the soil annually to raise the level of organic matter.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        Text(
                          "Types of bananas",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "There are roughly 70 species and even more varieties of banana trees, including:"
                          "\n\n ● Musa acuminata: This species reaches around 12 to 20 feet tall and is often grown for its ornamental foliage thanks to its paddle-shaped leaves that can reach around 6 to 10 inches long."
                          "\n\n ● Musa ornata: Commonly referred to as the flowering banana, this species is mostly grown for its ornamental value; its small fruit is not typically eaten."
                          "\n\n ● Musa basjoo: Known as the Japanese banana, this species has fairly good cold tolerance and reaches around 6 to 14 feet tall.",
                          style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Pruning",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Before the banana tree fruits, prune it so there is only one main stem. After it has been growing for six to eight months, leave one sucker (small shoot at the base of the stem). This plant will replace the main stem in the next growing season. After the fruit is removed, cut the main stem down to 2.5 feet. Remove the rest of the stem in a few weeks, leaving the replacement sucker intact.",style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Propagating banana trees",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "The best method of propagation is division. To divide banana plants, separate the suckers from the rhizome (horizontal underground stem) using a sharp spade. Before you do this, wait until the suckers are at least 3 feet tall and have their own roots. Once you separate a sucker from the parent plant, allow the surface of the rhizome section to dry for a day or so. At this point, it will be ready for replanting in any appropriate location.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),




                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Potting and Repotting Banana Trees",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Banana trees can grow in containers, but they generally will need at least a 15-gallon pot at minimum for optimal growth. Ensure that the pot has drainage holes, and use a loose, organically rich potting mix. A benefit to potting your banana tree is you will be able to bring it indoors to shelter it from cold and inclement weather. However, potted banana trees tend to have higher watering and feeding needs, as they will use up what is in their limited soil faster than banana trees in the ground. In addition, they likely won't reach their maximum size and might not bear fruit. Still, many people prefer them for their foliage. You typically will need to divide and repot container banana trees every three years, separating any suckers from the parent plant.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Common Pests & Plant Diseases",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Owners of banana trees need to stay vigilant of the many pests and diseases that can afflict a banana tree. Pests include the following:"
                              "\n\n ● Aphids: These pests cause curled and shriveled foliage and can also transmit other diseases that will affect any fruit produced."
                              "\n\n ● Black weevils: If you see jelly-like sap oozing from the plant, you may have black weevils that can be eliminated with pesticides."
                              "\n\n ● Nematodes: This is the banana tree's most common pest that will rot the plant and fruit."
                              "\n\n ● Sap-sucking insects: Mealybugs and red spider mites are also common to banana trees."
                              "\n\n ● Scarring beetle: This pest invades bunches of the plant's fruit and can be eliminated with pesticide."
                              "\n\n ● Thrips: This pest will stain and split the peel of the plant's fruit."
                              "\n\n ● There are many diseases common to banana trees in large orchards and are taken care of with commercial fungicides and pesticides. As for indoor potted banana trees, be on the lookout for root rot, leaf-spot disease, wilt, and powdery mildew.",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),



                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Bananas-1.jpg",fit: BoxFit.cover,),
                        ),




                      ],
                    );
                  }
                  else if (widget.title == "Seedlings"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Tips for Transplanting Seedlings"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "How and When to Transplant Outdoors to The Garden",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "When we refer to “transplanting,” we mean the act of moving seedlings or small plants from their pots outside into the garden soil. This applies to both:"
                              "\n\n ● Small starter plants (called “transplants” or “starts”) purchased at the nursery. Some vegetable is challenging to start from seed (or take too long), so we rely on the nurseries to get them started. Examples are tomatoes, eggplant, and peppers."
                              "\n\n ● Young plants started from seed at home. Some gardeners start plants from seed indoors on their own to get a jump start on the season, especially if they live in a northern climate with a short growing season."
                              "\nKeep in mind that some vegetables (and flowers) are NOT cut out for transplanting or being moved; they are best and most easily sown by seed directly in the ground.",
                          style: TextSizes.black14pxw500,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/seedlings-0.webp",fit: BoxFit.cover,),
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "1. When to Transplant",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "When to transplant depends on the plant. Some plants, such as spinach, are cool-season crops, which means that they should be planted before outdoor temperatures get too warm. Others, like tomatoes and peppers, are warm-season crops and will be weakened by too-cool temperatures. The temperature of the soil is important, too! "
                          "\n\nDon’t rush it! Earlier isn’t necessarily better and cold temperatures will slow growth rates. Heat-loving plants shouldn’t be outside until nighttime temperatures remain consistently above 60°F (15°C). Keep an eye on local weather forecasts as you prepare for transplanting. If a serious cold snap is imminent, hold off on transplanting until temperatures are more agreeable."
                          "\n\nIf you start your plants from seed, it’s a good idea to keep track of when you start them and when you transplant them. This will help you plan in future years!",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "2. Prepare the Garden and the Plants",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "When the weather looks like it’s taking a turn for the better, start getting your garden ready for transplanting into the soil! "
                          "\n\n ● Loosen and amend soil. Your garden soil may have become compacted over winter, so loosen and aerate the soil before planting. Remove any rocks or roots of weeds. Work in plenty of organic matter to about a shovel’s depth to help the soil retain moisture, drain well, and allow easy penetration by seedling roots."
                          "\n\n ● Anything that raises the temperature of the soil will help plants adjust to the shock of the cold ground. Spread black plastic or landscaping fabric across the site to boost soil temperature a couple weeks before planting. "
                          "\n\n ● Avoid walking on the soil by creating paths or boards to stand on. Walking on the soil compacts it, making it more difficult for small roots, water, and air to penetrate. "
                          "\n\n ● During the transplants’ last week indoors, withhold fertilizer and water less often to condition them to the harsher outdoor life."
                          "\n\n ● Harden-off plants. Any seedlings or start plants that are coming from the indoors to the outdoors must go through a gradual transition or they’ll go through shock. Start by watering the plants thoroughly. Then, 7 to 10 days before transplanting, set the seedlings outdoors in dappled shade that is protected from wind for a few hours each day, gradually increasing their exposure to full sun and windy conditions. This will get them better accustomed to eventually living full-time outdoors.  "
                          "\n\n ● Keep the soil moist at all times during the hardening-off period. Dry air and spring breezes can result in rapid water loss. ",
                          style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "3. Transplanting from Pot to Soil in 10 Steps",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "If possible, transplant on a warm, overcast day in the early morning. This gives the plants a chance to settle into the soil without being instantly exposed to the intense midday sun."
                  "\n\n 1. Check soil moisture. Test to see if your soil is too wet or too dry to dig. Soil should be moist but not soaking wet. Water deeply a day before working the soil. Soil that’s too dry pulls moisture out of plant roots and damages them."
                  "\n\n 2.Use a rake to create a smooth and level surface."
                  "\n\n 3. Dig a planting hole that’s a little bit bigger than the plant’s root ball and about as deep."
                  "\n\n 4. Turn the pot upside down while supporting the soil side with your other hand, being careful not to crush or drop the plant. Tap the bottom of the pot to help the seedling out."
                  "\n\n 5. Place the seedling in the planting hole at the same depth that it was growing in the pot. You should be able to cover the seedling with about ¼ inch of soil. Fill in with soil around the root ball."
                  "\n\n 6. Gently tamp down the soil around the seedling so there’s good contact between the seedling’s roots and the soil. "
                  "\n\n 7. Soak the soil around new seedlings immediately after transplanting in order to settle the roots, eliminate air pockets, and reduce the potential of transplant shock."
                  "\n\n 8. A few days after transplanting, give each seedling a cup of a starter fertilizer to ensure that phosphorus—which promotes strong root development—is available in the root zone of new transplants. Mix two tablespoons of a 15-30-15 starter fertilizer into a gallon of water (one tablespoon for vining crops such as melons and cucumbers)."
                  "\n\n 9. If the season or your climate is particularly dry, spread mulch to reduce moisture loss."
                  "\n\n 10.Watch the forecast for late spring frosts and plan to protect your plants accordingly. Cloches, cold frames, or sheets can be used to protect plants. Be sure to remove protective coverings in the morning. "
                          "\n\nAfter you transplant, keep the soil bed moist, never allowing it to dry out. Water gently with a watering can at the soil level (NOT from above). Until the plants are well established, water often enough (usually about once a day) so that the soil surface never dries out, but remains constantly moist. ",
                  style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),






                      ],
                    );
                  }
                  else if (widget.title == "Vegetables"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [

                        Text(
                          "1. Lettuce",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "We’ve never known a garden that cannot grow lettuce."
                              "\n\nLettuce can be sown directly in your garden bed, or started indoors for transplanting. It’s one of the few crops that can be grown all year in our climate, but in hot weather it should be shaded and harvested at smaller sizes. Lettuce growth slows in shade; it is also slower to go to seed, or “bolt,” which means that it can be harvested for longer."
                              "\n\nAn endless assortment of leaf shapes and shades of green and red means you’ll never get tired of growing new lettuce varieties. Leaf lettuces can be cut as they grow, and you can enjoy several harvests from the same plant by just snipping off what you need each time."
                              "\n\nIf you want full heads of romaine and head lettuce to develop, thin them. Allow for 8 to 10 inches between plants. As you thin young plants, save the delicate small leaves for salads.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Littuce.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "2. Green Beans",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Beans grow even in fairly poor soils, because they fix the nitrogen as they go! Bush varieties don’t require trellising, but pole varieties provide a more extended harvest. In cool areas, snap beans are easiest. In hot areas, lima beans, southern peas, and asparagus beans are also very easy to grow. All bean plants are fast growers and thrive in warm, moist soil. ",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Green Beans.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "3. Peas",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Plant peas as soon as the soil can be worked—2 weeks before the average last spring frost for your region, if possible. To harvest a continuous supply of peas during the summer, simultaneously sow varieties with different maturity dates. Then sow more seeds about 2 weeks later. Continue this pattern, sowing no later than mid-June.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Peas.jpg",fit: BoxFit.cover,),
                        ),


                        Text(
                          "4. Radishes",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Radishes can be harvested in as little as 24 days after planting, and can be inter-planted with slower-growing vegetables. You can plant radishes as soon as you can work the soil in the spring."
                          "Sow each seed 2 inches apart or more, or thin them to this spacing after they sprout. Cover the seeds with about half an inch of compost or soil."
                        "Here’s a tip: Radish seeds are natural companions to carrots. Mix radish seeds with carrot seeds before you sow, especially if your soil tends to develop a tough crust. The quick-to-sprout radishes will push up through the soil, breaking it up for the later-sprouting carrots. As you harvest the radishes, the carrots will fill in the row.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Radishes.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "5. Carrots",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "We’re including carrots only because they’re super easy to grow as long as they’re planted in loose, sandy soil during the cooler periods of the growing season—spring and fall (carrots can tolerate frost). Not all carrots are orange; varieties range in color from purple to white, and some are resistant to diseases and pests."
                          "Many beginners find their carrots are short and deformed. This is typically due to poor, rocky soil, so it’s important to provide soft, loose soil that drains well. Mix in some sand and really loosen it up. Also, it is essential to THIN carrot seedlings to the proper spacing so that they’re not overcrowded. Be bold! Thin those seedlings if you want carrots to form properly. ",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Carrots.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "6. Cucumbers",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Prepare in advance for cucumbers; amend the soil with a fertilizer high in nitrogen and potassium to support the plant’s large yields. If possible, plant cucumbers in the sun next to a fence. The fence will serve as support for climbing and act as a shelter. Or plant them near corn. The corn will trap the heat that cucumbers crave and also serve as a windbreak.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Cucumbers.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "7. Kale",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Like it or not, super-nutritious kale is very hardy and can grow in a wide range of temperatures. It can be harvested at many different stages, and the buds and flowers are edible, too! Mustards and collards are closely related to kale and are also easy to grow."
                          "Set out plants any time, from early spring to early summer and kale will grow until it gets too hot. Plant again the fall, especially if you live in the southern United States. Another nice thing about kale is that it only gets sweeter after being hit by a couple frosts. Try kale baked, stir-fried, or steamed. Enjoy in salads, smoothies, omelettes, casseroles, or wherever you’d use spinach.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Kale.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "8. Swiss Chard",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Swiss chard—or simply “chard”—is a member of the beet family. It does well in both cool and warm weather. It is a nutritional superfood, high in vitamins A, C, and K as well as minerals, phytonutrients, and fiber—plus, its rainbow of colors are beautiful! ",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Swiss Chard.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "9. Beets",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "You haven’t lived until you’ve tasted beets you’ve grown yourself. We mean it! Nothing compares to garden-fresh beets, boiled or roasted until tender."
                            "The quirky seed capsules contain two or three beet seeds, so the seedlings will always need to be thinned. Sow the seed capsules about an inch deep, and 4 inches apart."
                        "Harvest the roots at any time up until they’re the size of a tennis ball. While you’re waiting for them to plump up, why not try a few of the leaves? They can be used just like spinach, giving you two harvests from one plant.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Beets.jpg",fit: BoxFit.cover,),
                        ),



                        Text(
                          "10. Summer Squash (Zucchini)",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Summer squash and zucchini like well-composted soil and need plenty of space (plant them 3 to 6 feet apart in warm soil and lots of sun.) Soon enough, you’ll have so many zucchinis, you’ll be leaving them on neighbors’ doorsteps! Always water at the soil level—not the leaves—to avoid powdery mildew.",
                          style: TextSizes.black14pxw500,
                        ),
                        Container(
                          height: 200,
                          width: SizeConfig.screenWidth,
                          child: Image.asset("assets/images/Summer Squash (Zucchini).jpg",fit: BoxFit.cover,),
                        ),




                      ],
                    );
                  }
                  else if (widget.title == "Water Plants for Healthy Growth"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "How to Water Plants for Healthy Growth?"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Keep plants hydrated and happy on hot days! It’s sounds easy, however, it’s very important to know how much to water a plant so that it’s not too wet nor too dry.",
                          style: TextSizes.black14pxw500,
                        ),


                        Text(
                          "Watering the Vegetable Garden: How to Water Plants for Healthier Growth",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Many gardeners water more often than they need to, encouraging plants to produce shallow roots that make them ever more dependent on you for water. For deeper roots, water less frequently so that the roots draw on the moisture found further down in the soil. A thorough drenching once a week is better than a light sprinkles every couple of days. "
                          "\n\n In dry weather prioritize seedlings over established plants, as they need more water until they have developed their root systems. Some crops, such as leafy salads and celery, require more water than others, while others appreciate extra water at crucial stages in their development, for example peas, tomatoes and squashes as they come into flower and produce their pods or fruits. Tall plants such as climbing beans will draw a lot of moisture from the soil, so will need more watering than other crops."
                          "\n\n Apply water as close to the roots as you can, and try to avoid wetting the foliage, which is wasteful and can promote disease. A watering can will help you to get in among the foliage. Avoid watering in the middle the day when much of the moisture applied will quickly evaporate."
                          "\n\n Sometimes the soil surface can look dry while, just beneath, there’s plenty of moisture. Dig a hole to see how dry the ground really is. If it’s moist where the roots are, you don’t need to water yet.",
                        style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Water-wise Irrigation",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Planting strategically can help save water. Create miniature reservoirs for thirsty plants such as zucchinis by banking up a miniature levee around each plant. This holds the water you add in place and allows it to slowly drain into the soil, rather than running off. You can also sink plant pots into the soil then water into these, or cut the bottom off a plastic drinks bottle, prick holes into the cap, then bury it upside down into the soil to slowly irrigate the roots."
                          "\n\nIf the weather is dry when it’s time to sow, water along the seed drills first. Let the water drain away, then water again before sowing your seed and covering over with soil. There’s no need to add more water after covering the seeds over. In hotter climates you may also need to rig up some shading until seedlings are well established."
                        "\n\nWhen planting out seedlings or young plants, water into the planting hole before planting, set the seedling into the ground, then water again to settle the soil around the root ball. The additional moisture around the root ball will get the plant off to a really strong start."
                        "\n\nLarger containers dry out much more slowly than smaller ones. If you won’t be able to water regularly, mix some water-retaining granules into the compost before planting, and group pots together to help raise humidity, which will slow down evaporation.",
                        style: TextSizes.black14pxw500,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Collect and Store Water",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Rainwater is better for plants than treated water. Collect as much of it as you can by installing water barrels to downpipes. You can link up multiple barrels using connectors."
                              "\n\nWater barrels can also be added to your garden plan. Simply click to select, move to where you want it on the plan, then click and drag to place it. Use the corner ‘handles’ to adjust the area of the barrel to accurately reflect the size of your model."
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Collect and Store Water",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Mulching with organic matter can dramatically slow evaporation from the ground. Suitable mulches include dried grass clippings and compost, replenished as necessary during the course of the growing season."
                          "\n\nThe best results come from repeatedly applying organic matter such as compost over a number of years. This will gradually improve your soil’s structure and its moisture-holding ability, ultimately ensuring the health and vigor of your plants."
                          "\n\nWatering exactly where it’s needed, when it’s needed, will save a lot of time—and water!"
                          ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),




                      ],
                    );
                  }
                  else if (widget.title == "Five Golden Rules of Garden Planning"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Five Golden Rules of Garden Planning"
                              "",
                          style: TextSizes.black18pxw700,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "These five rules are both simple and incredibly effective at improving results and yields.",style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),

                        Text(
                          "Rule 1: Provide the right growing environment.",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Success with vegetables starts with picking the right location to grow them in. Most vegetables prefer full sun, which encourages strong growth and resilience to pests and diseases. If you haven’t got anywhere in full sun, then grow crops that can cope with shade, such as leafy salads and greens. Cool-season crops like peas will benefit from summer shade in hot climates."
                            "\n\nGood soil is the foundation to any successful garden, so make sure that the ground your vegetables grow in is fertile and moisture-retentive yet well-drained. You can improve any soil type by adding well-rotted compost, which can be dug in or left on the soil surface between your crops."
                            ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Rule 2: Grow what you like!",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "It may seem obvious, but there’s little point in growing what you don’t like! Concentrate on those fruits and vegetables you enjoy eating and you’ll be motivated to keep your crops in good condition and see them through to harvest. By growing your own you can also place your emphasis on flavor, choosing varieties that promise exceptional taste and quality.",
                          style: TextSizes.black14pxw500,
                        ),



                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Rule 3: Make the most of the space you have.",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Where space is at a premium, consider directing your growing ambitions towards those vegetables that are hard to find in the grocery store – heritage tomatoes or unusual colors of carrots, for example. It also makes sense to grow crops that are expensive to buy, including most herbs, fruit, leeks, zucchini and pole beans."
                            "\n\n Many types and varieties of fruits and vegetables are well-suited to growing in containers. Miniature varieties of vegetables, naturally compact salads and tree fruits grown on dwarfing rootstocks can all turn an empty terrace or balcony into a produce-packed paradise, as long as they’re kept well-watered in summer."
                          ,style: TextSizes.black14pxw500,
                        ),


                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Rule 4: Make gardening easy.",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Don’t let your kitchen garden get ahead of you. Some vegetables require more work than others, so if you haven’t got much time choose vegetables that are easy to grow. For instance, perennial herbs require little maintenance once they’re established and can be picked just when needed."
                            "\n\n Pay attention to the descriptions of varieties, and opt for those that are suited to your growing conditions and the time and resources you have available. Pest and disease resistance is worth seeking out if you’re after an easier time!"
                            ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),



                        Text(
                          "Rule 5: Timing is of the essence.",
                          style: TextSizes.black16pxw600,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Text(
                          "Locating your vegetable garden nearer to the house will make it easier to tend and harvest, while pots of regularly-used herbs can be positioned right outside the back door. Most crops need watering in dry weather, so make sure there’s a water source near to your garden. Install additional water barrels to collect rainwater from greenhouse or shed roofs."
                            "\n\n Paths between beds should be wide enough for a wheelbarrow, while beds should be of the right proportions for easy maintenance and crop rotation."
                          "\n\n The Garden Planner can help you to lay out your garden like a professional. Lay out the position of paths, beds and containers, include vital garden objects such as compost bins and water barrels, and mark the location of growing aids, for example irrigation lines and plant supports."
                          "\n\n tagger your harvests and enjoy more home-grown produce for longer. Quick-growing crops such as radishes can be sown little and often to spread harvests out. Prolific croppers such as pole beans, chard and zucchini should be picked little and often to encourage more produce to follow. With a little careful planning one crop can be followed immediately with another, so that the ground is continuously occupied and achieving its full potential."
                          "\n\n The Garden Planner is a powerful tool to help plan this type of succession cropping. By viewing your plan in a particular month you can see where and when gaps appear. You can then click the custom filter button to show only crops that can be sown or planted in that same month, and choose from the filtered crop choices to fill in the gaps in your plan."
                            ,style: TextSizes.black14pxw500,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),



                      ],
                    );
                  }
                  else return Container();
                }())

              ),
            ),
          ),
        ],
      ),
    );
  }
}
