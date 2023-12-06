import {
  DataObjectOutlined,
  DataObjectRounded,
  SpaceDashboardOutlined,
  SpaceDashboardRounded,
  TerminalOutlined,
  TerminalRounded,
} from '@mui/icons-material';
import { SvgIconProps } from '@mui/material';

type Props = {
  name: string;
} & SvgIconProps;

export function Icon({ name, ...props }: Props) {
  switch (name) {
    case 'data-object':
      return <DataObjectRounded {...props} />;
    case 'data-object-outlined':
      return <DataObjectOutlined {...props} />;
    case 'space-dashboard':
      return <SpaceDashboardRounded {...props} />;
    case 'space-dashboard-outlined':
      return <SpaceDashboardOutlined {...props} />;
    case 'terminal':
      return <TerminalRounded {...props} />;
    case 'terminal-outlined':
      return <TerminalOutlined {...props} />;
    default:
      return <></>;
  }
}
