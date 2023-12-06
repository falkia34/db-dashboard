import { GetQuery7 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query7Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 7',
};

export default async function Query7Page() {
  const getQuery7 = serverContainer.get<GetQuery7>(Symbols.GetQuery7);
  const data = await getQuery7.execute();

  return (
    <>
      <SectionHeader title="Query 7" />
      <QueryText description={Queries[7].description} query={Queries[7].query} />
      <Query7Results data={data} />
    </>
  );
}
