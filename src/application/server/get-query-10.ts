import { inject, injectable } from 'inversify';
import { Symbols } from '@/config';
import { UseCase } from '@/application/shared';
import type { ServerRepository } from '@/domain/repositories';

type Results = {
  student_id: number;
  pre_course_code: number;
  pre_course_title: string;
}[];

@injectable()
export class GetQuery10 implements UseCase<Promise<Results>> {
  private readonly serverRepository: ServerRepository;

  public constructor(
    @inject(Symbols.ServerRepository)
    serverRepository: ServerRepository,
  ) {
    this.serverRepository = serverRepository;
  }

  public async execute(): Promise<Results> {
    const [result] = await this.serverRepository.getQuery10();
    return result as Results;
  }
}
