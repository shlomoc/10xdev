## Prompt 3: Structured Sitemap & User Flow Documentation

This approach provides a structured template for creating a comprehensive sitemap and user flow documentation with predefined categories.

### Steps

1. Provide your `prd.md` file or replace placeholder information with your application details
2. List all key features that need to be accessible
3. Define all user types and their permissions
4. Include any specific navigation requirements
5. Save the output as `app-sitemap.md` for the next step

### The Prompt

```md
I need help creating a comprehensive sitemap and user flow documentation for my SaaS application.

# Input
Please review my `prd.md` file or the following information:

Application Name: [APP NAME]
Core Features: [LIST KEY FEATURES FROM PRD]
User Types: [LIST USER TYPES FROM PRD]

Please create a detailed sitemap and user flow documentation following this structure:

1. Site Structure
   - Main navigation sections
   - Page hierarchy
   - Content organization
   - Access levels by user type

2. Page Inventory
   For each page/screen:
   - Purpose and goals
   - Key components
   - User interactions
   - Data requirements
   - State variations

3. User Flows
   For each main user journey:
   - Entry points
   - Step-by-step paths
   - Decision points
   - Success states
   - Error states
   - Exit points

4. Navigation Patterns
   - Primary navigation
   - Secondary navigation
   - Contextual navigation
   - Search functionality
   - Breadcrumbs
   - Cross-linking strategy

5. Interactive Elements
   - Forms
   - Modals
   - Wizards
   - Action buttons
   - Feedback mechanisms

6. State Management
   - Loading states
   - Empty states
   - Error states
   - Success states
   - Edge cases

Tips for Better Results

1. **Start Simple**: Begin with core pages and expand
2. **Think Mobile-First**: Consider responsive design early
3. **User-Centric**: Design flows from user perspective
4. **Be Consistent**: Maintain naming conventions
5. **Document Everything**: Include notes and explanations
6. **Consider Growth**: Plan for future expansion
7. **Test Navigation**: Validate paths and flows 

Best Practices

1. Information Architecture
- Use clear hierarchy
- Group related content
- Maintain consistent depth
- Consider scalability

2. Navigation Design
- Keep it intuitive
- Limit navigation levels
- Provide clear feedback
- Include escape routes

3. User Flow Design
- Start with common paths
- Include alternative flows
- Document error handling
- Consider edge cases

4. Accessibility
- Keyboard navigation
- Screen reader support
- Clear labeling
- Consistent patterns

5. Validation Checklist

Before finalizing your sitemap:

- [ ] All pages are accounted for
- [ ] Navigation paths are logical
- [ ] User flows are complete
- [ ] Access levels are defined
- [ ] Error states are handled
- [ ] Mobile navigation is considered
- [ ] Search functionality is planned


Please provide detailed documentation with clear descriptions and consider mobile responsiveness throughout.

# Output
The completed sitemap and user flow documentation will be saved as `app-sitemap.md` for use in implementation planning.
```
