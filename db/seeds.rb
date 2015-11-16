# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#------------------------------------------------>
# MuscleGroup
MuscleGroup.create(name: 'Спина', description: '')
MuscleGroup.create(name: 'Груди', description: '')
MuscleGroup.create(name: 'Біцепс', description: '')
MuscleGroup.create(name: 'Тріцепс', description: '')
MuscleGroup.create(name: 'Плечі', description: '')
MuscleGroup.create(name: 'Ноги', description: '')
MuscleGroup.create(name: 'Прес', description: '')

#------------------------------------------------>
# Exercise
#-------------------Back------------------------->
Exercise.create(name: 'Станова тяга', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга штанги в нахилі простим і зворотнім хватом', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга гантелей в нахилі', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга Т-грифа ', description: '', muscle_group_id: 1)
Exercise.create(name: 'Горизонтальна тяга в блоковому тренажері', description: '', muscle_group_id: 1)
Exercise.create(name: 'Вертикальна тяга зворотнім хватом', description: '', muscle_group_id: 1)
Exercise.create(name: 'Вертикальна тяга широким хватом', description: '', muscle_group_id: 1)

#-------------------Chest------------------------->8

Exercise.create(name: 'Жим штанги лежачи на горизонтальній лавці', description: '', muscle_group_id: 2)
Exercise.create(name: 'Жим штанги лежачи на похилій', description: '', muscle_group_id: 2)
Exercise.create(name: 'Жим гантелей лежачи', description: '', muscle_group_id: 2)
Exercise.create(name: 'Віджимання на брусах', description: '', muscle_group_id: 2)
Exercise.create(name: 'Пулловери з гантеллю', description: '', muscle_group_id: 2)
Exercise.create(name: 'Розведення гантелей на похилій лавці', description: '', muscle_group_id: 2)
Exercise.create(name: 'Зведення рук в тренажері "Батерфлай"', description: '', muscle_group_id: 2)
Exercise.create(name: 'Розведення гантелей на горизонтальній лавці', description: '', muscle_group_id: 2)

#-------------------Biceps----------------------->16

Exercise.create(name: 'Підйом штанги на біцепс', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом "Молот"', description: '', muscle_group_id: 3)
Exercise.create(name: 'Жим лежачи зворотним хватом', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом на біцепс з EZ-грифом стоячи', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом гантелі на біцепс', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом на біцепс зі штангою на тренажері Скота', description: '', muscle_group_id: 3)

#-------------------Triceps----------------------->22

Exercise.create(name: 'Жим лежачи вузьким хватом', description: '', muscle_group_id: 4)
Exercise.create(name: 'Жим вузьким хватом на похилій лаві', description: '', muscle_group_id: 4)
Exercise.create(name: 'Французький жим лежачи', description: '', muscle_group_id: 4)
Exercise.create(name: 'Французький жим сидячи', description: '', muscle_group_id: 4)
Exercise.create(name: 'Французький жим з гантеллю з-за голови', description: '', muscle_group_id: 4)
Exercise.create(name: 'Жим до низу в блоковому тренажері', description: '', muscle_group_id: 4)
Exercise.create(name: 'Віджимання на брусах', description: '', muscle_group_id: 4)
Exercise.create(name: 'Віджимання між лавками', description: '', muscle_group_id: 4)
Exercise.create(name: 'Віджимання від підлоги вузьким хватом', description: '', muscle_group_id: 4)

#-------------------Shoulders-------------------->31

Exercise.create(name: 'Тяга штанги до підборіддя', description: '', muscle_group_id: 5)
Exercise.create(name: 'Жим штанги сидячи з-за голови', description: '', muscle_group_id: 5)
Exercise.create(name: 'Відведення гантелей вперед', description: '', muscle_group_id: 5)
Exercise.create(name: 'Підйом гантелей перед собою', description: '', muscle_group_id: 5)
Exercise.create(name: 'Жим штанги стоячи', description: '', muscle_group_id: 5)
Exercise.create(name: 'Жим Арнольда', description: '', muscle_group_id: 5)
Exercise.create(name: 'Розведення гантелей в сторони стоячи', description: '', muscle_group_id: 5)
Exercise.create(name: 'Розведення гантелей в сторони з нахилом', description: '', muscle_group_id: 5)

#-------------------Legs------------------------->39

Exercise.create(name: 'Присідання з штангою на грудях', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання з штангою на спині', description: '', muscle_group_id: 6)
Exercise.create(name: 'Жим платформи ногами', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання в тренажері Сміта', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання з гантелями', description: '', muscle_group_id: 6)
Exercise.create(name: 'Випади з гантелями', description: '', muscle_group_id: 6)
Exercise.create(name: 'Розгинання ніг в тренажері сидячи', description: '', muscle_group_id: 6)
Exercise.create(name: 'Розгинання ніг в тренажері лежачи', description: '', muscle_group_id: 6)
Exercise.create(name: 'Підйоми на носках стоячи', description: '', muscle_group_id: 6)

#-------------------Press------------------------>48

Exercise.create(name: 'Скручування', description: '', muscle_group_id: 7)
Exercise.create(name: 'Косі скручування', description: '', muscle_group_id: 7)
Exercise.create(name: 'Скручування на римському стільці', description: '', muscle_group_id: 7)
Exercise.create(name: 'Скручування на лавці з нахилом вниз', description: '', muscle_group_id: 7)
Exercise.create(name: 'Зворотні скручування', description: '', muscle_group_id: 7)
Exercise.create(name: 'Підйоми колін у висі', description: '', muscle_group_id: 7)
Exercise.create(name: 'Скручування на колінах на блоковому тренажері', description: '', muscle_group_id: 7)



