{
  description = ''Nim barcode library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-barcode-master.flake = false;
  inputs.src-barcode-master.type = "github";
  inputs.src-barcode-master.owner = "bunkford";
  inputs.src-barcode-master.repo = "barcode";
  inputs.src-barcode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-barcode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-barcode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-barcode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}