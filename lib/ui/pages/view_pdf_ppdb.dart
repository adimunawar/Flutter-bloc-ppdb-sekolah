part of 'pages.dart';

class ViewPdfPpdb extends StatelessWidget {
  final String path;

  ViewPdfPpdb({this.path});

  @override
  Widget build(BuildContext context) {
    return Center(child: PDFViewerScaffold(path: path));
  }
}
