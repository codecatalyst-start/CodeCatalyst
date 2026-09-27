-- Create schema if it doesn't already exist
CREATE SCHEMA IF NOT EXISTS codecatalyst;

-- Create PR Events table
CREATE TABLE IF NOT EXISTS codecatalyst.pr_events (
    event_id      BIGSERIAL PRIMARY KEY,
    event_type    VARCHAR(100) NOT NULL,
    repository    VARCHAR(255) NOT NULL,
    author        VARCHAR(255),
    status        VARCHAR(50),
    message       TEXT,
    severity      VARCHAR(50),
    source        VARCHAR(100),
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    commit_id     VARCHAR(100),
    ai_concerns   TEXT,
    ai_summary    TEXT,
    ai_next_steps TEXT
);