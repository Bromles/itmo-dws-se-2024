import {User, UserManager} from "oidc-client-ts";

export class AuthService {
    userManager: UserManager

    constructor() {
        const settings = {
            authority: import.meta.env.VITE_AUTH_URL,
            client_id: 'web-client',
            redirect_uri: `${window.location.origin}/signin-callback`,
            silent_redirect_uri: `${window.location.origin}/silent-callback.html`,
            post_logout_redirect_uri: `${window.location.origin}`,
            response_type: 'code',
            scope: 'openid profile roles'
        };
        this.userManager = new UserManager(settings);
        this.userManager.startSilentRenew();
    }

    getUser(): Promise<User | null> {
        return this.userManager.getUser()
    }

    async getToken(): Promise<string | undefined> {
        const user = await this.userManager.getUser()
        return user?.access_token
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

    async getUserRole(): Promise<string | null> {
        const user = await this.getUser();

        if (!user || !user.profile || !user.profile.realm_access) {
            return null;
        }

        const roles = user.profile.realm_access.roles;

        if (roles.includes('client')) {
            return 'client';
        } else if (roles.includes('employee')) {
            return 'employee';
        }

        return null;
    }

}
