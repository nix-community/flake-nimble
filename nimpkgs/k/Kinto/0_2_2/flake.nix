{
  description = ''Kinto Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-Kinto-0_2_2.flake = false;
  inputs.src-Kinto-0_2_2.type = "github";
  inputs.src-Kinto-0_2_2.owner = "OpenSystemsLab";
  inputs.src-Kinto-0_2_2.repo = "kinto.nim";
  inputs.src-Kinto-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Kinto-0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Kinto-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Kinto-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}