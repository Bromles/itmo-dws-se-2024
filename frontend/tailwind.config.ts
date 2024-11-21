import type {Config} from 'tailwindcss'
import daisyui from "daisyui";

export default {
    content: [
        "./index.html",
        "./src/**/*.{vue,js,ts,jsx,tsx}",
    ],
    plugins: [
        require('daisyui'),
    ],
    daisyui: {
        themes: [
            {
                agregator: {
                    "primary": "#FFFFFF",
                    "secondary": "#3FC5BC",
                    "accent": "#00ffff",
                    "neutral": "#ff00ff",
                    "base-100": "#267873",
                }
            }
        ]
    }
} satisfies Config

