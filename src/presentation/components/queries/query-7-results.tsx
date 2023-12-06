'use client';

import { Box, Container, Toolbar, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';
import { EmptyRowOverlay } from '@/presentation/components/shared';

type Props = {
  data: {
    lecturer_id: number;
    lecturer_name: string;
    course_code: number;
    course_title: string;
  }[];
};

export function Query7Results({ data }: Props) {
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
              field: 'lecturer_id',
              headerName: 'Lecturer ID',
              minWidth: 100,
              maxWidth: 100,
              flex: 1,
            },
            { field: 'lecturer_name', headerName: 'Lecturer Name', minWidth: 200, flex: 2 },
            {
              field: 'course_code',
              headerName: 'Course Code',
              minWidth: 100,
              maxWidth: 100,
              flex: 1,
            },
            { field: 'course_title', headerName: 'Course Title', minWidth: 200, flex: 2 },
          ]}
          rows={data.map((datum) => ({
            id: `${datum.lecturer_id}${datum.course_code}`,
            lecturer_id: datum.lecturer_id,
            lecturer_name: datum.lecturer_name,
            course_code: datum.course_code,
            course_title: datum.course_title,
          }))}
          slots={{
            noRowsOverlay: () => <EmptyRowOverlay text="No data found." />,
          }}
          initialState={{
            sorting: {
              sortModel: [{ field: 'lecturer_name', sort: 'asc' }],
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
