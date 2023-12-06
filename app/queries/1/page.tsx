import { Metadata } from 'next';
import { GetQuery1 } from '@/application/server';
import { Queries, Symbols } from '@/config';
import { Query1Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 1',
};

export default async function Query1Page() {
  const getQuery1 = serverContainer.get<GetQuery1>(Symbols.GetQuery1);
  const data = await getQuery1.execute();

  return (
    <>
      <SectionHeader title="Query 1" />
      <QueryText description={Queries[1].description} query={Queries[1].query} />
      <Query1Results data={data} />
    </>
  );
}
