import  { Sequelize, DataTypes, Op }  from "sequelize";


const sequelize = new Sequelize({
    dialect: 'sqlite',
    storage: './database.sqlite'
});

const Student = sequelize.define('student', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
       type: DataTypes.STRING,
       allowNull :false,
       validate: {
          len: [4, 20]
        }

    },
    favourite_class: {
        type: DataTypes.STRING(25),
        defaultValue: 'Computer Science'
    },
    school_year: {
        type: DataTypes.INTEGER,
        allowNull :false    
    },
    has_language_examination: DataTypes.BOOLEAN
});

await Student.bulkCreate([
    { name:'Bobba',favourite_class:'Math', school_year:1, has_language_examination:1 },
    { name:'Cica', school_year:1, has_language_examination:1 },
    { name:'Macska',favourite_class:'ICT', school_year:1, has_language_examination:1 },
])
    
const names = await Student.findAll({
    where: {
      [Op.or]: [
        { favourite_class: 'Computer Science' },
        { has_language_examination: true },
      ],
    },
    attributes: ['name'],
    raw: true,
  });
  console.log('Filtered students:', names.map(n => n.name));

  const counts = await Student.findAll({
    attributes: ['school_year', [sequelize.fn('COUNT', '*'), 'num_students']],
    group: 'school_year',
    raw: true,
  });
  console.log('Students per year:', counts);
  
main();