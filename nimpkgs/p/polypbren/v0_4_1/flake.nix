{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-polypbren-v0_4_1.flake = false;
  inputs.src-polypbren-v0_4_1.type = "github";
  inputs.src-polypbren-v0_4_1.owner = "guibar64";
  inputs.src-polypbren-v0_4_1.repo = "polypbren";
  inputs.src-polypbren-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-polypbren-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polypbren-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-polypbren-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}