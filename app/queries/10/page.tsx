import { GetQuery10 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query10Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 10',
};

export default async function Query10Page() {
  const getQuery10 = serverContainer.get<GetQuery10>(Symbols.GetQuery10);
  const data = await getQuery10.execute();

  return (
    <>
      <SectionHeader title="Query 10" />
      <QueryText description={Queries[10].description} query={Queries[10].query} />
      <Query10Results data={data} />
    </>
  );
}
