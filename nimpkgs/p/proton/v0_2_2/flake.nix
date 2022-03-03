{
  description = ''Proton template engine for xml and xhtml files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-proton-v0_2_2.flake = false;
  inputs.src-proton-v0_2_2.type = "github";
  inputs.src-proton-v0_2_2.owner = "jasonrbriggs";
  inputs.src-proton-v0_2_2.repo = "proton-nim";
  inputs.src-proton-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-proton-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-proton-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-proton-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}