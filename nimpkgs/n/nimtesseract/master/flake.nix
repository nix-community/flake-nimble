{
  description = ''A wrapper to Tesseract OCR library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimtesseract-master.flake = false;
  inputs.src-nimtesseract-master.type = "github";
  inputs.src-nimtesseract-master.owner = "DavideGalilei";
  inputs.src-nimtesseract-master.repo = "nimtesseract";
  inputs.src-nimtesseract-master.ref = "refs/heads/master";
  
  
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtesseract-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtesseract-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtesseract-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}