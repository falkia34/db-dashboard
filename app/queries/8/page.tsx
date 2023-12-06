import { GetQuery8 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query8Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 8',
};

export default async function Query8Page() {
  const getQuery8 = serverContainer.get<GetQuery8>(Symbols.GetQuery8);
  const data = await getQuery8.execute();

  return (
    <>
      <SectionHeader title="Query 8" />
      <QueryText description={Queries[8].description} query={Queries[8].query} />
      <Query8Results data={data} />
    </>
  );
}
