import { GetQuery4 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query4Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 4',
};

export default async function Query4Page() {
  const getQuery4 = serverContainer.get<GetQuery4>(Symbols.GetQuery4);
  const data = await getQuery4.execute();

  return (
    <>
      <SectionHeader title="Query 4" />
      <QueryText description={Queries[4].description} query={Queries[4].query} />
      <Query4Results data={data} />
    </>
  );
}
