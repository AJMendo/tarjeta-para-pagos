part of'helpers.dart';

mostrarLoading( BuildContext context ) {

  showDialog(
    context: context,
    barrierDismissible: false, 
    builder: (_) => const AlertDialog(
      title: Text('Espere...'),
      content: LinearProgressIndicator(),
    )
  );
}

mostarAlerta( BuildContext context, String titulo, String mensaje ) {

  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: ( _ ) => AlertDialog(
      title: Text( titulo ),
      content: Text( mensaje ),
      actions: [
        MaterialButton(
          child: const Text('ok'),
          onPressed: () => Navigator.of(context).pop()
        )
      ],
    )
  );
}

