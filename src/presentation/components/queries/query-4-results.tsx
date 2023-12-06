'use client';

import { Box, Container, Toolbar, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';
import { EmptyRowOverlay } from '@/presentation/components/shared';

type Props = {
  data: {
    supervisor_id: number;
    supervisor_name: string;
    lecturer_id: number;
    lecturer_name: string;
  }[];
};

export function Query4Results({ data }: Props) {
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
              field: 'supervisor_id',
              headerName: 'Supervisor ID',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
            { field: 'supervisor_name', headerName: 'Supervisor Name', minWidth: 200, flex: 2 },
            {
              field: 'lecturer_id',
              headerName: 'Lecturer ID',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
            { field: 'lecturer_name', headerName: 'Lecturer Name', minWidth: 200, flex: 2 },
          ]}
          rows={data.map((datum) => ({
            id: `${datum.supervisor_id}${datum.lecturer_id}`,
            supervisor_id: datum.supervisor_id,
            supervisor_name: datum.supervisor_name,
            lecturer_id: datum.lecturer_id,
            lecturer_name: datum.lecturer_name,
          }))}
          slots={{
            noRowsOverlay: () => <EmptyRowOverlay text="No data found." />,
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
