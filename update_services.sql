-- 1. Add category column if missing
ALTER TABLE services ADD COLUMN IF NOT EXISTS category TEXT;

-- 2. Clear old database entries (if you don't need them)
-- If you want to keep your old services, you can safely remove or comment out this line.
DELETE FROM services; 

-- 3. Insert the new categorized services
INSERT INTO services (name, description, price, tier, category) VALUES

-- Category: Hire Developers
('SMP Setup with Lobby & Survival', 'Basic SMP setup including a lobby and survival or lifesteal game mode.', 99.00, 'hire_developers', 'Hire Developers'),
('Premium SMP Setup', 'SMP setup with a premium lobby, Survival/Lifesteal, one extra game mode, ranks, crates, and all modes.', 199.00, 'hire_developers', 'Hire Developers'),
('Full Professional SMP Setup', 'Complete professional SMP setup with customized lobby, advanced ranks, and everything configured.', 299.00, 'hire_developers', 'Hire Developers'),
('Ultra Premium Custom Setup', 'Let us know your exact requirements and we will build a completely custom ultra-premium setup.', 499.00, 'hire_developers', 'Hire Developers'),

-- Category: Custom Plugin Development
('Basic Plugin', 'Get minimum essential features and standard commands for your custom plugin needs.', 49.00, 'premium', 'Custom Plugin Development'),
('Premium Plugin', 'Advanced custom features exactly tailored to what you need for your server.', 149.00, 'premium', 'Custom Plugin Development'),
('Ultra Pack Plugin', 'We will code absolutely everything the client requests with maximum performance and flexibility.', 299.00, 'premium', 'Custom Plugin Development'),

-- Category: YT Support
('YouTube Creator Support', 'Get professional support and guidance for your Minecraft content creation. Needs assistance? Open a ticket!', 0.00, 'bug_fixing', 'YT Support');
