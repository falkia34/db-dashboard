import { GetQuery3 } from '@/application/server';
import { Metadata } from 'next';
import { Queries, Symbols } from '@/config';
import { Query3Results, QueryText } from '@/presentation/components/queries';
import { SectionHeader } from '@/presentation/components/shared';
import { serverContainer } from '@/server-injection';

export const dynamic = 'force-dynamic';
export const metadata: Metadata = {
  title: 'Query 3',
};

export default async function Query3Page() {
  const getQuery3 = serverContainer.get<GetQuery3>(Symbols.GetQuery3);
  const data = await getQuery3.execute();

  return (
    <>
      <SectionHeader title="Query 3" />
      <QueryText description={Queries[3].description} query={Queries[3].query} />
      <Query3Results data={data} />
    </>
  );
}
