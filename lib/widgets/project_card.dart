import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String role;
  final String description;
  final List<String> technologies;
  final String figmaLink;
  final List<String> imagePaths;

  const ProjectCard({
    super.key,
    required this.title,
    required this.role,
    required this.description,
    required this.technologies,
    required this.figmaLink,
    required this.imagePaths,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  void _showImageDialog(String path) {
    showDialog(
      context: context,
      builder:
          (_) => Dialog(
            insetPadding: const EdgeInsets.all(24),
            child: InteractiveViewer(
              child: Image.asset(path, fit: BoxFit.contain),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.white70 : Colors.white60,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered ? Colors.purple : Colors.orangeAccent,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(widget.role, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(widget.description),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children:
                  widget.technologies
                      .map((tech) => Chip(label: Text(tech)))
                      .toList(),
            ),
            ...[
              const SizedBox(height: 12),
              TextButton.icon(
                onPressed: () async {
                  final uri = Uri.parse(widget.figmaLink);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch app';
                  }
                },
                icon: const Icon(Icons.link),
                label: const Text('Link to Figma'),
              ),
            ],
            const SizedBox(height: 16),
            SizedBox(
              height: 140,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: widget.imagePaths.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final path = widget.imagePaths[index];
                  return GestureDetector(
                    onTap: () => _showImageDialog(path),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        path,
                        width: 200,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
