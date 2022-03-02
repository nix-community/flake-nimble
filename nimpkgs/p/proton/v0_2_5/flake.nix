{
  description = ''Proton template engine for xml and xhtml files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-proton-v0_2_5.flake = false;
  inputs.src-proton-v0_2_5.type = "github";
  inputs.src-proton-v0_2_5.owner = "jasonrbriggs";
  inputs.src-proton-v0_2_5.repo = "proton-nim";
  inputs.src-proton-v0_2_5.ref = "refs/tags/v0.2.5";
  inputs.src-proton-v0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-proton-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-proton-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}