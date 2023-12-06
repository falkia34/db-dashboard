'use client';

import { Box, Container, Toolbar, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';
import { EmptyRowOverlay } from '@/presentation/components/shared';

type Props = {
  data: {
    course_code: number;
    course_title: string;
    total_students: number;
  }[];
};

export function Query9Results({ data }: Props) {
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
              field: 'course_code',
              headerName: 'Course Code',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
            { field: 'course_title', headerName: 'Course Title', minWidth: 200, flex: 2 },
            {
              field: 'total_students',
              headerName: 'Total Students',
              minWidth: 150,
              maxWidth: 150,
              flex: 1,
            },
          ]}
          rows={data.map((datum) => ({
            id: datum.course_code,
            course_code: datum.course_code,
            course_title: datum.course_title,
            total_students: datum.total_students,
          }))}
          slots={{
            noRowsOverlay: () => <EmptyRowOverlay text="No data found." />,
          }}
          initialState={{
            sorting: {
              sortModel: [{ field: 'course_title', sort: 'asc' }],
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
