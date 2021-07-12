import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class BuyTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title1 = 'نکات مهم در خرید خودروهای لیزینگ و اقساطی';
    String rol1 =
        'معامله و پرداخت حضوری: امن‌ترین و بهترین راه خرید، معاملهٔ حضوری است. یعنی خریدار در ملاقات حضوری با فروشنده، کالا را ببیند، بررسی کند و همان زمان مبلغ را پرداخت نماید. هرگز بعد از تحویل کالا یا خدمات، پرداخت مبلغ را به زمان دیگری موکول نکنید';
    String rol2 =
        'مکان امن: برای معاملهٔ حضوری، مکان‌های عمومی و شلوغ مانند شعب بانک و کلانتری‌ها مناسب هستند';
    String rol3 =
        'شواهد معامله: بهتر است هنگام خرید کالا، رسید کتبی معتبر از فروشنده دریافت کنید';
    String title2 = 'نکات مهم در انتقال وجه';
    String rol4 =
        'پرداخت اینترنتی و کارت به کارت: در صورت پرداخت اینترنتی یا کارت به کارت، به دیدن رسید پرداخت اکتفا نکنید. قبل از تحویل کالا، شخصاً از وارد شدن مبلغ به حسابتان مطمئن شوید';
    String rol6 =
        'چک و سفته: چک و سفته ممکن است نقد نشوند. برای کسب اطلاعات بیشتر، به قوانین رسمی چک رجوع کنید';
    String rol5 =
        'چک رمزدار بانکی: در صورت دریافت چک‌های رمزدار بانکی، با مراجعه به بانک مورد نظر، از اصالت آن مطمئن شوید';

    String title3 = 'نکات مهم پیش از معامله';
    String rol7 =
        'بیعانه ندهید: هرگز پیش از دریافت کالا، هزینه‌ای تحت عنوان بیعانه، شیرینی، رزرو و... پرداخت نکنید. در صورتی که فروشنده از شما درخواست بیعانه کرد، لطفاً مورد را از طریق «گزارش مشکل آگهی» به دیوار اطلاع دهید';
    String rol8 =
        'امنیت در ملاقات: اگر می‌خواهید مبلغ قابل توجهی به کسی که نمی‌شناسید بپردازید یا کالای گران قیمتی را با خود حمل کنید، پیشنهاد می‌کنیم حتماً کسی همراه شما باشد. در غیر این صورت، فردی را در جریان جزئیات مکان و زمان ملاقات و مشخصات طرف مقابل بگذارید';
    String rol9 =
        'مدارک مالکیت و شناسایی کالا: در معاملات خودرو، بررسی تمام مدارک مالکیت و شناسایی خودرو الزامی است. تجربه نشان داده است خودروهایی که با تفویض وکالت‌های مکرر مورد معامله قرار می گیرند، مشکوک هستند';

    String title4 = 'نکات مهم در خرید خودروهای لیزینگ و اقساطی';
    String rol10 =
        'داشتن «شماره ثبت» و «شناسه ملی» از اداره کل ثبت شرکت‌ها، به معنی مجوز برای فعالیت نیست. این موارد تنها مشخصات ثبتی شرکت‌ها هستند';
    String rol11 =
        'شرکت‌های لیزینگ مجاز دفاتری با آدرس مشخص دارند که تابلوی فعالیت آن‌ها (با ذکر مجوز بانک مرکزی) در بیرون و داخل ساختمان نصب شده است. محل فعالیت دفاتر مجاز در ساختمان‌های اداری یا تجاری است و همچنین، مجوزهای بانک مرکزی آن‌ها بر روی دیوارهای دفتر قابل مشاهده و از بانک مرکزی قابل استعلام است. قابل ذکر است دفاتر غیرمجاز تابلوی فعالیت در بیرون یا داخل ندارند که دلیل آن را «پرداخت نکردن مالیات» اعلام می‌کنند. این دلیل صرفا برای گمراهی خریداران است';
    String rol12 =
        'در فروش اقساطی که در نمایشگاه‌های اتومبیل دارای مجوز فعالیت از وزارت صمت انجام می‌گیرد (نه در دفاتر غیرقانونی)، تحویل خودرو به صورت آنی است. تحویل مدت‌دار (حتی اگر یک روزه هم باشد) احتمال کلاهبرداری را افزایش می‌دهد';

    String title5 = 'زنگ خطرها در معامله: زمانی که باید بیشتر احتیاط کنید';
    String rol13 = 'قیمت و شرایط ارائه شده بیش از حد عالی به نظر می رسد';
    String rol14 =
        'درخواست بیعانه قبل از دریافت کالا، به هر عنوانی توسط فروشنده پیشنهاد شود';
    String rol15 =
        'در میانهٔ چت‌کردن در چت دیوار، مخاطب درخواست می‌کند که مکالمه در سایر پیام‌رسان‌ها مانند تلگرام و واتس‌اپ و … ادامه پیدا کند';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'راهنمای خرید امن',
          style: kInfoRow,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextContainer_title(text1: title1),
            TextContainer_rol(text: rol1),
            TextContainer_rol(text: rol2),
            TextContainer_rol(text: rol3),
            //
            TextContainer_title(text1: title2),
            TextContainer_rol(text: rol4),
            TextContainer_rol(text: rol5),
            TextContainer_rol(text: rol6),
            //
            TextContainer_title(text1: title3),
            TextContainer_rol(text: rol7),
            TextContainer_rol(text: rol8),
            TextContainer_rol(text: rol9),
            //
            TextContainer_title(text1: title4),
            TextContainer_rol(text: rol10),
            TextContainer_rol(text: rol11),
            TextContainer_rol(text: rol12),
            //
            TextContainer_title(text1: title5),
            TextContainer_rol(text: rol13),
            TextContainer_rol(text: rol14),
            TextContainer_rol(text: rol15),
          ],
        ),
      ),
    );
  }
}

class TextContainer_rol extends StatelessWidget {
  const TextContainer_rol({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: kInfoTozihat,
      ),
    );
  }
}

class TextContainer_title extends StatelessWidget {
  const TextContainer_title({
    required this.text1,
  });

  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: double.infinity,
      child: Text(
        text1,
        textAlign: TextAlign.right,
        style: kTimeStyle2,
      ),
    );
  }
}
