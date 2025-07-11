import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onRegisterTap;
  const LoginScreen({required this.onRegisterTap, Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String error = '';
  bool isLoading = false;
  bool obscurePassword = true;
  
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));
    
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (emailController.text.trim().isEmpty || passwordController.text.trim().isEmpty) {
      setState(() => error = 'Please fill in all fields');
      return;
    }

    setState(() {
      isLoading = true;
      error = '';
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      setState(() => error = _getErrorMessage(e.toString()));
    } finally {
      setState(() => isLoading = false);
    }
  }

  String _getErrorMessage(String error) {
    if (error.contains('user-not-found')) {
      return 'No user found with this email';
    } else if (error.contains('wrong-password')) {
      return 'Incorrect password';
    } else if (error.contains('invalid-email')) {
      return 'Invalid email address';
    } else {
      return 'Login failed. Please try again.';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight - MediaQuery.of(context).padding.top,
            child: Column(
              children: [
                // Top Section with Background
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF6318AF),
                          Color(0xFF9765CA),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.event,
                              size: 40,
                              color: Color(0xFF6318AF),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Welcome Back!',
                            style: GoogleFonts.lexend(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Sign in to continue',
                            style: GoogleFonts.lexend(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Bottom Section with Form
                Expanded(
                  flex: 3,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 20),
                            
                            // Email Field
                            _buildTextField(
                              controller: emailController,
                              label: 'Email',
                              icon: Icons.email_outlined,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            
                            SizedBox(height: 20),
                            
                            // Password Field
                            _buildTextField(
                              controller: passwordController,
                              label: 'Password',
                              icon: Icons.lock_outline,
                              isPassword: true,
                            ),
                            
                            SizedBox(height: 16),
                            
                            // Forgot Password
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // TODO: Implement forgot password
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.lexend(
                                    color: Color(0xFF6318AF),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            
                            SizedBox(height: 20),
                            
                            // Error Message
                            if (error.isNotEmpty)
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.red.withOpacity(0.3)),
                                ),
                                child: Text(
                                  error,
                                  style: GoogleFonts.lexend(
                                    color: Colors.red,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            
                            if (error.isNotEmpty) SizedBox(height: 20),
                            
                            // Login Button
                            Container(
                              height: 56,
                              child: ElevatedButton(
                                onPressed: isLoading ? null : login,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF6318AF),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 0,
                                ),
                                child: isLoading
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      )
                                    : Text(
                                        'Sign In',
                                        style: GoogleFonts.lexend(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                              ),
                            ),
                            
                            Spacer(),
                            
                            // Register Link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account? ',
                                  style: GoogleFonts.lexend(
                                    color: Color(0xFF60666B),
                                    fontSize: 14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: widget.onRegisterTap,
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.lexend(
                                      color: Color(0xFF6318AF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isPassword = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword ? obscurePassword : false,
        style: GoogleFonts.lexend(
          fontSize: 16,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.lexend(
            color: Color(0xFF60666B),
            fontSize: 14,
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0xFF60666B),
            size: 20,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Color(0xFF60666B),
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    );
  }
}
