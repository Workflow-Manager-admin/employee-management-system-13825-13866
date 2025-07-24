-- Seed roles
INSERT INTO roles (role_name, description) VALUES
    ('HR', 'HR Staff user'),
    ('Manager', 'Manager user'),
    ('Employee', 'Regular employee')
ON CONFLICT (role_name) DO NOTHING;

-- Seed an admin user
INSERT INTO users (username, password_hash, email, role_id)
SELECT 'admin', '$2b$12$XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'admin@example.com', id
FROM roles WHERE role_name='HR'
ON CONFLICT (username) DO NOTHING;

-- Seed a sample employee linked to the admin user
INSERT INTO employees (user_id, first_name, last_name, dob, address, phone, hire_date, department, position)
SELECT u.id, 'Alice', 'Admin', '1990-01-01', '123 Admin St', '555-1234', '2021-01-01', 'Administration', 'HR Head'
FROM users u WHERE u.username='admin'
ON CONFLICT DO NOTHING;
