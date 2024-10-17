/* CREATE TABLE api_keys (
    hashed_api_key VARCHAR(64) PRIMARY KEY,
    user_id INTEGER,
    created_at TIMESTAMP WITHOUT TIME ZONE,
    permissions TEXT
); */

CREATE TABLE sessions (
    session_id UUID PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    created_at TIMESTAMP WITHOUT TIME ZONE,
    expires_at TIMESTAMP WITHOUT TIME ZONE
);

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    username VARCHAR(50),
    password_hash TEXT,
    email VARCHAR(100),
    created_at TIMESTAMP WITHOUT TIME ZONE
);

CREATE TABLE api_keys (
    hashed_api_key VARCHAR(64) PRIMARY KEY,   -- Stores the SHA-256 hash of the API key
    user_id INTEGER REFERENCES users(user_id),  -- Foreign key reference to the users table
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    permissions TEXT
);

-- Grant USAGE on the public schema to the anon role
GRANT USAGE ON SCHEMA public TO anon;

-- Grant SELECT, INSERT, UPDATE, and DELETE permissions on the users table
GRANT SELECT, INSERT, UPDATE, DELETE ON public.users TO anon;

-- Grant SELECT, INSERT, UPDATE, and DELETE permissions on the sessions table
GRANT SELECT, INSERT, UPDATE, DELETE ON public.sessions TO anon;

-- Grant SELECT, INSERT, UPDATE, and DELETE permissions on the api_keys table
GRANT SELECT, INSERT, UPDATE, DELETE ON public.api_keys TO anon;
