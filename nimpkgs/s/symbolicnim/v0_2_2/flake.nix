{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-symbolicnim-v0_2_2.flake = false;
  inputs.src-symbolicnim-v0_2_2.type = "github";
  inputs.src-symbolicnim-v0_2_2.owner = "HugoGranstrom";
  inputs.src-symbolicnim-v0_2_2.repo = "symbolicnim";
  inputs.src-symbolicnim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-symbolicnim-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-symbolicnim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-symbolicnim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}