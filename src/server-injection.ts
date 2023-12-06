import 'reflect-metadata';
import 'server-only';
import { Container } from 'inversify';
import { DatabaseDataSource, DatabaseDataSourceImpl } from '@/infrastructure/datasources/server';
import {
  GetQuery1,
  GetQuery10,
  GetQuery2,
  GetQuery3,
  GetQuery4,
  GetQuery5,
  GetQuery6,
  GetQuery7,
  GetQuery8,
  GetQuery9,
} from '@/application/server';
import { Sequelize } from 'sequelize';
import { ServerRepository } from '@/domain/repositories';
import { ServerRepositoryImpl } from '@/infrastructure/repositories';
import { Symbols } from '@/config';

export const serverContainer = new Container();

// Use cases
serverContainer.bind<GetQuery1>(Symbols.GetQuery1).to(GetQuery1);
serverContainer.bind<GetQuery2>(Symbols.GetQuery2).to(GetQuery2);
serverContainer.bind<GetQuery3>(Symbols.GetQuery3).to(GetQuery3);
serverContainer.bind<GetQuery4>(Symbols.GetQuery4).to(GetQuery4);
serverContainer.bind<GetQuery5>(Symbols.GetQuery5).to(GetQuery5);
serverContainer.bind<GetQuery6>(Symbols.GetQuery6).to(GetQuery6);
serverContainer.bind<GetQuery7>(Symbols.GetQuery7).to(GetQuery7);
serverContainer.bind<GetQuery8>(Symbols.GetQuery8).to(GetQuery8);
serverContainer.bind<GetQuery9>(Symbols.GetQuery9).to(GetQuery9);
serverContainer.bind<GetQuery10>(Symbols.GetQuery10).to(GetQuery10);

// Repositories
serverContainer.bind<ServerRepository>(Symbols.ServerRepository).to(ServerRepositoryImpl);

// Data sources
serverContainer.bind<DatabaseDataSource>(Symbols.DatabaseDataSource).to(DatabaseDataSourceImpl);

// Others
serverContainer.bind<Sequelize>(Symbols.Sequelize).toConstantValue(
  new Sequelize(
    process.env.DB_DATABASE as string,
    process.env.DB_USERNAME as string,
    process.env.DB_PASSWORD as string,
    {
      host: process.env.DB_HOST,
      dialect: 'mysql',
    },
  ),
);
