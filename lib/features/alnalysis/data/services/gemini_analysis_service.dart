import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:prism/core/networking/api_service.dart';
import 'package:prism/features/alnalysis/data/models/analysis_result_model.dart';
import 'package:prism/features/alnalysis/data/services/analysis_prompt.dart';
import 'package:prism/features/alnalysis/data/services/gemini_response_schema.dart';

class GeminiAnalysisService {
  GeminiAnalysisService({required this.apiService});

  final ApiService apiService;

  Future<AnalysisResultModel> analyzeScreenshot(File imageFile) async {
    final imageBytes = await imageFile.readAsBytes();
    final base64Image = base64Encode(imageBytes);
    final mimeType = _mimeTypeFor(imageFile.path);

    final requestBody = {
      'contents': [
        {
          'parts': [
            {'text': analysisPrompt},
            {
              'inline_data': {'mime_type': mimeType, 'data': base64Image},
            },
          ],
        },
      ],
      'generationConfig': {
        'responseMimeType': 'application/json',
        'responseSchema': geminiResponseSchema,
      },
    };

    final decoded = await apiService.post(
      '${dotenv.env['Model_Name']}:generateContent',
      data: requestBody,
    ) as Map<String, dynamic>;

    final candidates = decoded['candidates'] as List;
    final parts = candidates[0]['content']['parts'] as List;
    final text = parts[0]['text'] as String;
    final jsonResult = jsonDecode(text) as Map<String, dynamic>;
    return AnalysisResultModel.fromJson(
      jsonResult,
      screenshotPath: imageFile.path,
    );
  }

  String _mimeTypeFor(String path) {
    final lower = path.toLowerCase();
    if (lower.endsWith('.png')) return 'image/png';
    if (lower.endsWith('.webp')) return 'image/webp';
    return 'image/jpeg'; // default fallback (.jpg/.jpeg)
  }
}