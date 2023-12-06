import { GetQuery6 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query6Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 6',
};

export default async function Query6Page() {
  const getQuery6 = serverContainer.get<GetQuery6>(Symbols.GetQuery6);
  const data = await getQuery6.execute();

  return (
    <>
      <SectionHeader title="Query 6" />
      <QueryText description={Queries[6].description} query={Queries[6].query} />
      <Query6Results data={data} />
    </>
  );
}
