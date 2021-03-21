# eBash

## Made Bash user friendly

-----

### Legends

- {}: Required Parameter
- []: Optional Parameter



### Built-in commands

- quit
  - Exits the program / console
- @import {library name}
  - Imports external library that is installed to the eBash library. To import only one module inside the library, identify the name of the library using / (slash).
- @setWorkingDirectoryInAbsolute {directory path}
  - Set current working directory with absolute path address
- @setWorkingDirectoryInRelative {directory path}
  - Set current working directory with relative path address



### Built-in Libraries

Layout:

- (Library)
  - (Module name)
    - (Return type) (Function)
      - (Description)

- Application
  - context
    - Application.setContext {context}
      - Sets application context as given parameter. The context is used as an ID when saving / loading data from the stored library.
  - defaults
    - (empty) Application.setData {key} {data}
      - Saves application data with the specified key with data. Context must be present using Application.setContext.
      - 
    - (string?) Application.getData {key}
      - Loads saved application data with the specified key given. Context must be present using Application.setContext.
      - Will return empty data if data does not exist.
- Files
  - attribute
    - (void) Files.setHidden {true/false} {directory / file path}
      - Change file or directory attribute to make invisible.
    - (void) Files.relocate {Old path} {New path}
      - Changes file or directory location.
  - check
    - (boolean) Files.exists {file / directory path}
      - Checks whether the path exists in form of file or directory.
    - (boolean) Files.isDirectory {file / directory path}
      - Checks whether the path is to directory.
    - (boolean) Files.isFile {file / directory path}
      - Checks whether the path is to file.
  - copy
    - (void) Files.copyFile {Source file} {Destination parent directory} [Optional parameter]
      - Copies file from specified source location to specified destination location.
    - (void) Files.copyDirectory {Source directory} {Destination parent directory} [Optional parameter]
      - Copies directory from specified source location to specified destination location.
  - create
    - (void) Files.createFile {File path} [Raw text content]
      - Creates an empty file, unless the contents is given.
    - (void) Files.createDirectory {Directory path} [Optional parameter]
      - Creates an empty directory
  - list
    - (void) Files.list {Directory path} [Optional parameter]
      - Shows the list of contents inside the specified directory
  - read
    - (string?) Files.readStringData {File path}
      - Returns data from specified file
      - If file does not exist, then nothing will be returned.
  - remove
    - (void) Files.removeFile {File path} [Optional parameter]
      - Removes the specified file.
    - (void) Files.removeDirectory {} [Optional parameter]
      - Removes the specified directory.
- Foundation
  - in
    - (string) input
      - Returns user's input.
    - (hashed string) secureInput
      - Returns user's input as MD5 hashed data.
      - The input field will be invisible.
  - int
    - (void) int {variable name} {value}
      - Declares an integer value with given name.
    - (boolean) isFrontGreater {variable 1} {variable 2}
      - Returns true if variable 1 is greater than variable 2.
    - (boolean) isBackGreater {variable 1} {variable 2}
      - Returns true if variable 2 is greater than variable 1.
    - (boolean) isFrontLesser {variable 1} {variable 2}
      - Returns true if variable 1 is lesser than variable 2.
    - (boolean) isBackLesser {variable 1} {variable 2}
      - Returns true if variable 2 is lesser than variable 1.
  - out
    - (void) print [content]
      - Prints text to screen, without linebreaking.
    - (void) println [content]
      - Prints text to screen, with linebreaking.
  - string
    - (boolean) isNull {variable}
      - Checks whether the variable is empty or not.
- Security
  - md5
    - (hased string) Security.stringToMD5 {String to hash}
      - Hashes given string to MD5.
    - (hashed string) Security.fileToMD5 {File path}
      - Hashes given file to MD5.
  - sha512
    - (hashed string) Security.stringToSha512 {String to hash}
      - Hashes given string to SHA 512.
    - (hashed string) Security.fileToSha512 {File path}
      - Hashes given file to SHA 512.
- (Root)
  - QSyntax
    - (void) create
      - create directory at {parent directory} name {directory name}
        - Creates a directory
      - create file at {parent directory} name {file name} [with content of {content}]
        - Creates file with content if content is given as string.
    - (void) remove
      - remove directory at {directory path}
        - Remove a directory
      - remove file at {file path}
        - Remove a file