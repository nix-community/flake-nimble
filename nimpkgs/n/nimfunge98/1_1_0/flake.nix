{
  description = ''A Funge-98 interpreter written in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimfunge98-1_1_0.flake = false;
  inputs.src-nimfunge98-1_1_0.type = "other";
  inputs.src-nimfunge98-1_1_0.owner = "adyxax";
  inputs.src-nimfunge98-1_1_0.repo = "nimfunge98";
  inputs.src-nimfunge98-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-nimfunge98-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfunge98-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfunge98-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}