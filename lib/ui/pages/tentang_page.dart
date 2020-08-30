part of 'pages.dart';

class TentangPage extends StatelessWidget {
  final pdf = pw.Document();

  writeOnPdf() {
    pdf.addPage(pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return <pw.Widget>[
            pw.Header(level: 0, child: pw.Text("adi")),
            pw.Paragraph(text: "Latihan latiham"),
            pw.Header(level: 1, child: pw.Text("Second Heading")),
            pw.Paragraph(
                text:
                    "Latihan latiham jkdsndmmkdsfkfsfn jfjsfkf jsndsnklfamsof jjdsdfnajfnjd njsnfksndfkas jsjfksmfks"),
          ];
        }));
  }

  Future savePdf() async {
    Directory documentDirectory = await getApplicationSupportDirectory();

    String documentPath = documentDirectory.path;

    File file = File("$documentPath/example.pdf");

    file.writeAsBytesSync(pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
              child: Text("test"),
              onPressed: () async {
                writeOnPdf();
                await savePdf();
                Directory documentDirectory =
                    await getApplicationDocumentsDirectory();

                String documentPath = documentDirectory.path;

                String fullPath = "$documentPath/example.pdf";

                context
                    .bloc<PageBloc>()
                    .add(GoToViewPdfPpdbPage(path: fullPath));
              })),
    );
  }
}
