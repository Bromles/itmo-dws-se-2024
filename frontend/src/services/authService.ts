import {User, UserManager} from "oidc-client-ts";

export class AuthService {
    userManager: UserManager

    constructor() {
        const settings = {
            authority: import.meta.env.VITE_AUTH_URL,
            client_id: 'web-client',
            redirect_uri:  `${window.location.origin}signin-callback`,
            silent_redirect_uri: `${window.location.origin}silent-callback.html`,
            post_logout_redirect_uri: `${window.location.origin}`,
            response_type: 'code',
        };
        this.userManager = new UserManager(settings);
        this.userManager.startSilentRenew();
    }

    getUser(): Promise<User | null> {
        return this.userManager.getUser()
    }

    login(): Promise<void> {
        return this.userManager.signinRedirect();
    }

    renewToken(): Promise<User | null> {
        return this.userManager.signinSilent();
    }

    logout(): Promise<void> {
        return this.userManager.signoutRedirect();
    }
}
