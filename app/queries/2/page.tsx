import { GetQuery2 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query2Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 2',
};

export default async function Query2Page() {
  const getQuery2 = serverContainer.get<GetQuery2>(Symbols.GetQuery2);
  const data = await getQuery2.execute();

  return (
    <>
      <SectionHeader title="Query 2" />
      <QueryText description={Queries[2].description} query={Queries[2].query} />
      <Query2Results data={data} />
    </>
  );
}
