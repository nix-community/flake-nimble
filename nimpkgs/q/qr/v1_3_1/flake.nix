{
  description = ''Create SVG-files with QR-codes from strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-qr-v1_3_1.flake = false;
  inputs.src-qr-v1_3_1.type = "github";
  inputs.src-qr-v1_3_1.owner = "ThomasTJdev";
  inputs.src-qr-v1_3_1.repo = "nim_qr";
  inputs.src-qr-v1_3_1.ref = "refs/tags/v1.3.1";
  inputs.src-qr-v1_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qr-v1_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qr-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qr-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}