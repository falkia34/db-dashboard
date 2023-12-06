'use client';

import Link from 'next/link';
import { Box, ButtonBase, Grid, Typography } from '@mui/material';

export function AllQueries() {
  return (
    <Box component="section" className="w-full px-6">
      <Grid container spacing={2}>
        {Array.from(Array(10)).map((_, i) => (
          <Grid item xs={12} md={6} lg={4} key={i}>
            <ButtonBase
              sx={{ bgcolor: 'surface.main' }}
              href={`/queries/${i + 1}`}
              LinkComponent={Link}
              className="w-full px-4 py-6 rounded-2xl text-center"
            >
              <Typography>Query {i + 1}</Typography>
            </ButtonBase>
          </Grid>
        ))}
      </Grid>
    </Box>
  );
}
