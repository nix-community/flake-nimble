{
  description = ''exception tracking for older versions of nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-upraises-0_1_0.flake = false;
  inputs.src-upraises-0_1_0.type = "github";
  inputs.src-upraises-0_1_0.owner = "markspanbroek";
  inputs.src-upraises-0_1_0.repo = "upraises";
  inputs.src-upraises-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-upraises-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-upraises-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-upraises-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}