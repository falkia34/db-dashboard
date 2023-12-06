import { inject, injectable } from 'inversify';
import { Symbols } from '@/config';
import { UseCase } from '@/application/shared';
import type { ServerRepository } from '@/domain/repositories';

type Results = {
  school_id: number;
  school_name: string;
}[];

@injectable()
export class GetQuery1 implements UseCase<Promise<Results>> {
  private readonly serverRepository: ServerRepository;

  public constructor(
    @inject(Symbols.ServerRepository)
    serverRepository: ServerRepository,
  ) {
    this.serverRepository = serverRepository;
  }

  public async execute(): Promise<Results> {
    const [result] = await this.serverRepository.getQuery1();
    return result as Results;
  }
}
