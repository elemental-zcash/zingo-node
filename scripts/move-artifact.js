import { existsSync, mkdirSync, renameSync } from 'fs';
import { resolve, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Prebuild requires that the binary be in `build/Release` as though it was built with node-gyp

const moveArtifact = () => {
    const path = resolve(__dirname, '../build/Release');

    if (!existsSync(path)) {
        mkdirSync(path, { recursive: true });
    }
    renameSync(resolve(__dirname, '../index.node'), resolve(path, 'index.node'));
};

export default moveArtifact;
