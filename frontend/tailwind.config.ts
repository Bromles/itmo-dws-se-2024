import type {Config} from 'tailwindcss'
import daisyui from "daisyui";

export default {
    content: [
        "./index.html",
        "./src/**/*.{vue,js,ts,jsx,tsx}",
    ],
    theme: {
        extend: {},
    },
    plugins: [
        require('daisyui'),
    ],
} satisfies Config

