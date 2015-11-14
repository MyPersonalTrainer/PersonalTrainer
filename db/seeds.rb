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
#-------------------Legs------------------------->9
Exercise.create(name: 'Присідання з штангою на грудях', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання з штангою на спині', description: '', muscle_group_id: 6)
Exercise.create(name: 'Жим платформи ногами', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання в тренажері Сміта', description: '', muscle_group_id: 6)
Exercise.create(name: 'Присідання з гантелями', description: '', muscle_group_id: 6)
Exercise.create(name: 'Випади з гантелями', description: '', muscle_group_id: 6)
Exercise.create(name: 'Розгинання ніг в тренажері сидячи', description: '', muscle_group_id: 6)
Exercise.create(name: 'Розгинання ніг в тренажері лежачи', description: '', muscle_group_id: 6)
Exercise.create(name: 'Підйом на пальці ніг', description: '', muscle_group_id: 6)
#-------------------Biceps----------------------->4
Exercise.create(name: 'Підйом на біцепс з прямим грифом стоячи', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом на біцепс з EZ-грифом стоячи', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом на біцепс з гантелями', description: '', muscle_group_id: 3)
Exercise.create(name: 'Підйом на біцепс зі штангою на тренажері Скота', description: '', muscle_group_id: 3)
#-------------------Shoulders-------------------->6
Exercise.create(name: 'Жим штанги із-за голови сидячи', description: '', muscle_group_id: 5)
Exercise.create(name: 'Жим з гантелями  сидячи', description: '', muscle_group_id: 5)
Exercise.create(name: 'Жим з гантелями стоячи', description: '', muscle_group_id: 5)
Exercise.create(name: 'Розведення гантелей в сторони', description: '', muscle_group_id: 5)
Exercise.create(name: 'Розведення гантелей з нахилом', description: '', muscle_group_id: 5)
Exercise.create(name: 'Піднімання штанги до підборідка', description: '', muscle_group_id: 5)
#-------------------Back------------------------->8
Exercise.create(name: 'Тяга штанги під нахилом', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга гантелі з упором на коліно', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга до поясу', description: '', muscle_group_id: 1)
Exercise.create(name: 'Тяга до грудей і за голову широким хватом на блоці ', description: '', muscle_group_id: 1)
Exercise.create(name: 'Гіперекстензія на високій лавці', description: '', muscle_group_id: 1)
Exercise.create(name: 'Станова тяга', description: '', muscle_group_id: 1)
Exercise.create(name: 'Гіперекстензія лежачи', description: '', muscle_group_id: 1)
Exercise.create(name: 'Станова тяга в стилі "Сумо"', description: '', muscle_group_id: 1)
#-------------------Chest------------------------->7
Exercise.create(name: 'Жим зі штангою широким хватом лежачи', description: '', muscle_group_id: 2)
Exercise.create(name: 'Жим зі штангою головою вниз лежачи', description: '', muscle_group_id: 2)
Exercise.create(name: 'Жим з гантелями лежачи', description: '', muscle_group_id: 2)
Exercise.create(name: 'Розведення з гантелями лежачи', description: '', muscle_group_id: 2)
Exercise.create(name: 'Зведення рук на верхніх блоках', description: '', muscle_group_id: 2)
Exercise.create(name: 'Віджимання на брусах', description: '', muscle_group_id: 2)
Exercise.create(name: 'Віджимання від підлоги', description: '', muscle_group_id: 2)
#-------------------Triceps----------------------->5
Exercise.create(name: 'Жим зі штангою вузьким хватом лежачи ', description: '', muscle_group_id: 4)
Exercise.create(name: 'Французький жим зі штангою лежачи', description: '', muscle_group_id: 4)
Exercise.create(name: 'Французький жим з гантеллю з-за голови', description: '', muscle_group_id: 4)
Exercise.create(name: 'Тріцепсовий жим на блоці стоячи', description: '', muscle_group_id: 4)
Exercise.create(name: 'Віджимання на брусах', description: '', muscle_group_id: 4)
