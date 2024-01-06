
import 'package:city_app/models/category.dart';
import 'package:city_app/more_menu/drawer_content.dart';
import 'package:city_app/viewmodel/article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Category> categories = [
    Category('business', 'İş'),
    Category('entertainment', 'Eğlence'),
    Category('general', 'Genel'),
    Category('health', 'Sağlık'),
    Category('science', 'Bilim'),
    Category('sports', 'Spor'),
    Category('technology', 'Teknoloji'),
  ];

  @override
  Widget build(BuildContext context) {
    const title = 'Haberler';
    final vm = Provider.of<ArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(title, style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey[400],
      drawer: const Drawer(
        backgroundColor: Colors.grey,
        child: DrawerContent(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: getCategoriesTab(vm),
            ),
          ),
          getWidgetByStatus(vm)
        ],
      ),
    );
  }

  List<GestureDetector> getCategoriesTab(ArticleListViewModel vm) {
    List<GestureDetector> list = [];
    for (int i = 0; i < categories.length; i++) {
      list.add(GestureDetector(
        onTap: () => vm.getNews(categories[i].key),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            categories[i].title.toUpperCase(),
            style: const TextStyle(fontSize: 16),
          ),
        )),
      ));
    }
    return list;
  }

  Widget getWidgetByStatus(ArticleListViewModel vm) {
    switch (vm.status.index) {
      case 2:
        return Expanded(
            child: ListView.builder(
                itemCount: vm.viewModel.articles.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        
                        Image.network(vm.viewModel.articles[index].urlToImage ??
                            'https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132484366.jpg'),
                            
                        ListTile(
                          title: Text(
                            vm.viewModel.articles[index].title ?? '',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              vm.viewModel.articles[index].description ?? ''),
                        ),
                        ButtonBar(
                          children: [
                            MaterialButton(
                              onPressed: () async {
                                await launchUrl(Uri.parse(
                                    vm.viewModel.articles[index].url ?? ''));
                              },
                              child: const Text(
                                'Detay',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }));
      default:
        return const Center(child: CircularProgressIndicator());
    }
  }
}
