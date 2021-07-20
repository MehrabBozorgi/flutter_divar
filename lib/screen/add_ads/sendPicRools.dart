import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class sendPicRools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'راهنمای ثبت عکس',
          style: kInfoRow,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Text(
                'طبق تجربه به دست آمده در «دیوار» آگهی‌هایی که همراه با تصویر منتشر می‌شوند، نسبت به آگهی‌های بدون تصویر، ۳ برابر بازدیدکننده‌ی بیشتری دارند؛ بنابراین به شما پیشنهاد می‌دهیم برای بازدهی بیشتر آگهی خود حتما از عکس استفاده نمایید.'
                'همواره از تصاویر واقعی، باکیفیت و مرتبط با کالا یا خدمتی که ارائه می‌نمایید، استفاده کنید؛ اندازه‌ی تصویر می‌بایست حداقل 600*600 پیکسل و حجم آن حداکثر 20 مگابایت باشد '
                'در صورتی که هیچ‌کدام از موارد بالا در مورد تصاویر مدنظر شما صادق نیست ولی در هنگام ثبت آگهی، حذف شده است، عکس آگهی خود را به همراه عنوان آگهی و شماره تماس و ایمیلی که با آن آگهی را ثبت کرده‌اید، از طریق فرم تماس برای تیم پشتیبانی «دیوار» ارسال نمایید تا پس از بررسی مجدد، تصویر را بر روی آگهی شما قرار دهیم',
                style: kInfoRow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
