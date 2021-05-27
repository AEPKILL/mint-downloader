import 'reflect-metadata';

import { CLI, Shim } from 'clime';
import { resolve } from 'path';

CLI.commandModuleExtension = '.ts';

const cli = new CLI('mint', resolve(__dirname, 'commands'));

const shim = new Shim(cli);

shim.execute(process.argv);
