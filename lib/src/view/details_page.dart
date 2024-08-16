import 'package:cat_breeds/src/models/cat.dart';
import 'package:cat_breeds/src/utils/browser.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.catDetail});

  final Cat catDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(
              child: Text(
            catDetail.breeds.first.name,
            style: const TextStyle(fontWeight: FontWeight.w700),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network(
                  catDetail.url,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(catDetail.breeds.first.temperament, style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      RichText(text: 
                        TextSpan(text: "Country of origin: ", 
                        style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(text: catDetail.breeds.first.origin, style: const TextStyle(fontWeight: FontWeight.w400))
                        ]),
                      ),
                      const SizedBox(height: 8),
                      const Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                      Text(catDetail.breeds.first.description, style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Intelligence: ${catDetail.breeds.first.intelligence}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Weight: ${catDetail.breeds.first.weight.metric} Kg", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Life span: ${catDetail.breeds.first.lifeSpan} years", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Adaptability: ${catDetail.breeds.first.adaptability}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Indoor: ${catDetail.breeds.first.indoor}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Affection level: ${catDetail.breeds.first.affectionLevel}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Child friendly: ${catDetail.breeds.first.childFriendly}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Dog friendly: ${catDetail.breeds.first.dogFriendly}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Energy level: ${catDetail.breeds.first.energyLevel}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Grooming: ${catDetail.breeds.first.grooming}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Health issues: ${catDetail.breeds.first.healthIssues}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Shedding level: ${catDetail.breeds.first.sheddingLevel}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Social needs: ${catDetail.breeds.first.socialNeeds}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Stranger friendly: ${catDetail.breeds.first.strangerFriendly}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Vocalisation: ${catDetail.breeds.first.vocalisation}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Experimental: ${catDetail.breeds.first.experimental}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Hairless: ${catDetail.breeds.first.hairless}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Natural: ${catDetail.breeds.first.natural}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Rare: ${catDetail.breeds.first.rare}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Rex: ${catDetail.breeds.first.rex}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Suppressed tail: ${catDetail.breeds.first.suppressedTail}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Short legs: ${catDetail.breeds.first.shortLegs}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("Hypoallergenic: ${catDetail.breeds.first.hypoallergenic}", style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.blue.shade400,
                            fontFamily: 'SF Pro Display',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                            decoration: TextDecoration.underline,
                          ),
                          children: [
                            TextSpan(
                              text:"${catDetail.breeds.first.wikipediaUrl}",
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                await openDefaultBrowser(
                                  "${catDetail.breeds.first.wikipediaUrl}",
                                );
                              },
                            ),
                            TextSpan(
                              text:"\n${catDetail.breeds.first.cfaUrl}",
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                await openDefaultBrowser(
                                  "${catDetail.breeds.first.cfaUrl}",
                                );
                              },
                            ),
                            TextSpan(
                              text:"\n${catDetail.breeds.first.vetstreetUrl}",
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                await openDefaultBrowser(
                                  "${catDetail.breeds.first.vetstreetUrl}",
                                );
                              },
                            ),
                            TextSpan(
                              text:"\n${catDetail.breeds.first.vcahospitalsUrl}",
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                await openDefaultBrowser(
                                  "${catDetail.breeds.first.vcahospitalsUrl}",
                                );
                              },
                            ),
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
