class NativePermissions {
  static final Map<String, List<String>> android = {
    'camera': [
      'android.permission.CAMERA',
      'android.permission.RECORD_AUDIO',
      'android.permission.READ_MEDIA_IMAGES',
      'android.permission.READ_MEDIA_VIDEO',
    ],
    'speech': [
      'android.permission.RECORD_AUDIO',
    ],
    'recorder': [
      'android.permission.RECORD_AUDIO',
    ],
    'call': [
      'android.permission.CALL_PHONE',
    ],
  };

  static final Map<String, Map<String, String>> ios = {
    'camera': {
      'NSCameraUsageDescription':
          'Camera access is required to capture photos and videos.',
      'NSPhotoLibraryUsageDescription':
          'Photo library access is required to select images.',
      'NSPhotoLibraryAddUsageDescription':
          'Photo library access is required to save images.',
      'NSMicrophoneUsageDescription':
          'Microphone access is required for video recording.',
    },
    'speech': {
      'NSMicrophoneUsageDescription':
          'Microphone access is required for speech recognition.',
      'NSSpeechRecognitionUsageDescription':
          'Speech recognition is used to convert speech to text.',
    },
    'recorder': {
      'NSMicrophoneUsageDescription':
          'Microphone access is required to record audio.',
    },
  };
}
