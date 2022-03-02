{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-webrod-0_1_0.flake = false;
  inputs.src-webrod-0_1_0.type = "github";
  inputs.src-webrod-0_1_0.owner = "j-a-s-d";
  inputs.src-webrod-0_1_0.repo = "webrod";
  inputs.src-webrod-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-webrod-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webrod-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webrod-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}