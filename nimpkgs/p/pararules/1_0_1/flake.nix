{
  description = ''A rules engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pararules-1_0_1.flake = false;
  inputs.src-pararules-1_0_1.type = "github";
  inputs.src-pararules-1_0_1.owner = "paranim";
  inputs.src-pararules-1_0_1.repo = "pararules";
  inputs.src-pararules-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pararules-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pararules-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pararules-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}