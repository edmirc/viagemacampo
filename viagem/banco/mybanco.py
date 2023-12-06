import pymysql


class Banco:
    def __init__(self, database: str = "acampoviagem"):
        self.con = pymysql.Connect(user='edinho', password='@Ede025978', host='localhost', database=database)
        self.cur = self.con.cursor()

    def show_tables(self):
        sql = 'show tables;'
        self.cur.execute(sql)
        for i in self.cur.fetchall():
            print(i)

    def executorSql(self, query: str, close: str = 'Ativo') -> int:
        self.cur.execute(query)
        self.con.commit()
        sql = 'SELECT LAST_INSERT_ID();'
        self.cur.execute(sql)
        for i in self.cur.fetchall():
            if close == 'Ativo':
                self.con.close()
            return i[0]

    def return_id(self, campo: str, tabela: str, dado: str) -> int:
        id: int = 0
        sql = f"SELECT id FROM {tabela} WHERE {campo} = "
        if dado.isnumeric():
            sql += f" {dado};"
        else:
            sql += f" '{dado}';"
        self.cur.execute(sql)
        for i in self.cur.fetchall():
            id = i[0]
        if id is None or id == 0:
            id = 0
        return id


class CidadeBanco(Banco):
    def __init__(self, database: str = "acampoviagem"):
        if database == 'acampo': 
            self.table = 'cidades'
        else:
            self.tabel = 'viagem_cidades'
        super().__init__(database)

    def insert_cidade(self, nome, estado) -> int:
        id = self.return_id('nome', self.table, nome)
        if id == 0:
            sql = f"INSERT INTO {self.table} VALUES (null, '{nome}', '{estado}');"
            id = self.executorSql(sql)
        return id

    def lista_totas_cidades(self) -> list:
        sql = f'SELECT* FROM {self.table} order by nome;'
        self.cur.execute(sql)
        lista: list = []
        for i in self.cur.fetchall():
            lista.append(i)
        return lista


class TiposBanco(Banco):
    def __init__(self):
        super().__init__()

    def returnTipos(self) -> list:
        sql = "SELECT* FROM tipos;"
        lista: list = list()
        self.cur.execute(sql)
        for i in self.cur.fetchall():
            lista.append(i)
        self.con.close()
        return lista


class CarroBanco(Banco):

    def __init__(self):
        super().__init__()

    def returnCarros(self) -> list:
        sql = "SELECT* FROM carros;"
        lista: list = list()
        self.cur.execute(sql)
        for i in self.cur.fetchall():
            lista.append(i)
        self.con.close()
        return lista


if __name__ == '__main__':
    banco = CidadeBanco('acampo').lista_totas_cidades()
    for i in banco:
       id = CidadeBanco().insert_cidade(i[1], i[2])
       print(id)
