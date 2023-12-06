import type { DatabaseDataSource } from '@/infrastructure/datasources/server';
import { inject, injectable } from 'inversify';
import { ServerRepository } from '@/domain/repositories';
import { Queries, Symbols } from '@/config';

@injectable()
export class ServerRepositoryImpl implements ServerRepository {
  private readonly databaseDataSource: DatabaseDataSource;

  public constructor(
    @inject(Symbols.DatabaseDataSource)
    databaseDataSource: DatabaseDataSource,
  ) {
    this.databaseDataSource = databaseDataSource;
  }

  public async getQuery1(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[1].query);
  }

  public async getQuery2(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[2].query);
  }

  public async getQuery3(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[3].query);
  }

  public async getQuery4(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[4].query);
  }

  public async getQuery5(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[5].query);
  }

  public async getQuery6(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[6].query);
  }

  public async getQuery7(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[7].query);
  }

  public async getQuery8(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[8].query);
  }

  public async getQuery9(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[9].query);
  }

  public async getQuery10(): Promise<[unknown[], unknown]> {
    return await this.databaseDataSource.query(Queries[10].query);
  }
}
