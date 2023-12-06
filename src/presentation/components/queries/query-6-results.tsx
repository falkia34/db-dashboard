'use client';

import { Box, Container, Toolbar, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';
import { EmptyRowOverlay } from '@/presentation/components/shared';

type Props = {
  data: {
    programme_code: number;
    programme_title: string;
    total_courses: number;
  }[];
};

export function Query6Results({ data }: Props) {
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
              field: 'programme_code',
              headerName: 'Programme ID',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
            { field: 'programme_title', headerName: 'Programme Title', minWidth: 200, flex: 2 },
            {
              field: 'total_courses',
              headerName: 'Total Courses',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
          ]}
          rows={data.map((datum) => ({
            id: datum.programme_code,
            programme_code: datum.programme_code,
            programme_title: datum.programme_title,
            total_courses: datum.total_courses,
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
