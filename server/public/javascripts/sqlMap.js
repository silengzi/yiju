var sqlMap = {
  user: {
      add: 'insert into user (username, email, password) values (?,?,?)',
      select: 'select * from user',
      update: 'update user set '
  },
  house: {
    select_project: 'select * from project',
    select_new_house: 'select hid,pid,type,harea,floor,price,hpicture,projname,projaddr,area from newhouse h join project p on h.pid = p.id',
    select_old_house: 'select * from oldhouse',
    select_rent_house: 'select * from renthouse'
  },
  detail: {
    rent: 'select * from renthouse',
    old: 'select * from oldhouse',
    new: 'select hid,pid,type,harea,floor,price,hpicture,projname,projaddr,area,phone from newhouse h join project p on h.pid = p.id',
    property: 'select * from project'
  },
  buy: {
    new: 'delete from newhouse',
    rent: 'delete from renthouse',
    old: 'delete from oldhouse',
    property: 'delete from project'
  },
  sold: {
    old: 'insert into oldhouse',
    rent: 'insert into renthouse'
  },
  history: {
    select_history: 'select * from history'
  }
}

module.exports = sqlMap;