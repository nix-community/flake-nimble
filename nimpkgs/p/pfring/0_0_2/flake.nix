{
  description = ''PF_RING wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pfring-0_0_2.flake = false;
  inputs.src-pfring-0_0_2.type = "github";
  inputs.src-pfring-0_0_2.owner = "ba0f3";
  inputs.src-pfring-0_0_2.repo = "pfring.nim";
  inputs.src-pfring-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pfring-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pfring-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pfring-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}