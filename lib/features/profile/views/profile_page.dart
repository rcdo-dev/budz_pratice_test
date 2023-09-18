import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_bloc.dart';
import '../bloc/profile_events.dart';
import '../bloc/profile_state.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/short_profile.dart';
import '../../shared/themes/budz_colors.dart';
import '../../shared/themes/budz_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ProfileBloc();
    bloc.add(LoadProfileEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is ProfileInitialState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileLoaded) {
          final client = state.client;
          return Scaffold(
            backgroundColor: BudzColors.greyLighten,
            appBar: CustomAppBar(
              sizeValue: Size(
                size.width,
                size.height / 8,
              ),
              child: ShortProfile(
                userName: client!.user!.fullname.toString(),
                userEmail: client.user!.email.toString(),
                nameInitials: client.user!.fullname.toString().substring(0, 1),
              ),
            ),
            body: SizedBox(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height / 26,
                    ),
                    Column(
                      children: <Widget>[
                        CustomElevatedButton(
                          onPressed: () {},
                          width: size.width / 1.09,
                          height: size.height / 13,
                          bottomLeft: const Radius.circular(0.0),
                          bottomRight: const Radius.circular(0.0),
                          topLeft: const Radius.circular(16.0),
                          topRight: const Radius.circular(16.0),
                          label: 'Meus Pets',
                          icon: Icons.pets_outlined,
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          width: size.width / 1.09,
                          height: size.height / 13,
                          bottomLeft: const Radius.circular(0.0),
                          bottomRight: const Radius.circular(0.0),
                          topLeft: const Radius.circular(0.0),
                          topRight: const Radius.circular(0.0),
                          label: 'Editar Perfil',
                          icon: Icons.person,
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          width: size.width / 1.09,
                          height: size.height / 13,
                          bottomLeft: const Radius.circular(0.0),
                          bottomRight: const Radius.circular(0.0),
                          topLeft: const Radius.circular(0.0),
                          topRight: const Radius.circular(0.0),
                          label: 'Ferramentas',
                          icon: Icons.settings,
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          width: size.width / 1.09,
                          height: size.height / 13,
                          bottomLeft: const Radius.circular(0.0),
                          bottomRight: const Radius.circular(0.0),
                          topLeft: const Radius.circular(0.0),
                          topRight: const Radius.circular(0.0),
                          label: 'Gerenciar Assinatura',
                          icon: Icons.assessment,
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          width: size.width / 1.09,
                          height: size.height / 13,
                          bottomLeft: const Radius.circular(16.0),
                          bottomRight: const Radius.circular(16.0),
                          topLeft: const Radius.circular(0.0),
                          topRight: const Radius.circular(0.0),
                          label: 'Alterar Senha',
                          icon: Icons.lock_outline,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 28,
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      width: size.width / 1.09,
                      height: size.height / 13,
                      label: 'Sair',
                      icon: Icons.logout_outlined,
                    ),
                    SizedBox(
                      height: size.height / 11,
                    ),
                    Text(
                      'Versão 1.0.1',
                      style: BudzTextStyles.bodyDefaultSmall,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomTabBar(
              height: size.height / 7.5,
            ),
          );
        }
        return Center(
          child: Text(
            'Failed to load the application',
            style: BudzTextStyles.bodyDefaultError,
          ),
        );
      },
    );
  }
}
