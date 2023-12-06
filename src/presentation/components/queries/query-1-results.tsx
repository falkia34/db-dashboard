'use client';

import { Box, Container, Toolbar, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';
import { EmptyRowOverlay } from '@/presentation/components/shared';

type Props = {
  data: {
    school_id: number;
    school_name: string;
  }[];
};

export function Query1Results({ data }: Props) {
  return (
    <Box component="section" className="w-full px-6">
      <Container
        maxWidth={false}
        sx={{ bgcolor: 'surface.main' }}
        className="w-full p-4 rounded-2xl"
      >
        <Toolbar className="min-h-[2.5rem] h-auto p-0 mb-4">
          <Typography id="table-title" variant="h6" component="h2" className="font-medium">
            Results
          </Typography>
        </Toolbar>
        <DataGrid
          columns={[
            {
              field: 'school_id',
              headerName: 'School ID',
              minWidth: 100,
              maxWidth: 100,
              flex: 1,
            },
            { field: 'school_name', headerName: 'School Name', minWidth: 200, flex: 2 },
          ]}
          rows={data.map((datum) => ({
            id: datum.school_id,
            school_id: datum.school_id,
            school_name: datum.school_name,
          }))}
          slots={{
            noRowsOverlay: () => <EmptyRowOverlay text="No data found." />,
          }}
          initialState={{
            sorting: {
              sortModel: [{ field: 'school_name', sort: 'asc' }],
            },
          }}
          autoHeight={true}
          disableColumnFilter={true}
          disableColumnMenu={true}
          disableRowSelectionOnClick={true}
          hideFooter={true}
        />
      </Container>
    </Box>
  );
}
