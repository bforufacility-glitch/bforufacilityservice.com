<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SecureGuard Agency | Professional Security Services</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Base Styles */
        :root {
            --primary: #1a365d;
            --secondary: #e53e3e;
            --accent: #f6ad55;
            --light: #f7fafc;
            --dark: #2d3748;
            --gray: #718096;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--light);
            color: var(--dark);
            line-height: 1.6;
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
        
        section {
            padding: 80px 0;
        }
        
        h1, h2, h3, h4 {
            margin-bottom: 1rem;
            color: var(--primary);
        }
        
        h1 {
            font-size: 2.5rem;
        }
        
        h2 {
            font-size: 2rem;
            text-align: center;
            margin-bottom: 3rem;
            position: relative;
        }
        
        h2:after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background-color: var(--secondary);
        }
        
        p {
            margin-bottom: 1.5rem;
            color: var(--gray);
        }
        
        .btn {
            display: inline-block;
            padding: 12px 30px;
            background-color: var(--secondary);
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
        }
        
        .btn:hover {
            background-color: #c53030;
            transform: translateY(-3px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        .btn-outline {
            background-color: transparent;
            border: 2px solid var(--secondary);
            color: var(--secondary);
        }
        
        .btn-outline:hover {
            background-color: var(--secondary);
            color: white;
        }
        
        /* Header Styles */
        header {
            background-color: var(--primary);
            color: white;
            padding: 20px 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
        }
        
        .logo span {
            color: var(--accent);
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 30px;
        }
        
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        
        nav ul li a:hover {
            color: var(--accent);
        }
        
        .mobile-menu {
            display: none;
            font-size: 1.5rem;
            cursor: pointer;
        }
        
        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(26, 54, 93, 0.8), rgba(26, 54, 93, 0.9)), url('https://images.unsplash.com/photo-1581579438747-1dc8d17bbce4?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 180px 0 100px;
        }
        
        .hero h1 {
            font-size: 3rem;
            margin-bottom: 1.5rem;
            color: white;
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 2rem;
            color: rgba(255, 255, 255, 0.9);
        }
        
        .hero-btns {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 2rem;
        }
        
        /* Services Section */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 3rem;
        }
        
        .service-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }
        
        .service-card:hover {
            transform: translateY(-10px);
        }
        
        .service-icon {
            background-color: var(--primary);
            color: white;
            font-size: 2.5rem;
            padding: 25px;
            text-align: center;
        }
        
        .service-content {
            padding: 25px;
        }
        
        .service-content h3 {
            margin-bottom: 15px;
        }
        
        /* Hiring Section */
        .hiring {
            background-color: var(--primary);
            color: white;
        }
        
        .hiring h2 {
            color: white;
        }
        
        .hiring h2:after {
            background-color: var(--accent);
        }
        
        .hiring p {
            color: rgba(255, 255, 255, 0.8);
            text-align: center;
            max-width: 800px;
            margin: 0 auto 3rem;
        }
        
        .hiring-options {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
        
        .hiring-option {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px 30px;
            border-radius: 8px;
            text-align: center;
            transition: all 0.3s ease;
        }
        
        .hiring-option:hover {
            background-color: rgba(255, 255, 255, 0.15);
            transform: translateY(-5px);
        }
        
        .hiring-option i {
            font-size: 3rem;
            margin-bottom: 20px;
            color: var(--accent);
        }
        
        .hiring-option h3 {
            color: white;
            margin-bottom: 15px;
        }
        
        .hiring-option p {
            margin-bottom: 20px;
        }
        
        /* Service Request Form */
        .request-service {
            background-color: white;
        }
        
        .form-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: var(--light);
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
            transition: border 0.3s ease;
        }
        
        .form-control:focus {
            border-color: var(--primary);
            outline: none;
        }
        
        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }
        
        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        
        /* Contact Section */
        .contact {
            background-color: var(--light);
        }
        
        .contact-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
        }
        
        .contact-info {
            display: flex;
            flex-direction: column;
            gap: 25px;
        }
        
        .contact-item {
            display: flex;
            align-items: flex-start;
            gap: 15px;
        }
        
        .contact-item i {
            font-size: 1.5rem;
            color: var(--primary);
            margin-top: 5px;
        }
        
        .contact-item h3 {
            margin-bottom: 5px;
        }
        
        /* Footer */
        footer {
            background-color: var(--dark);
            color: white;
            padding: 60px 0 30px;
        }
        
        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }
        
        .footer-col h3 {
            color: white;
            margin-bottom: 25px;
            position: relative;
            padding-bottom: 10px;
        }
        
        .footer-col h3:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background-color: var(--accent);
        }
        
        .footer-col ul {
            list-style: none;
        }
        
        .footer-col ul li {
            margin-bottom: 15px;
        }
        
        .footer-col ul li a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: color 0.3s ease;
        }
        
        .footer-col ul li a:hover {
            color: var(--accent);
        }
        
        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: rgba(255, 255, 255, 0.7);
            font-size: 0.9rem;
        }
        
        /* Responsive Styles */
        @media (max-width: 992px) {
            h1 {
                font-size: 2.2rem;
            }
            
            h2 {
                font-size: 1.8rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .form-row {
                grid-template-columns: 1fr;
            }
        }
        
        @media (max-width: 768px) {
            nav ul {
                display: none;
            }
            
            .mobile-menu {
                display: block;
            }
            
            .hero-btns {
                flex-direction: column;
                align-items: center;
            }
            
            .hero-btns .btn {
                width: 100%;
                max-width: 300px;
            }
        }
        
        @media (max-width: 576px) {
            section {
                padding: 60px 0;
            }
            
            h1 {
                font-size: 1.8rem;
            }
            
            h2 {
                font-size: 1.5rem;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .form-container {
                padding: 25px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo">Secure<span>Guard</span></a>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#hiring">Join Our Team</a></li>
                    <li><a href="#request-service">Request Service</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
            <div class="mobile-menu">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container">
            <h1>Professional Security Solutions</h1>
            <p>SecureGuard Agency provides top-tier security personnel and services for malls, buildings, offices, industries, and private clients. Your safety is our priority.</p>
            <div class="hero-btns">
                <a href="#hiring" class="btn">Join Our Team</a>
                <a href="#request-service" class="btn btn-outline">Request Our Services</a>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="services">
        <div class="container">
            <h2>Our Services</h2>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <div class="service-content">
                        <h3>Security Guards</h3>
                        <p>Professional security personnel for malls, buildings, and commercial properties to ensure safety and prevent unauthorized access.</p>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-id-card-alt"></i>
                    </div>
                    <div class="service-content">
                        <h3>Bodyguards</h3>
                        <p>Highly trained personal protection officers for executives, celebrities, and individuals requiring personal security.</p>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-home"></i>
                    </div>
                    <div class="service-content">
                        <h3>Housekeepers</h3>
                        <p>Trusted domestic staff for residential properties, thoroughly vetted and trained to maintain your home's security and cleanliness.</p>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-building"></i>
                    </div>
                    <div class="service-content">
                        <h3>Office Clerks</h3>
                        <p>Reliable administrative support staff for offices and businesses, ensuring smooth operations with security awareness.</p>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-industry"></i>
                    </div>
                    <div class="service-content">
                        <h3>Industry Workers</h3>
                        <p>Skilled labor force for industrial facilities with security training to protect assets and maintain safe working environments.</p>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-clipboard-check"></i>
                    </div>
                    <div class="service-content">
                        <h3>Event Security</h3>
                        <p>Comprehensive security solutions for events, conferences, and gatherings of all sizes with crowd management expertise.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Hiring Section -->
    <section class="hiring" id="hiring">
        <div class="container">
            <h2>Join Our Professional Team</h2>
            <p>We're always looking for dedicated individuals to join our security team. Whether you're an experienced security professional or looking to start a career in security services, we have opportunities for you.</p>
            <div class="hiring-options">
                <div class="hiring-option">
                    <i class="fas fa-phone-alt"></i>
                    <h3>Call Us Directly</h3>
                    <p>Speak with our recruitment team to discuss available positions and schedule an interview.</p>
                    <a href="tel:+1234567890" class="btn">Call Now</a>
                </div>
                <div class="hiring-option">
                    <i class="fas fa-user-plus"></i>
                    <h3>Online Registration</h3>
                    <p>Fill out our online application form with your details and experience.</p>
                    <a href="#contact" class="btn">Apply Online</a>
                </div>
                <div class="hiring-option">
                    <i class="fas fa-file-alt"></i>
                    <h3>Visit Our Office</h3>
                    <p>Come to our office with your documents and resume for a face-to-face discussion.</p>
                    <a href="#contact" class="btn">Get Directions</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Service Request Form -->
    <section class="request-service" id="request-service">
        <div class="container">
            <h2>Request Our Security Services</h2>
            <div class="form-container">
                <form id="serviceRequestForm">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">Your Name</label>
                            <input type="text" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="company">Company Name</label>
                            <input type="text" id="company" class="form-control">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" id="phone" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="service-type">Type of Service Needed</label>
                        <select id="service-type" class="form-control" required>
                            <option value="">Select a service</option>
                            <option value="security-guard">Security Guards</option>
                            <option value="bodyguard">Bodyguards</option>
                            <option value="housekeeper">Housekeepers</option>
                            <option value="office-clerk">Office Clerks</option>
                            <option value="industry-worker">Industry Workers</option>
                            <option value="event-security">Event Security</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="duration">Duration Needed</label>
                            <select id="duration" class="form-control" required>
                                <option value="">Select duration</option>
                                <option value="short-term">Short-term (Less than 1 month)</option>
                                <option value="medium-term">Medium-term (1-6 months)</option>
                                <option value="long-term">Long-term (6+ months)</option>
                                <option value="permanent">Permanent</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="personnel-count">Number of Personnel Needed</label>
                            <input type="number" id="personnel-count" class="form-control" min="1" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="requirements">Specific Requirements</label>
                        <textarea id="requirements" class="form-control" placeholder="Please describe your specific security needs, location, timing, and any special requirements..."></textarea>
                    </div>
                    <button type="submit" class="btn" style="width: 100%;">Submit Request</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact" id="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <div class="contact-container">
                <div class="contact-info">
                    <div class="contact-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <div>
                            <h3>Our Office</h3>
                            <p>123 Security Avenue, Safety City, SC 12345</p>
                        </div>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-phone-alt"></i>
                        <div>
                            <h3>Call Us</h3>
                            <p>+1 (234) 567-8900 (General Inquiries)</p>
                            <p>+1 (234) 567-8901 (Recruitment)</p>
                        </div>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-envelope"></i>
                        <div>
                            <h3>Email Us</h3>
                            <p>info@secureguard.com</p>
                            <p>careers@secureguard.com</p>
                        </div>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-clock"></i>
                        <div>
                            <h3>Business Hours</h3>
                            <p>Monday - Friday: 8:00 AM - 6:00 PM</p>
                            <p>Saturday: 9:00 AM - 2:00 PM</p>
                            <p>Sunday: Closed</p>
                        </div>
                    </div>
                </div>
                <div class="map-container">
                    <!-- In a real implementation, you would embed a Google Map here -->
                    <div style="background-color: #e9ecef; height: 100%; min-height: 300px; display: flex; align-items: center; justify-content: center; border-radius: 8px;">
                        <p>Map would be embedded here</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-col">
                    <h3>SecureGuard Agency</h3>
                    <p>Providing professional security solutions since 2005. Your safety and peace of mind are our top priorities.</p>
                </div>
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#hiring">Careers</a></li>
                        <li><a href="#request-service">Request Service</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="#services">Security Guards</a></li>
                        <li><a href="#services">Bodyguards</a></li>
                        <li><a href="#services">Housekeepers</a></li>
                        <li><a href="#services">Office Clerks</a></li>
                        <li><a href="#services">Industry Workers</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Connect With Us</h3>
                    <ul>
                        <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 SecureGuard Agency. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu toggle
        document.querySelector('.mobile-menu').addEventListener('click', function() {
            document.querySelector('nav ul').style.display = 
                document.querySelector('nav ul').style.display === 'flex' ? 'none' : 'flex';
        });

        // Form submission
        document.getElementById('serviceRequestForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your service request! We will contact you shortly.');
            this.reset();
        });

        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href');
                if(targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if(targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                    
                    // Close mobile menu if open
                    if(window.innerWidth <= 768) {
                        document.querySelector('nav ul').style.display = 'none';
                    }
                }
            });
        });
    </script>
</body>
</html>
