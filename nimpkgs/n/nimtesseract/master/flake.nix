{
  description = ''A wrapper to Tesseract OCR library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimtesseract-master.flake = false;
  inputs.src-nimtesseract-master.type = "github";
  inputs.src-nimtesseract-master.owner = "DavideGalilei";
  inputs.src-nimtesseract-master.repo = "nimtesseract";
  inputs.src-nimtesseract-master.ref = "refs/heads/master";
  inputs.src-nimtesseract-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."pixie".type = "github";
  # inputs."pixie".owner = "riinr";
  # inputs."pixie".repo = "flake-nimble";
  # inputs."pixie".ref = "flake-pinning";
  # inputs."pixie".dir = "nimpkgs/p/pixie";
  # inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtesseract-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtesseract-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtesseract-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}