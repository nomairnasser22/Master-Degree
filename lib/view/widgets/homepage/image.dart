import 'dart:io';

import 'package:flutter/material.dart';

class ImageCustomer extends StatelessWidget {
  File? fileimage ;
  ImageCustomer({super.key , required this.fileimage });

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 160,
                    height: 190,
                    child: fileimage == null
                        ? const Icon(
                            Icons.image,
                            size: 100,
                          )
                        : Image.file(fileimage! ),
                        
                  );
  }
}