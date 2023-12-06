import 'server-only';
import { inject, injectable } from 'inversify';
import { QueryOptions, QueryOptionsWithType, QueryTypes, Sequelize } from 'sequelize';
import { Symbols } from '@/config';

export interface DatabaseDataSource {
  query(
    query:
      | string
      | {
          query: string;
          values: unknown[];
        },
    options?: QueryOptions | QueryOptionsWithType<QueryTypes> | undefined,
  ): Promise<[unknown[], unknown]>;
}

@injectable()
export class DatabaseDataSourceImpl implements DatabaseDataSource {
  private readonly sequelize: Sequelize;

  public constructor(@inject(Symbols.Sequelize) sequelize: Sequelize) {
    this.sequelize = sequelize;
  }

  public async query(
    query:
      | string
      | {
          query: string;
          values: unknown[];
        },
    options?: QueryOptions | QueryOptionsWithType<QueryTypes> | undefined,
  ): Promise<[unknown[], unknown]> {
    return await this.sequelize.query(query, options);
  }
}
