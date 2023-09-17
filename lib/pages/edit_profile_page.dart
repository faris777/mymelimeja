import 'package:flutter/material.dart';
import 'package:mymeimeja/components/app_text_field.dart';
import 'package:mymeimeja/components/user_avatar.dart';
import 'package:mymeimeja/styles/colors.dart';
import 'package:mymeimeja/styles/text.dart';
enum Gender {male , female, other,none}
class EditProfile extends StatefulWidget {
  const EditProfile ({super.key});
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
      var genders = Gender.none;
  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      appBar: AppBar(title: const Text('EditProfile'),
      ),
      body: Padding(padding:const  EdgeInsets.all(24),
        child: Column(
               children: [
               Stack(children: [ const Padding(
                padding: EdgeInsets.all(8.0),
                child: UserAvatar(size:120),
              ),
              Positioned(bottom: 0,right: 0,
              child:Container( padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(color: AppColor.primary,
              borderRadius: BorderRadius.all(Radius.circular(6)),), child: const Icon(Icons.edit,size: 20,color: AppColor.black,) ,),)]),
              const SizedBox(height: 60,),
            const  AppTextField(hint: 'First Name'),
            const  SizedBox(height: 16,),
           const   AppTextField(hint: 'Last Name'),
            const    SizedBox(height: 16,),
                const   AppTextField(hint: 'Phone Number'),
             const  SizedBox(height: 16,),
             const AppTextField(hint: 'Location'),
               const  SizedBox(height: 16,),
             const AppTextField(hint: 'Birthday '),
             const SizedBox(height: 16,),
             Container(
              padding:const EdgeInsets.only(left: 12,right: 12,top:6),
              decoration:BoxDecoration(
                color: AppColor.FieldColor,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Gender' , style: AppText.body1.copyWith(
                    fontSize: 12,
                  ),),
                   Row(
                     children: [
                       Expanded(
                         child: RadioListTile(
                          title:const Text('Male') ,
                          contentPadding: const EdgeInsets.all(0),
                          groupValue: genders, value:Gender.male,
                          visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.minimumDensity),
                          onChanged: ((value) => {
                          setState((){genders = Gender.male;})
                         })),
                       ),
                        Expanded(
                          child: RadioListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title:const Text('Female'), 
                             visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.minimumDensity),
                          groupValue:genders,value:Gender.female, 
                          onChanged: ((value) => {
                             setState((){genders = Gender.female;})
                          })),
                        ),
                         Expanded(
                           child: RadioListTile(title: const Text('Other'),
                           contentPadding: const EdgeInsets.all(0),
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical: VisualDensity.minimumDensity),
                           value: Gender.other, 
                           groupValue: genders,
                            onChanged: ((value) => {
                             setState((){genders = Gender.other;})
                           })),
                         ),
                     ],
                   ),
                 ],
               ),
             )
          ],
        ),
      )
    );
  }
}