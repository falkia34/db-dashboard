'use client';

import { atomDark } from 'react-syntax-highlighter/dist/esm/styles/prism';
import { Box, Container, Toolbar, Typography } from '@mui/material';
import { Prism } from 'react-syntax-highlighter';

type Props = {
  description: string;
  query: string;
};

export function QueryText({ description, query }: Props) {
  return (
    <Box component="section" className="w-full px-6 mb-6">
      <Container
        maxWidth={false}
        sx={{ bgcolor: 'surface.main' }}
        className="w-full p-4 rounded-2xl"
      >
        <Toolbar className="min-h-[2.5rem] h-auto p-0 mb-4">
          <Typography variant="h6" component="h2" className="font-medium">
            Query
          </Typography>
        </Toolbar>
        <Typography variant="body1" component="p">
          {description}
        </Typography>
        <Prism language="sql" style={atomDark} wrapLongLines>
          {query}
        </Prism>
      </Container>
    </Box>
  );
}
