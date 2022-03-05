{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-polypbren-v0_4_2.flake = false;
  inputs.src-polypbren-v0_4_2.type = "github";
  inputs.src-polypbren-v0_4_2.owner = "guibar64";
  inputs.src-polypbren-v0_4_2.repo = "polypbren";
  inputs.src-polypbren-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-polypbren-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polypbren-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polypbren-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polypbren-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}