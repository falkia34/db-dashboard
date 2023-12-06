import { GetQuery5 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query5Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 5',
};

export default async function Query5Page() {
  const getQuery5 = serverContainer.get<GetQuery5>(Symbols.GetQuery5);
  const data = await getQuery5.execute();

  return (
    <>
      <SectionHeader title="Query 5" />
      <QueryText description={Queries[5].description} query={Queries[5].query} />
      <Query5Results data={data} />
    </>
  );
}
