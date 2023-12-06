import { GetQuery9 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query9Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 9',
};

export default async function Query9Page() {
  const getQuery9 = serverContainer.get<GetQuery9>(Symbols.GetQuery9);
  const data = await getQuery9.execute();

  return (
    <>
      <SectionHeader title="Query 9" />
      <QueryText description={Queries[9].description} query={Queries[9].query} />
      <Query9Results data={data} />
    </>
  );
}
