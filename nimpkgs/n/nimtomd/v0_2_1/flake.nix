{
  description = ''Convert a Nim file or string to Markdown'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimtomd-v0_2_1.flake = false;
  inputs.src-nimtomd-v0_2_1.type = "github";
  inputs.src-nimtomd-v0_2_1.owner = "ThomasTJdev";
  inputs.src-nimtomd-v0_2_1.repo = "nimtomd";
  inputs.src-nimtomd-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-nimtomd-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtomd-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtomd-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtomd-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}