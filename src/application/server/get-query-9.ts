import { inject, injectable } from 'inversify';
import { Symbols } from '@/config';
import { UseCase } from '@/application/shared';
import type { ServerRepository } from '@/domain/repositories';

type Results = {
  course_code: number;
  course_title: string;
  total_students: number;
}[];

@injectable()
export class GetQuery9 implements UseCase<Promise<Results>> {
  private readonly serverRepository: ServerRepository;

  public constructor(
    @inject(Symbols.ServerRepository)
    serverRepository: ServerRepository,
  ) {
    this.serverRepository = serverRepository;
  }

  public async execute(): Promise<Results> {
    const [result] = await this.serverRepository.getQuery9();
    return result as Results;
  }
}
