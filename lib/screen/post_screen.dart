import 'package:exrcise_api/screen/hasil_post.dart';
import 'package:exrcise_api/service/service_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController namaController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Screen')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(hintText: 'Nama'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: jobController,
                decoration: InputDecoration(hintText: 'Job'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(    
                  onPressed: () async {
                    await ServiceUser()
                        .postData(namaController.text, jobController.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HasilPost(
                                  nama: namaController.text,
                                  job: jobController.text,
                                )));
                  },
                  child: Text('SUBMIT DATA')),

              
            ],
          ),
        ),
      ),
    );
  }
}
