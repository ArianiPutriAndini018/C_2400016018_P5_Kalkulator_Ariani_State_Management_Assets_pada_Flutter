import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/profile_info_item.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  final String nama = 'Ariani Putri Andini';
  final String jurusan = 'Sistem Informasi';
  final String status = 'UI/UX Designer';


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(22),
      child: Column(
        children: [
          const SizedBox(height: 20),


          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppTheme.orange,
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: AppTheme.black, width: 3),
              boxShadow: [AppTheme.brutalShadow(x: 8, y: 8)],
            ),
            child: Column(
              children: [
                Container(
                  width: 145,
                  height: 145,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.butter,
                    border: Border.all(color: AppTheme.black, width: 3),
                   
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          size: 80,
                          color: AppTheme.black,
                        );
                      },
                    ),
                  ),
                ),


                const SizedBox(height: 22),


                Text(
                  nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                  ),
                ),


                const SizedBox(height: 8),


                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.pink,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppTheme.black, width: 2.5),
                  ),
                  child: Text(
                    status,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),


          const SizedBox(height: 30),


          ProfileInfoItem(
            icon: Icons.person,
            title: 'Nama Lengkap',
            value: nama,
            color: AppTheme.butter,
          ),


          ProfileInfoItem(
            icon: Icons.school,
            title: 'Jurusan / Program Studi',
            value: jurusan,
            color: AppTheme.blue,
          ),


          ProfileInfoItem(
            icon: Icons.code,
            title: 'Status',
            value: status,
            color: AppTheme.green,
          ),
        ],
      ),
    );
  }
}