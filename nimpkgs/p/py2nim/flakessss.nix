{
  description = ''
    Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.
  '';
  inputs.py2nim.url = "https://github.com/Niminem/Py2Nim";
  outputs = inputs: import ../../nim-pkgs-drvs.nix { 
    inherit inputs;
    meta = ./meta.json;
  };
}
