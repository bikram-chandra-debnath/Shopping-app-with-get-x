import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Bikram nath",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text("Biram nath83@gmail.com",style: Theme.of(context).textTheme.bodyMedium,),
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.edit)),
    );
  }
}
