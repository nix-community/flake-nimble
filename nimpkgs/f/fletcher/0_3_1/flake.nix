{
  description = ''Implementation of the Fletcher checksum algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fletcher-0_3_1.flake = false;
  inputs.src-fletcher-0_3_1.type = "github";
  inputs.src-fletcher-0_3_1.owner = "Akito13";
  inputs.src-fletcher-0_3_1.repo = "nim-fletcher";
  inputs.src-fletcher-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-fletcher-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fletcher-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fletcher-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}