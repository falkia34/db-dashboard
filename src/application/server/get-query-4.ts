import { inject, injectable } from 'inversify';
import { Symbols } from '@/config';
import { UseCase } from '@/application/shared';
import type { ServerRepository } from '@/domain/repositories';

type Results = {
  supervisor_id: number;
  supervisor_name: string;
  lecturer_id: number;
  lecturer_name: string;
}[];

@injectable()
export class GetQuery4 implements UseCase<Promise<Results>> {
  private readonly serverRepository: ServerRepository;

  public constructor(
    @inject(Symbols.ServerRepository)
    serverRepository: ServerRepository,
  ) {
    this.serverRepository = serverRepository;
  }

  public async execute(): Promise<Results> {
    const [result] = await this.serverRepository.getQuery4();
    return result as Results;
  }
}
