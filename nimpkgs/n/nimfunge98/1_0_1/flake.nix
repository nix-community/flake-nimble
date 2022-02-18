{
  description = ''A Funge-98 interpreter written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfunge98-1_0_1.flake = false;
  inputs.src-nimfunge98-1_0_1.type = "other";
  inputs.src-nimfunge98-1_0_1.owner = "adyxax";
  inputs.src-nimfunge98-1_0_1.repo = "nimfunge98";
  inputs.src-nimfunge98-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfunge98-1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfunge98-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}