{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-Echon-1_0_0.flake = false;
  inputs.src-Echon-1_0_0.type = "github";
  inputs.src-Echon-1_0_0.owner = "eXodiquas";
  inputs.src-Echon-1_0_0.repo = "Echon";
  inputs.src-Echon-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Echon-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Echon-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Echon-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}