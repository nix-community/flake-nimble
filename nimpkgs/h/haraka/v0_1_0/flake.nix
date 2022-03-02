{
  description = ''Haraka v2 short-input hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-haraka-v0_1_0.flake = false;
  inputs.src-haraka-v0_1_0.type = "other";
  inputs.src-haraka-v0_1_0.owner = "~ehmry";
  inputs.src-haraka-v0_1_0.repo = "nim_haraka";
  inputs.src-haraka-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-haraka-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-haraka-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-haraka-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-haraka-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}