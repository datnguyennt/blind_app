for path, dirs, files in os.walk(given_path):
  print path
  for f in files:
    print f