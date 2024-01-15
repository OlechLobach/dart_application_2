import 'package:test/test.dart';

class Character {
  late String name;
  late int health;
  late int attackPower;

  Character(this.name, this.health, this.attackPower);
}

class Warrior extends Character {
  Warrior(String name, int health, int attackPower) : super(name, health, attackPower);

  String meleeAttack() {
    return '$name використовує атаку ближнього бою!';
  }

  @override
  int get attackPower => super.attackPower;
}

class Mage extends Character {
  Mage(String name, int health, int attackPower) : super(name, health, attackPower);

  String castSpell() {
    return '$name кидає заклинання!';
  }

  @override
  int get attackPower => super.attackPower;
}
void main() {
  group('Тести для класів Warrior та Mage', () {
    late Warrior warrior;
    late Mage mage;

    setUp(() {
      // Початкова ініціалізація об'єктів перед кожним тестом
      warrior = Warrior('Воїн', 100, 20);
      mage = Mage('Маг', 80, 25);
    });

    test('Перевірка можливостей атаки Warrior', () {
      warrior.meleeAttack();
      // Очікуємо, що результат виклику meleeAttack буде не пустим
      expect(warrior.meleeAttack(), isNotEmpty);
    });

    test('Перевірка можливостей кастування заклинання Mage', () {
      mage.castSpell();
      // Очікуємо, що результат виклику castSpell буде не пустим
      expect(mage.castSpell(), isNotEmpty);
    });

    test('Перевірка правильності значення attackPower для Warrior', () {
      // Очікуємо, що attackPower для Warrior дорівнює 20
      expect(warrior.attackPower, equals(20));
    });

    test('Перевірка правильності значення attackPower для Mage', () {
      // Очікуємо, що attackPower для Mage дорівнює 25
      expect(mage.attackPower, equals(25));
    });
  });
}