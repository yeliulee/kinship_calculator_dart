/// [KinshipOption]
/// Kinship option 计算参数
class KinshipOption {
  /// 输入文本(称呼或关系链)
  final String text;

  /// 自己的性别，0 女性, 1 男性
  final int sex;

  /// 计算类型：'default' 算称谓,'chain' 算关系(此时 'reverse' 无效)
  final String type;

  /// 称呼方式：true对方称呼我,false我称呼对方
  final bool reverse;
  const KinshipOption({
    this.text = '',
    this.sex = -1,
    this.type = 'default',
    this.reverse = false,
  })  : assert(text != null),
        assert(sex == -1 || sex == 0 || sex == 1),
        assert(type == 'default' || type == 'chain'),
        assert(reverse != null);
}
