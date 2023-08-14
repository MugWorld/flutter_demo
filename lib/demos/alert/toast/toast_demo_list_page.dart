import 'package:flutter/material.dart';
import '/jh_common/widgets/jh_progress_hud.dart';
import '/jh_common/widgets/jh_text_list.dart';

final List titleData = [
  '文字',
  '成功',
  '失败',
  '警告',
  '加载中',
];

class ToastDemoListPage extends StatelessWidget {
  const ToastDemoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JhTextList(
      title: 'JhProgressHUD',
      dataArr: titleData,
      callBack: (index, str) {
        if (str == '文字') {
          LdgProgressHUD.showText('这是一条提示文字');
        }
        if (str == '成功') {
          LdgProgressHUD.showSuccess('加载成功');
        }
        if (str == '失败') {
          LdgProgressHUD.showError('加载失败');
        }
        if (str == '警告') {
          LdgProgressHUD.showInfo('注意注意');
        }
        if (str == '加载中') {
          LdgProgressHUD.showLoadingText();
          Future.delayed(const Duration(seconds: 5), () {
            LdgProgressHUD.hide();
          });
        }
      },
    );
  }
}